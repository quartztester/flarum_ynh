<!--
N.B. : Ce README a été généré automatiquement par <https://github.com/YunoHost/apps_tools/blob/main/readme_generator>
Il ne doit PAS être édité à la main.
-->

<h1>
  <img src="https://raw.githubusercontent.com/YunoHost/apps/main/logos/flarum.png" width="32px" alt="Logo de Flarum">
  Flarum, packagé pour YunoHost
</h1>

Forum de nouvelle génération, simplement

[![🌐 Site officiel de l'application](https://img.shields.io/badge/Official_app_website-darkgreen?style=for-the-badge)](https://flarum.org)
[![Démo de l'app](https://img.shields.io/badge/App_Demo-blue?style=for-the-badge)](https://discuss.flarum.org/d/21101-demos-come-to-flarum)
[![Version : 2.0.2~ynh1](https://img.shields.io/badge/Version-2.0.2~ynh1-rgb(18,138,11)?style=for-the-badge)](https://ci-apps.yunohost.org/ci/apps/flarum/)

<div align="center">
<a href="https://apps.yunohost.org/app/flarum"><img height="100px" src="https://github.com/YunoHost/yunohost-artwork/raw/refs/heads/main/badges/neopossum-badges/badge_more_info_on_the_appstore.svg"/></a>
<a href="https://github.com/YunoHost-Apps/flarum_ynh/issues"><img height="100px" src="https://github.com/YunoHost/yunohost-artwork/raw/refs/heads/main/badges/neopossum-badges/badge_report_an_issue.svg"/></a>
</div>

## Captures d'écran

![Capture d'écran de Flarum](./doc/screenshots/beta16.jpg)

## 📦 Informations pour les développeur·euses

[![Niveau des tests automatiques](https://apps.yunohost.org/badge/cilevel/flarum)](https://ci-apps.yunohost.org/ci/apps/flarum/)

🛠️ Dépôt amont de Flarum : <https://github.com/flarum/framework>

Les pull requests sont bienvenues et devraient cibler la branche [`testing`](https://github.com/YunoHost-Apps/flarum_ynh/tree/testing).

La branche `testing` peut être testée avec :
```
# installation neuve :
sudo yunohost app install https://github.com/YunoHost-Apps/flarum_ynh/tree/testing

# mise à jour d'une installation existante :
sudo yunohost app upgrade flarum -u https://github.com/YunoHost-Apps/flarum_ynh/tree/testing
```

### 📚 Documentation de packaging d'applications

Merci de consulter <https://doc.yunohost.org/packaging_apps> pour plus d'informations.
