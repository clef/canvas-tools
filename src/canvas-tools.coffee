getPixelRatio = ->
  ctx = document.createElement("canvas").getContext("2d")
  dpr = window.devicePixelRatio || 1
  bsr = ctx.webkitBackingStorePixelRatio ||
    ctx.mozBackingStorePixelRatio ||
    ctx.msBackingStorePixelRatio ||
    ctx.oBackingStorePixelRatio ||
    ctx.backingStorePixelRatio || 1

  dpr / bsr

exports.createHiDPICanvas = (width, height) ->
  ratio = getPixelRatio()
  canvas = document.createElement("canvas")
  canvas.width = width * ratio
  canvas.height = height * ratio
  canvas.style.width = width + "px"
  canvas.style.height = height + "px"
  canvas.getContext("2d").setTransform(ratio, 0, 0, ratio, 0, 0)
  canvas

