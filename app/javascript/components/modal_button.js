const initModal = () => {
  const form = document.querySelector('#new_task')
  const button = document.querySelector('.modal-footer input[type=submit]')
  if (form) {
    button.addEventListener('click',() => {
      form.submit()
    })
  }
}


export { initModal }
