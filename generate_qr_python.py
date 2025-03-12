import qrcode

# Create QR code instance
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)

# The data we want to encode
url = "https://elairowl.github.io/psyc4100-quiz/"
qr.add_data(url)
qr.make(fit=True)

# Create an image from the QR Code
img = qr.make_image(fill_color="black", back_color="white")

# Save it
img.save("quiz_qr.png")