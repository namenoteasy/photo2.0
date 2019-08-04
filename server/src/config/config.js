// default config
module.exports = {
  workers: 1,
  jwt: {
    secret: '123456789',
    cookie: 'jwt-token',
    expire: 60 * 60 * 24 * 3, // 秒
  },
  weixin: {
    appid: "wx19f5de2d220f6389",
    secret: "211b66f5270dc3db3023e1900e5d1f66",
  }
};
