# 🚀 ПУБЛИКАЦИЯ НА GITHUB — пошагово

## Вариант А: без установки git (только браузер) — РЕКОМЕНДУЮ

### 1. Создай репозиторий
- Зайди на https://github.com/new
- Repository name: `dokimon-russificator`
- Описание: `Полный русский перевод Dokimon: Quest + кириллица в шрифтах`
- Public → **Create repository**

### 2. Залей маленькие файлы (через браузер)
- На странице репозитория: **«uploading an existing file»** (ссылка в центре)
- Перетащи из папки `Dokimon_Russificator-GitHub`:
  README.md, LICENSE.Translation.txt, .gitignore,
  install.exe, PLAY_RU.cmd, UPDATE_RU.cmd, Restore_Original.cmd
  и все 12 файлов из папки Localization
- Внизу: Commit changes

### 3. Залей большой файл через Release
Большие файлы (>25 МБ) через браузер в код нельзя — только в Releases
(лимит 2 ГБ на файл):
- В репозитории: **Releases → Create a new release → Draft a new release**
- Tag: `v1.0`, Title: `Русификатор v1.0`
- Перетащи `Dokimon_Russificator.zip` (63,8 МБ, лежит на рабочем столе)
- **Publish release**

### 4. Готово
Ссылка для людей: `https://github.com/ТВОЙ_НИК/dokimon-russificator/releases`
Скачать = кнопка zip в релизе.

---

## Вариант Б: через git (если установлен)

```cmd
cd "C:\Users\Tsifrokayf\Desktop\Dokimon_Russificator-GitHub"
git init -b main
git add -A
git commit -m "Русификатор Dokimon: полный перевод + кириллица в шрифтах"
git remote add origin https://github.com/ТВОЙ_НИК/dokimon-russificator.git
git push -u origin main
```

Релиз с архивом:
```cmd
gh release create v1.0 Dokimon_Russificator.zip --title "Русификатор v1.0" --notes "Полный русский перевод"
```

---

## Что написать в теме «Russian language» на Steam
```
Сделал полный русский перевод! Установка в один клик:
<ссылка на релиз>

- Весь текст игры + кириллица во всех шрифтах (включая HD)
- Не конфликтует со Steam-обновлениями
- Установка: install.exe -> указать Dokimon.exe
```
