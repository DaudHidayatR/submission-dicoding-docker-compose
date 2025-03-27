#membuat dockerfile untuk image nodejs

#menggunakan image nodejs versi 14 alpine
FROM node:14-alpine

#menambahkan label pada image
LABEL authors="sagash | daud_ramadhan"

#membuat folder app
WORKDIR /app

#menyalin file aplikasi ke dalam folder app
COPY . .

#menetapkan variabel environment
ENV NODE_ENV=production DB_HOST=item-db

#melakukan instalasi dependensi dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#membuka port 8080
EXPOSE 8080

#menjalankan aplikasi dengan perintah npm start
CMD ["npm", "start"]





