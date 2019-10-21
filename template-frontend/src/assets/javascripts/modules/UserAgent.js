import $ from 'jquery'
const UserAgent = (() => {
  const $html = $('html')
  const checkDevice = () => {
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
      $html.addClass('touch')
    } else {
      $html.addClass('no-touch')
    }
  }
  const checkIeVersion = (version) => {
    let val = false
    switch (version) {
      case 7:
        val = /MSIE 7/.test(navigator.userAgent)
        break
      case 8:
        val = /MSIE 8/.test(navigator.userAgent)
        break
      case 9:
        val = /MSIE 9/.test(navigator.userAgent)
        break
      case 10:
        val = /MSIE 10/.test(navigator.userAgent)
        break
      case 11:
        val = /rv:11/.test(navigator.userAgent)
        break
    }
    return val
  }
  const browserDetection = () => {
    let isExplorer = (navigator.userAgent.indexOf('MSIE') || navigator.userAgent.indexOf('rv:15')) > -1
    let isFirefox = navigator.userAgent.indexOf('Firefox') > -1
    let isSafari = navigator.userAgent.indexOf('Safari') > -1
    let isChrome = navigator.userAgent.indexOf('Chrome') > -1
    let isOpera = navigator.userAgent.indexOf('OPR') > -1
    if (isExplorer || document.documentMode) {
      $html.addClass('ie')
    }
    if (isFirefox) {
      $html.addClass('firefox')
    }
    if (isChrome && isSafari && !isOpera) {
      $html.addClass('chrome')
    }
    if (!isChrome && isSafari) {
      $html.addClass('safari')
    }
    // if (checkIeVersion(8)) {
    //   $html.addClass('ie8')
    // }
    // if (checkIeVersion(9)) {
    //   $html.addClass('ie9')
    // }
    // if (checkIeVersion(10)) {
    //   $html.addClass('ie10')
    // }
    if (checkIeVersion(11) || checkIeVersion(12)) {
      $html.addClass('ie11')
    }
    if (/Edge/.test(navigator.userAgent)) {
      $html.addClass('edge')
    }
  }
  const formAnimation = () => {
    const formGroup = '.form-group-v2'
    const formControl = '.form-control'
    const activeFocus = 'active-focus'
    const hasFormAni = $('.form-ani')
    hasFormAni.find(formGroup).on('focus', formControl, (e) => {
      const ele = e.currentTarget
      $(formControl).each((index, el) => {
        if ($(el).val().length < 1) {
          $(el).parents(formGroup).removeClass(activeFocus)
        }
      })
      $(ele).parents(formGroup).addClass(activeFocus)
    })
    hasFormAni.find(formGroup).on('change', formControl, (e) => {
      const ele = e.currentTarget
      $(formControl).each((index, elc) => {
        if ($(elc).val().length < 1) {
          $(elc).parents(formGroup).removeClass(activeFocus)
        }
      })
      $(ele).parents(formGroup).addClass(activeFocus)
    })

    hasFormAni.find(formControl).each((index, el) => {
      if ($(el).val().length) {
        $(el).parents(formGroup).addClass(activeFocus)
      }
    })

    // $('.form-group-v2 .bootstrap-select.form-control').click((e) => {
    //   const ele = e.currentTarget
    //   $(ele).parents(formGroup).addClass(formGroup)
    // })

    $(document).click((e) => {
      const ele = e.target
      if (!$(ele).is('.form-group-v2 .form-control, .form-group-v2 .form-control*')) {
        $(formControl).each((index, el) => {
          if ($(el).val().length < 1) {
            $(el).parents(formGroup).removeClass(activeFocus)
          }
        })
      }
    })
  }
  const lazyload = () => {
    let hasLazy = $(':visible.lazy, .lazy-icon-loading.lazy')
    if (hasLazy.length) {
      hasLazy.Lazy({
        afterLoad: (element) => {
          $(element).addClass('b-loaded').removeClass('lazy')
          // convertSvg()
          // check have slider
          let sliderLazy = $(element).parents('.slider-lazy')
          if (sliderLazy.hasClass('slick-initialized')) {
            sliderLazy.find(':visible.lazy').each(function (index, el) {
              let src = $(this).attr('data-src')
              if (this.tagName === 'DIV') {
                $(this).css({
                  'background-image': 'url(' + src + ')'
                })
              } else {
                $(this).attr('src', src)
              }
              $(this).removeClass('lazy').addClass('b-loaded').removeAttr('data-src')
              sliderLazy.slick('setPosition')
            })
          }

          /* Sly scrolling lazyload */
          if (sliderLazy.hasClass('sly-scrolling')) {
            sliderLazy.find(':visible.lazy').each(function (index, el) {
              let src = $(this).attr('data-src')
              if (this.tagName === 'DIV') {
                $(this).css({
                  'background-image': 'url(' + src + ')'
                })
              } else {
                $(this).attr('src', src)
              }
              $(this).removeClass('lazy').addClass('b-loaded').removeAttr('data-src')
            })
          }
        }
      })
    }
  }
  const showImagePrint = () => {
    // load all images lazyload when print
    window.onbeforeprint = function () {
      $('.lazy').each(function (index, el) {
        let src = $(this).attr('data-src')
        if (this.tagName === 'DIV') {
          $(this).css({
            'background-image': 'url(' + src + ')'
          })
        } else {
          $(this).attr('src', src)
        }
        $(this).removeClass('lazy').addClass('b-loaded').removeAttr('data-src')
      })
    }
  }

  const convertSvg = () => {
    let hasSvg = $('.img-svg')
    if (hasSvg.length) {
      hasSvg.each(function () {
        let $img = $(this)
        let imgID = $img.attr('id')
        let imgClass = $img.attr('class')
        let imgURL = $img.attr('src')
        $.get(imgURL, function (data) {
          let $svg = $(data).find('svg')
          if (typeof imgID !== 'undefined') {
            $svg = $svg.attr('id', imgID)
          }
          if (typeof imgClass !== 'undefined') {
            $svg = $svg.attr('class', imgClass + ' replaced-svg')
          }
          $svg = $svg.removeAttr('xmlns:a')
          if (!$svg.attr('viewBox') && $svg.attr('height') && $svg.attr('width')) {
            $svg.attr('viewBox', '0 0 ' + $svg.attr('height') + ' ' + $svg.attr('width'))
          }
          $img.replaceWith($svg)
        }, 'xml')
      })
    }
  }

  window.lazyload = lazyload
  checkDevice()
  browserDetection()
  lazyload()
  formAnimation()
  convertSvg()
  showImagePrint()
  $(window).resize(() => {
    lazyload()
  })
})()
export default UserAgent
