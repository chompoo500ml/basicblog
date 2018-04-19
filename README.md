# basicblog

![GitHub repo size in bytes](https://img.shields.io/github/repo-size/chompoo500ml/basicblog.svg)

## link

https://chompoo500ml.github.io/basicblog/

## Chat

[![Gitter](https://img.shields.io/gitter/room/nwjs/nw.js.svg)](https://gitter.im/basicblog/Lobby)

## How to setup dev environment

- Because our server-side api beased on Ruby on Rails; You need to install it for local development; Check the guide from here [http://guides.rubyonrails.org/](http://guides.rubyonrails.org/)
- Do following to prepare development environment 

```sh
$ git clone https://github.com/chompoo500ml/basicblog.git
$ cd basicblog
$ bundle install
$ bundle exec rake db:create db:migrate
```

- From here, you can start local server for developing by run "rake server:start"; pages will be served on http://localhost:9090

```sh
$ rake server:start
```

- Currently, our client-side are static and serve from public folder; You can start to fix/add something by editing files in public folder

## Credits

Bootstrap Theme based on [Clean Blog](https://github.com/BlackrockDigital/startbootstrap-clean-blog) from Blackrock Digital LLC. Code released under the [MIT](https://github.com/BlackrockDigital/startbootstrap-clean-blog/blob/gh-pages/LICENSE) license.

<div>favicon made by <a href="http://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>

## License

[![GitHub license](https://img.shields.io/github/license/chompoo500ml/basicblog.svg)](https://github.com/chompoo500ml/basicblog/blob/master/LICENSE)

All code in this repository (unless otherwise specificed in the file) is licensed under the MIT License.

See [LICENSE](/LICENSE) for more information.
