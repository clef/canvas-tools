import * as canvasTools from '../src'

describe("canvas-tools", () => {
  it("should create a canvas", () => {
    let height = 50
    let width = 50
    let canvas = canvasTools.createHiDPICanvas(width, height)
  })
})
