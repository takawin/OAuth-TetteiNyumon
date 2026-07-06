import { resolve } from "node:path";
import { defineConfig } from "vite";

// GitHub Pages のプロジェクトページとして公開するため、リポジトリ名をサブパスに設定
export default defineConfig({
  base: "/OAuth-TetteiNyumon/",
  build: {
    rollupOptions: {
      input: {
        main: resolve(__dirname, "index.html"),
        about: resolve(__dirname, "about.html"),
      },
    },
  },
});
