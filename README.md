# RE:volution Resource Pack — Minecraft 1.12.2

Набор ресурсов игрового режима **RE:volution**: текстуры рун, которые загружаются отдельно от Java-кода основного Forge-мода.

**Текущая версия: `v1.1.0`**

[Скачать набор ресурсов](https://github.com/Theyyk/re-volution-resource-pack/releases/tag/v1.1.0) · [Документация на русском](docs/README.md) · [Русские описания версий](docs/releases/README.md)

## Возможности

- 11 уникальных текстур для 26 фиксированных позиций первого статуса **Яд**.
- Два варианта: **64×64** и **128×128**, с одинаковыми именами файлов и путями ресурсов.
- Прозрачные PNG в формате RGBA с 8-битными каналами.
- Minecraft **1.12.2**, формат набора ресурсов **3**, пространство имён `customguimod`.
- Автоматическая проверка текстур и сборка двух ZIP-архивов.

Набор содержит изображения рун. Геометрию интерфейса, ранги, состояние коллекции, покупку и пробуждение определяет основной мод.

## Совместимость

| Компонент | Совместимость |
|---|---|
| Minecraft | `1.12.2` |
| Forge | `14.23.5.2859` |
| RE:volution Mod | Актуальная версия |
| RE:volution Resource Pack | `v1.1.0` |

Resource Pack предназначен для актуальной версии [RE:volution Mod](https://github.com/Theyyk/re-volution-mod/releases/latest). Шрифты интерфейса и сведения об их источнике находятся в [репозитории мода](https://github.com/Theyyk/re-volution-mod/blob/main/docs/permissions/cristalix.md).

## Предпросмотр ресурсов

Ниже показаны **оба фактических варианта** набора ресурсов. Предпросмотр строится напрямую из PNG, которые входят в репозиторий, поэтому он не зависит от версии интерфейса основного мода и не требует отдельного обновления при изменениях GUI.

### 64×64

<p>
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/hidden_strike_glove.png" width="64" height="64" alt="Hidden Strike Glove 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/hunter_relic.png" width="64" height="64" alt="Hunter Relic 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/infection_mark.png" width="64" height="64" alt="Infection Mark 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/infection_seal.png" width="64" height="64" alt="Infection Seal 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/killer_cloak.png" width="64" height="64" alt="Killer Cloak 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/killer_dagger.png" width="64" height="64" alt="Killer Dagger 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/rage_amulet.png" width="64" height="64" alt="Rage Amulet 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/sharpening_stone.png" width="64" height="64" alt="Sharpening Stone 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/snake_fang.png" width="64" height="64" alt="Snake Fang 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/toxic_shard.png" width="64" height="64" alt="Toxic Shard 64x64">
  <img src="variants/64x64/assets/customguimod/textures/gui/runes/toxin_booster.png" width="64" height="64" alt="Toxin Booster 64x64">
</p>

### 128×128

<p>
  <img src="assets/customguimod/textures/gui/runes/hidden_strike_glove.png" width="128" height="128" alt="Hidden Strike Glove 128x128">
  <img src="assets/customguimod/textures/gui/runes/hunter_relic.png" width="128" height="128" alt="Hunter Relic 128x128">
  <img src="assets/customguimod/textures/gui/runes/infection_mark.png" width="128" height="128" alt="Infection Mark 128x128">
  <img src="assets/customguimod/textures/gui/runes/infection_seal.png" width="128" height="128" alt="Infection Seal 128x128">
  <img src="assets/customguimod/textures/gui/runes/killer_cloak.png" width="128" height="128" alt="Killer Cloak 128x128">
  <img src="assets/customguimod/textures/gui/runes/killer_dagger.png" width="128" height="128" alt="Killer Dagger 128x128">
  <img src="assets/customguimod/textures/gui/runes/rage_amulet.png" width="128" height="128" alt="Rage Amulet 128x128">
  <img src="assets/customguimod/textures/gui/runes/sharpening_stone.png" width="128" height="128" alt="Sharpening Stone 128x128">
  <img src="assets/customguimod/textures/gui/runes/snake_fang.png" width="128" height="128" alt="Snake Fang 128x128">
  <img src="assets/customguimod/textures/gui/runes/toxic_shard.png" width="128" height="128" alt="Toxic Shard 128x128">
  <img src="assets/customguimod/textures/gui/runes/toxin_booster.png" width="128" height="128" alt="Toxin Booster 128x128">
</p>

Исторические GUI-скриншоты сохранены в [`docs/archive/screenshots/`](docs/archive/screenshots/), но больше не используются как актуальный preview Resource Pack.

## Установка и запуск

1. Установите [актуальную версию RE:volution Mod](https://github.com/Theyyk/re-volution-mod/releases/latest) на клиент и сервер с Forge 1.12.2.
2. Скачайте **один** вариант из [релиза набора ресурсов v1.1.0](https://github.com/Theyyk/re-volution-resource-pack/releases/tag/v1.1.0):
   - `re-volution-resource-pack-v1.1.0-64x64.zip`;
   - `re-volution-resource-pack-v1.1.0-128x128.zip`.
3. Поместите ZIP без распаковки в папку `resourcepacks` используемого профиля Minecraft.
4. Включите набор в настройках ресурсов. Другой набор с более высоким приоритетом может перекрывать эти текстуры.
5. Запустите клиент, подключитесь к серверу и откройте интерфейс клавишей `C`.

Выберите один вариант: при включении обоих Minecraft использует изображения из набора с более высоким приоритетом. Разрешение PNG не меняет размер слотов интерфейса.

[Подробная установка и устранение проблем](docs/setup.md). Настройка сервера и MongoDB описана в [документации мода](https://github.com/Theyyk/re-volution-mod/blob/main/docs/setup.md).

## Документация

[Оглавление](docs/README.md) содержит каталог рун, правила визуального набора, структуру ресурсов и процесс выпуска. Русская история хранится в `docs/releases/`, английские описания и ZIP-архивы — в [GitHub Releases](https://github.com/Theyyk/re-volution-resource-pack/releases).

## Лицензирование

Репозиторий использует раздельное лицензирование:

- служебный код и инструменты в `.github/scripts/**` и `tools/**` распространяются по [MIT License](LICENSE);
- визуальные и игровые ассеты, включая `assets/**`, `variants/**`, текстуры, изображения интерфейса, скриншоты и другие медиа, защищены отдельной [RE:volution Asset License](ASSETS-LICENSE.md) и не разрешены для свободного копирования, модификации или распространения вне официального проекта RE:volution.
