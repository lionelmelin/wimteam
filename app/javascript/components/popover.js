const activatePopOver = () => {
  $(function () {
    $('.walk-popover').popover({
      container: 'body'
    })
  })
};

export { activatePopOver };
