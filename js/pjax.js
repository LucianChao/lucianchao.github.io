barba.init({
  transitions: [
    {
      name: 'fade',
      leave() {
        return new Promise(resolve => {
          resolve();
        });
      },
      enter() {
        // 页面切换完成
        // 不重新初始化播放器
        console.log('PJAX page entered');
      }
    }
  ]
});
