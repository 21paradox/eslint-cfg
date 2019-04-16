const a = 1;

const snapshotDiv = () => new Promise((resolve) => {
  html2canvas(recordDiv, {
    logging: false,
  }).then((canvas) => {
    requestAnimationFrame(() => {
      recorderContext.clearRect(0, 0, recordDivwidth - 1, recordDivheight);
      recorderContext.drawImage(canvas, 0, 0, recordDivwidth - 1, recordDivheight);
      resolve();
    });
  });
});
