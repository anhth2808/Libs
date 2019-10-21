import $ from 'jquery'
// import { timeout } from 'q'
const SelectC8 = (() => {
  const callSelectC8 = $('.select-c8')
  const dropdownSelectC8 = 'dropdown-select-c8'
  const arrow = '<span class="caret-c8 icomoon icon-chevron-down"></span>'
  const dropdownOpen = '.dropdown-select-c8.show, .dropdown-menu.show'

  if (callSelectC8.length) {
    const renderSelectToDropdown = () => {
      callSelectC8.each((index, element) => {
        if (!$(element).hasClass('select-done')) {
          let title = $(element).data('title')
          if (typeof title === 'undefined') {
            if ($(element).find(':selected').length) {
              title = $(element).find(':selected').text()
              let indexActive = $(element).find(':selected').index()
              if (indexActive === 0) {
                $(element).find('option').first().attr('selected', 'selected')
              }
            } else {
              title = $(element).find('option').first().attr('selected', 'selected').text()
            }
          }
          $(element).parent().find('.dropdown').remove()
          $(element).parent().after()
              .append(`<div class='dropdown form-control ${dropdownSelectC8}'>
                <a class='dropdown-toggle form-control' href='#' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'><span class="filter-option">${title}</span>${arrow}</a>
                <div class='dropdown-menu'>
                <ul></ul>
                </div>
              </div>`)
          $(element).each((idx, elm) => {
            let tabIndex = 1
            let disabled = ''
            $(element).find('option', elm).each((id, el) => {
              if ($(el).prop('disabled')) {
                disabled = 'disabled'
              }
              $(element).parent().find('.dropdown ul').append('<li class="' + disabled + '" tabindex="' + tabIndex + '"> <a href="javascript:;" class="' + disabled + '">' + $(el).text() + '</a></li>')
              tabIndex++
              disabled = ''
            })
          })

          let active = $(element).parents('.form-select-c8').find('.dropdown-select-c8 .filter-option').text()

          $(element).parents('.form-select-c8').find('.dropdown-menu li').each((id, el) => {
            let text = $(el).find('a').text()
            if (active === text) {
              $(el).addClass('selected')
            }
          })
          $(element).addClass('select-done')
        }
      })
    }

    const clickToggle = () => {
      $(document).on('click', '.dropdown-toggle', (e) => {
        let dropdownRemove = $('.dropdown-menu, .dropdown-select-c8')
        const ele = e.currentTarget
        const eleParent = $(ele).parent()
        if (eleParent.hasClass('show')) {
          dropdownRemove.removeClass('show')
          eleParent.removeClass('show')
          eleParent.find('.dropdown-menu').removeClass('show')
        } else {
          dropdownRemove.removeClass('show')
          eleParent.addClass('show')
          eleParent.find('.dropdown-menu').addClass('show')
        }
        return false
      })
    }

    const clickSelect = () => {
      $(document).on('click', '.dropdown-select-c8 li a', (e) => {
        const ele = e.currentTarget
        const index = $(ele).parents('li').index()
        let text = $(ele).text()
        $('.' + dropdownSelectC8).removeClass('focus')
        $(ele).parents('.form-control').find('.dropdown-toggle').addClass('active')
        $(ele).parents('ul').find('li').removeClass('focus')

        if ($(ele).parents('.form-select-c8').hasClass('multiselect')) {
          const dropParent = $(ele).parents('.form-select-c8')
          // let val
          let string = ''
          if ($(ele).parent().hasClass('selected')) {
            $(ele).parent().removeClass('selected').addClass('not-hover')
            $(ele).parents('.form-select-c8').find('.select-c8 option').eq(index).removeAttr('selected')
            // val = $(ele).parents('.form-select-c8').find('.select-c8 option').eq(index).val()
            if ($(ele).parents('ul').find('li.selected:not(.disabled)').length < 1) {
              string = $(ele).parents('ul').find('li.disabled a').text().trim() + ', '
            // string.slice(0, string.length - 2)
            }
          } else {
            $(ele).parent().addClass('selected').removeClass('not-hover')
          }

          $(ele).parents('ul').find('li.selected:not(.disabled)').each((index, el) => {
            let value = $(el).find('a').text().trim()
            string += value + ', '
          })

          if (!$(ele).parents('.dropdown-select-c8').hasClass('no-trigger-active')) {
            $(ele).parents('.dropdown-select-c8').find('.dropdown-toggle .filter-option').text(string.slice(0, string.length - 2))
          }
          dropParent.find('.select-c8 option').prop('selected', false)
          setTimeout(() => {
            $.each(string.split(', '), (i, e) => {
              dropParent.find(".select-c8 option[value='" + e + "']").attr('selected', 'selected')
            })
            dropParent.find('.select-c8').change()
          }, 100)
        // console.log('string: ' + string)

          return false
        } else {
          if (!$(ele).parents('.dropdown-select-c8').hasClass('no-trigger-active')) {
            $(ele).parents('.dropdown-select-c8').find('.dropdown-toggle .filter-option').text(text)
          }
          $(ele).parents('ul').find('li').removeClass('selected')
          $(ele).parent().addClass('selected')

          const dropParent = $(ele).parents('.form-select-c8')
          dropParent.find('.select-c8 option').removeAttr('selected')
          setTimeout(() => {
            $(ele).parents('.form-select-c8').find('.select-c8 option').eq(index).attr('selected', 'selected')
            const val = $(ele).parents('.form-select-c8').find('.select-c8 option').eq(index).val()
            dropParent.find('.select-c8').val(val).change()
            $(ele).parents('.dropdown-menu, .dropdown-select-c8').removeClass('show')
          }, 100)
        }
      })
    }

    const hoverLiRemoveClass = () => {
      $('.' + dropdownSelectC8).find('li').hover(() => {
        $('.' + dropdownSelectC8).find('li').removeClass('not-hover').find('a').blur()
      }, function () {

      })
    }

    const focusSelect = () => {
      $('body').on('keydown', '.dropdown-select-c8', (e) => {
        const ele = e.currentTarget
        if (e.keyCode === 13) { // enter
          if ($(ele).find('li.focus').length && $(ele).find('li.focus.disabled').length === 0) {
            $(ele).find('li').removeClass('selected')
            $(ele).find('li.focus').addClass('selected').removeClass('focus').find('a').trigger('click')
            return false
          }
        }
        if (e.keyCode === 38) { // up
          let totalOption = $(ele).find('li').length
          let index = $(ele).find('li.focus').index()
          $(ele).addClass('focus')
          if ($(ele).find('li.focus').length < 1 || index === 0) {
            $(ele).find('li').removeClass('focus').eq(totalOption - 1).addClass('focus')
          } else {
            $(ele).find('li').removeClass('focus').eq(index).prev().addClass('focus')
          }
        }
        if (e.keyCode === 40) { // down
          let totalOption = $(ele).find('li').length
          let index = $(ele).find('li.focus').index()
          $(ele).addClass('focus')
          if ($(ele).find('li.focus').length < 1 || totalOption - 1 === index) {
            $(ele).find('li').removeClass('focus').first().addClass('focus')
          } else {
            $(ele).find('li').removeClass('focus').eq(index).next().addClass('focus')
          }
        }
        if (e.keyCode === 9) {
          $(this).find('li').removeClass('focus')
        }
      })
    }

    const closeSelect = () => {
      $('.' + dropdownSelectC8).on('hide.bs.dropdown', (e) => {
        $('.dropdown-select-c8, .dropdown-select-c8 li').removeClass('focus')
      })
    }

    const changeSelectC8 = () => {
      callSelectC8.change((e) => {
        callSelectC8.trigger('changeSelect')
      })
    }

    const clickOutClose = () => {
      $(document).click((event) => {
        if (!$(event.target).closest('.dropdown-select-c8.show, .dropdown-menu.show, .dropdown-select-c8 *').length) {
          $(dropdownOpen).removeClass('show')
        }
      })
    }

    const keyOption = () => {
      $(document).keyup(function (e) {
        if (e.keyCode === 27 && $('.dropdown-select-c8.show').length) {
          $(dropdownOpen).removeClass('show')
        }
        window.addEventListener('keydown', function (e) {
        // space and arrow keys
          if ([32, 37, 38, 39, 40].indexOf(e.keyCode) > -1 && $('.dropdown-select-c8.show').length) {
            e.preventDefault()
          }
        }, false)
      })
    }

    renderSelectToDropdown()
    clickToggle()
    clickSelect()
    focusSelect()
    closeSelect()
    changeSelectC8()
    hoverLiRemoveClass()
    clickOutClose()
    keyOption()
    return {
      renderSelectToDropdown: renderSelectToDropdown,
      clickSelect: clickSelect,
      focusSelect: focusSelect,
      closeSelect: closeSelect,
      changeSelectC8: changeSelectC8
    }
  }
})()
export default SelectC8

// $(document).on('changeSelect', '.select-c8', function () {
//   SelectC8.renderSelectToDropdown()
// })
