export const demo = {
  heroStat: "8 sample lines · 3 low-stock alerts",
  heroNote: "Demo snapshot: refill queue is moving steadily.",
  bars: [["In stock","w90"],["Low stock","w60"],["On order","w75"]],
  strip: [["8 sample lines","Fictional inventory only"],["No prescriptions","No health data collected"],["Local log only","Actions stay in this browser"],["Free to host","Cloudflare free tier"]],
  safetyNote: "No medicine names here refer to real stock, and no prescription or patient record is stored.",
  tableHead: ["Item","Category","Stock band","Reorder at","Status"],
  rows: [["Sample tablet A","General","High","20 units","Healthy"],["Sample syrup B","Pediatric","Low","15 units","Reorder"],["Sample capsule C","General","Medium","30 units","Healthy"],["Sample drops D","Eye care","Low","10 units","Reorder"],["Sample balm E","Topical","High","12 units","Healthy"],["Sample powder F","Nutrition","Medium","18 units","Review"]],
  workflow: [["Scan a line","Pick a simulated inventory row."],["Check the band","See a simple high, medium, or low indicator."],["Log a refill","The refill note is saved in your browser only."]],
  actions: [["Record refill"," recorded a simulated refill."],["Flag low stock"," flagged a low-stock line locally."],["Mark received"," marked a sample order as received."],["Audit stock"," ran a local demo stock audit."]]
};
