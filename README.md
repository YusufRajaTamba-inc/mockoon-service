# Mockoon Service

Mock API untuk project ini, dibangun dengan Mockoon environment file dan dijalankan lewat Mockoon CLI.

## Setup

Project ini sudah menyiapkan:

- [mockoon/environment.json](mockoon/environment.json) sebagai environment Mockoon
- script `mockoon:start` untuk menjalankan mock server
- script `mockoon:validate` untuk memvalidasi environment

## Install

Kalau dependency belum ada, install dulu:

```bash
npm install
```

## Setup Docker Lokal

Pastikan Docker Desktop sudah terbuka dan daemon-nya aktif. Setelah itu:

```bash
docker --version
```

Build image lokal:

```bash
npm run docker:build
```

Jalankan container:

```bash
npm run docker:start
```

## Jalankan Mock API

```bash
npm run mockoon:start
```

Mock API akan berjalan di:

```text
http://localhost:3002
```

## Validasi Environment

```bash
npm run mockoon:validate
```

## Endpoint

Semua endpoint memakai prefix `/api`.

- `GET /api/health`
- `GET /api/users`
- `GET /api/users/1`
- `POST /api/auth/login`
- `GET /api/products`

## Contoh Response

`GET /api/health`

```json
{
  "status": "ok",
  "service": "mockoon-service"
}
```

`POST /api/auth/login`

```json
{
  "accessToken": "mock-token",
  "tokenType": "Bearer",
  "expiresIn": 3600
}
```

## Catatan

Jika port `3002` sudah dipakai, ubah value `port` di [mockoon/environment.json](mockoon/environment.json) lalu sesuaikan juga URL aksesnya.

Untuk Docker, port host juga harus diarahkan ke `3002`.