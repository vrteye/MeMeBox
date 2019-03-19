from PIL import Image,ImageDraw,ImageFont
import random
from io import BytesIO

from django.http import HttpResponse


def get_valid_img(request):
	# 生成随机颜色(随机RGB值)
    def get_random_color():
        return random.randint(0, 255), random.randint(0, 255), random.randint(0, 255)

    # 生成一个图片对象
    img_obj = Image.new(
        'RGB',
        (110, 35),
        get_random_color()
    )
    # 在生成的图片上写字符
    # 生成一个图片画笔对象
    draw_obj = ImageDraw.Draw(img_obj)
    # 加载字体文件， 得到一个字体对象
    font_obj = ImageFont.load_default().font
    # 字体文件为系统字体文件，笔者为win10系统，可在C:\Windows\Fonts中找到
    # 开始生成随机字符串并且写到图片上
    tmp_list = []
    a = ''
    for i in range(3):
        u = chr(random.randint(65, 90))  # 生成大写字母
        l = chr(random.randint(97, 122))  # 生成小写字母
        n = str(random.randint(0, 9))  # 生成数字，注意要转换成字符串类型

        tmp = random.choice([u, l, n])
        tmp_list.append(tmp)
        a += tmp
        draw_obj.text((0+40 * i, 0), tmp, fill=get_random_color(),font = font_obj)
    # print(a)
    request.session['check_num']=a #将正确的验证码存至session中，以便校对
    io_obj = BytesIO()
    img_obj.save(io_obj,'png')
    data = io_obj.getvalue()

    return HttpResponse(data,'image/png')
