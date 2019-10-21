import $ from 'jquery'
const Header = (() => {
  let _this = $('#header')
  let _numberScrol = 0
  if (_this.length) {
    const onResizeWindow = () => {
      settingPin()
    }
    const settingPin = () => {
      let scrollTop = $(window).scrollTop()
      if (scrollTop > _numberScrol) {
        _this.addClass('pin-header')
      } else {
        _this.removeClass('pin-header')
      }
    }
    const scrollPinHeader = () => {
      settingPin()
      $(window).scroll(() => {
        settingPin()
      })
      $(window).resize(() => {
        onResizeWindow()
      })
    }
    scrollPinHeader()
  }
})()
export default Header
