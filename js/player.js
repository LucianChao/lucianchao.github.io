console.log("player.js loaded");

(function () {
  async function initPlayer() {
    const container = document.getElementById('aplayer');
    const ui = document.querySelector('.aplayer');

    // 情况 1：有实例，但 UI 不存在 → 一定是脏实例，必须销毁
  if (window.aplayer && !ui) {
    console.log('APlayer instance dirty, destroy and recreate');
    try {
      window.aplayer.destroy();
    } catch (e) {}
    window.aplayer = null;
  }

   // 情况 2：实例 + UI 都存在 → 正常，什么都不做
  if (window.aplayer && ui) {
    console.log('APlayer healthy, skip init');
    return;
  }

      // 情况 3：容器不存在 → 等待
  if (!container) {
    console.warn('APlayer container not found');
    return;
  }

    /* ======================
       1. 自托管 FLAC（主打）
       ====================== */
    const localAudio = [
      //   {
      //     name: 'Interstellar',
      //     artist: 'Hans Zimmer',
      //     url: '/music/flac/interstellar.flac',
      //     cover: '/music/cover/interstellar.jpg',
      //     lrc: '/music/lrc/interstellar.lrc',
      //     type: 'flac'
      //   }
    ];

    /* ======================
       2. Meting（平台兜底）
       ====================== */
    let metingAudio = [];
    try {
      const res = await fetch(
        "https://api.i-meto.com/meting/api?server=netease&type=playlist&id=9729906436"
      );
      metingAudio = await res.json();
    } catch (e) {
      console.warn("Meting load failed, fallback to local only");
    }

    /* ======================
       3. 合并 & 创建 APlayer
       ====================== */
    const audioList = [...localAudio, ...metingAudio];

    window.aplayer = new APlayer({
      container,
      fixed: true,
      autoplay: true,
      preload: "auto",
      volume: 0.7,
      lrcType: 1,
    //   audio: audioList,
      audio: metingAudio
    });

    console.log("APlayer created with", audioList.length, "tracks");
  }

   document.addEventListener('DOMContentLoaded', initPlayer);
   // PJAX 切页完成后（Barba）
  document.addEventListener('barba:afterEnter', initPlayer);
})();
