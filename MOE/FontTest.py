from PIL import Image, ImageDraw, ImageFont


ft = ImageFont.truetype("C:\\WINDOWS\\Fonts\\SIMYOU.TTF", 20)
width, height = ft.getsize('A')
print("width:%d, height:%d" % (width, height))
image = ft.getmask('A')

for y in range(height):
    for x in range(width):
        pixels = image.getpixel((y, x))
        print("%02x " % pixels, end='')
    print()

