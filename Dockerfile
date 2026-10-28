FROM python:3.14-slim

WORKDIR /app

# تثبيت التحديثات والحرص على وجود الأدوات الأساسية
RUN apt-get update && apt-get install -y --no-install-recommends \
    git curl \
    && rm -rf /var/lib/apt/lists/*

COPY . /app

# فتح منفذ السيرفر المخصص للعبة
EXPOSE 43210/udp

# تشغيل ملف السيرفر الرئيسي للمستودع
CMD ["python", "bombsquad_server"]
