var flutter_typeform_web = {
  openForm: (formId, onSubmitted) => {
    const { open } = window.tf.createPopup(formId, {
      onSubmit: () => {
        onSubmitted()
      },
      autoClose: true,
    })
    open()
  }
}

window.dispatchEvent(new Event('flutter_typeform_ready'));