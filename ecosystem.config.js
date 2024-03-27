module.exports = {
  apps: [
    {
      name: 'docker-nodejs-pm2-demo',
      script: './app.js',
      instances: 1,
      env: {
        NODE_ENV: 'development',
      },
      env_production: {
        NODE_ENV: 'production',
      },
      exec_mode: 'cluster',
      combine_logs: true,
      out_file: '/dev/null',
    },
  ],
}
