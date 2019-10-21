import $ from 'jquery'
const <%= ClassName %> = (() => {
  const nameFucition = () => {
    let _this = $('.<%= ModuleName %>')
    if (_this.length) {
      _this.each((index, el) => {
        console.log(el, index)
      })
    }
  }
  nameFucition()
})()
export default <%= ClassName %>
