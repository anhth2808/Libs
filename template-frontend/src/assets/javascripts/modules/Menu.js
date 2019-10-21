import $ from 'jquery'
const Menu = (() => {
  let _this = $('#main-menu')
  let elementItem = '.hamburger-menu, html, #main-menu, #header'
  let header = $('#header, #main-menu-mobile')
  let li = _this.find('.main-menu-ul >li')
  let liLeve2 = _this.find('.main-menu-ul .main-menu-dropdown li')
  let liAll = _this.find('.main-menu-ul li')

  if (_this.length) {
    const openMainMenu = () => {
      header.on('click', '.hamburger-menu', (e) => {
        const ele = e.currentTarget
        if ($(ele).hasClass('is-open-menu')) {
          $(elementItem).removeClass('is-open-menu')
        } else {
          $(elementItem).addClass('is-open-menu')
        }
      })
    }

    const clickArowOpenDropdownMenuLeve1 = () => {
      li.on('click', '> .nav-item-arrows', (e) => {
        const ele = e.currentTarget
        const eleParent = $(ele).parent()
        if (eleParent.find('ul').length && !eleParent.hasClass('is-open-child')) {
          liAll.removeClass('is-open-child')
          eleParent.addClass('is-open-child')
        } else {
          eleParent.removeClass('is-open-child')
        }
      })
    }

    const clickLiOpenDropdownMenuLeve1 = () => {
      li.on('click', '>a', (e) => {
        const ele = e.currentTarget
        const eleParent = $(ele).parent()
        if ($(window).width() < 992) {
          if (eleParent.find('ul').length && !eleParent.hasClass('is-open-child')) {
            li.removeClass('is-open-child')
            eleParent.addClass('is-open-child')
            return false
          } else {
            eleParent.removeClass('is-open-child')
          }
        }
      })
    }

    const clickArowOpenDropdownMenuLeve2 = () => {
      _this.find('.main-menu-ul').on('click', '.nav-item-arrows', (e) => {
        const ele = e.currentTarget
        const eleParent = $(ele).parent()
        if ($(window).width() < 992) {
          if (eleParent.find('.menu-child').length && !eleParent.hasClass('is-open-menu-child')) {
            eleParent.addClass('is-open-menu-child')
          } else {
              // eleParent.addClass('is-open-menu-child')
            eleParent.removeClass('is-open-menu-child')
          }
        }
      })
    }

    const clickOutsite = () => {
      $(document).click((event) => {
        if (!$(event.target).closest('#header.is-open-menu').length) {
          $(elementItem).removeClass('is-open-menu')
        }
      })
    }

    const clickLiOpenDropdownMenuLeve2 = () => {
      liLeve2.on('click', '>a', (e) => {
        const ele = e.currentTarget
        const eleParent = $(ele).parent()
        if ($(window).width() < 992) {
          if (eleParent.find('ul').length && !eleParent.hasClass('is-open-menu-child')) {
            li.removeClass('is-open-menu-child')
            eleParent.addClass('is-open-menu-child')
            return false
          }
        }
      })
    }

    openMainMenu()
    clickArowOpenDropdownMenuLeve1()
    clickLiOpenDropdownMenuLeve1()
    clickArowOpenDropdownMenuLeve2()
    clickOutsite()
    clickLiOpenDropdownMenuLeve2()
  }
})()
export default Menu
