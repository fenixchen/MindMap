from PIL import Image


class ImageUtil(object):

    @classmethod
    def load(cls, image_file):
        im = Image.open(image_file)
        width, height = im.size
        pix = im.load()
        print((width,height))
        data = []
        for y in range(height):
            for x in range(width):
                r, g, b = pix[x, y]
                data.append((r << 16) | (g << 8) | b)
        return width, height, data

if __name__ == '__main__':
    ImageUtil.load('bird.bmp')

