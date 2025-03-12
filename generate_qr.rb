require 'rqrcode'
require 'chunky_png'

def generate_qr(url)
  qr = RQRCode::QRCode.new(url)
  png = qr.as_png(
    bit_depth: 1,
    border_modules: 4,
    color_mode: ChunkyPNG::COLOR_GRAYSCALE,
    color: 'black',
    file: nil,
    fill: 'white',
    module_px_size: 6,
    resize_exactly_to: false,
    resize_gte_to: false,
    size: 400
  )
  png.save('quiz_qr.png')
end

puts "Enter the quiz URL:"
url = gets.chomp
generate_qr(url)