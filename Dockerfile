FROM nginx:alpine

# คัดลอกไฟล์เว็บแอปจากโฟลเดอร์ public
COPY ./public /usr/share/nginx/html

# คัดลอกการตั้งค่า Nginx ที่แก้ไขพอร์ตเป็น 3000
COPY nginx.conf /etc/nginx/conf.d/default.conf

# เปิดพอร์ต 3000 (ทั้งใน container และ Nginx configuration)
EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]