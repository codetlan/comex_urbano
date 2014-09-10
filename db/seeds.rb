ActsAsTaggableOn::Tag.create!([
  {name: "arto"},
  {name: "video"},
  {name: "urbano"},
  {name: "video2"},
  {name: "graffiti"},
  {name: "video3"},
  {name: "tigre"},
  {name: "imagen1"},
  {name: "patada"},
  {name: "imagen2"},
  {name: "futbol"},
  {name: "verde"},
  {name: "imagen4"},
  {name: "blog1"},
  {name: "blog3"},
  {name: "foto5"}
])
ActsAsTaggableOn::Tagging.create!([
  {tag_id: 1, taggable_id: 1, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 1, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 3, taggable_id: 1, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 4, taggable_id: 2, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 2, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 5, taggable_id: 2, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 3, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 4, taggable_id: 3, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 4, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 6, taggable_id: 4, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 7, taggable_id: 4, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 1, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 9, taggable_id: 1, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 2, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 10, taggable_id: 2, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 11, taggable_id: 2, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 3, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 12, taggable_id: 3, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 4, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 13, taggable_id: 4, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 6, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 16, taggable_id: 6, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 7, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 11, taggable_id: 1, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 11, taggable_id: 4, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"}
])
Impression.create!([
  {impressionable_type: "Photo", impressionable_id: 1, user_id: 1, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "4d27aecef16ee77ecfb31591ad77ae9d38eaf3eaf9318e061d6392fcbddd35ab", ip_address: "127.0.0.1", session_hash: "bce6969ec9b2356e5362fbf7e3be924a", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Video", impressionable_id: 1, user_id: 1, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "e4b4a3c527273eb36da1f3a616951628e557fa6e70c73b155cb28eef85826298", ip_address: "127.0.0.1", session_hash: "c2892378a639fcbc8563ab75ddfafae0", message: nil, referrer: "http://localhost:3000/videos"},
  {impressionable_type: "Photo", impressionable_id: 1, user_id: 1, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "9d5a17d1caa0341f540516a17dfc195abce9ac03d2e280a5b558762fdfee85b7", ip_address: "127.0.0.1", session_hash: "c2892378a639fcbc8563ab75ddfafae0", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Photo", impressionable_id: 4, user_id: 1, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "e6086aa877a67a694e14e09d5ce71b934b58fbddc4cccbba7011e0c620adc4dd", ip_address: "127.0.0.1", session_hash: "c2892378a639fcbc8563ab75ddfafae0", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Photo", impressionable_id: 4, user_id: 2, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "a58480680f25c5c9d5898b31ad8b89db5b2d9d09b012a35f5b92290a6740e88e", ip_address: "127.0.0.1", session_hash: "a60394dc07a6a391aced49806aaf00d7", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Video", impressionable_id: 1, user_id: 2, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "b2cf9fc82d834817c093aff6818dd912f87f2809199a94cdb2f09fdb2fe6e211", ip_address: "127.0.0.1", session_hash: "a60394dc07a6a391aced49806aaf00d7", message: nil, referrer: "http://localhost:3000/videos"},
  {impressionable_type: "Photo", impressionable_id: 7, user_id: 2, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "8cc5ce9be662a9f4c0a5006345019c9f3f23485f777d641a93ea61ee679f593a", ip_address: "127.0.0.1", session_hash: "a60394dc07a6a391aced49806aaf00d7", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Photo", impressionable_id: 3, user_id: nil, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "cafb192f63863667fbc82edf8569e81082b3da60437d484034042b6ce4b71f76", ip_address: "127.0.0.1", session_hash: "ad3b0db81dc5022cb887c1305b371b7e", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Video", impressionable_id: 1, user_id: nil, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "0d0c5e3af697f0a47e8ba7d14b41229db756d3e0aff28eb8e7428f98fb65bbe9", ip_address: "127.0.0.1", session_hash: "ad3b0db81dc5022cb887c1305b371b7e", message: nil, referrer: "http://localhost:3000/videos"},
  {impressionable_type: "Video", impressionable_id: 1, user_id: nil, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "9af3f19c4b289e09f5647aaaeeebe6372e77fa30d3bcbb538719b9935989d82f", ip_address: "127.0.0.1", session_hash: "7c2d95011d91fdded20e0442ac1bac66", message: nil, referrer: "http://localhost:3000/"},
  {impressionable_type: "Video", impressionable_id: 1, user_id: nil, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "3fa58be3f852ff8efbb6e90bcc148d89dbb61c93bfc24d79457d6876db04502b", ip_address: "127.0.0.1", session_hash: "f17b85660d669d11600ef2382ab2ac1a", message: nil, referrer: "http://localhost:3000/videos/section/1"},
  {impressionable_type: "Photo", impressionable_id: 4, user_id: nil, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "748be0774670fabec76a1a2a809038b1b17b5140cc5153bdd7fc3624bb332c69", ip_address: "127.0.0.1", session_hash: "f17b85660d669d11600ef2382ab2ac1a", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Photo", impressionable_id: 1, user_id: nil, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "a0817086f8f272eb5a4d5e2433a98030d889ab5f3cff38604e667c4bad03d3e9", ip_address: "127.0.0.1", session_hash: "f17b85660d669d11600ef2382ab2ac1a", message: nil, referrer: nil},
  {impressionable_type: "Photo", impressionable_id: 2, user_id: nil, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "ca6a57560e7ec9076c9855a441fa5b014aa93329ce8c0bfc431a6236b71d15c1", ip_address: "127.0.0.1", session_hash: "f17b85660d669d11600ef2382ab2ac1a", message: nil, referrer: nil},
  {impressionable_type: "Video", impressionable_id: 3, user_id: nil, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "64beb42facf6b2f958e69c34a4ac8d95e60adac5c41db0b86c42f31688b2044d", ip_address: "127.0.0.1", session_hash: "f17b85660d669d11600ef2382ab2ac1a", message: nil, referrer: "http://localhost:3000/"},
  {impressionable_type: "Video", impressionable_id: 4, user_id: 1, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "0fc1eb66c22ab165b3b4edf2bd873daaccbca7b6f9e0cfec4c0f4b8ffe8bde8c", ip_address: "127.0.0.1", session_hash: "cd0d641796be4ecf31e09dbe658a5e74", message: nil, referrer: "http://localhost:3000/"},
  {impressionable_type: "Video", impressionable_id: 1, user_id: 1, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "3d9c68ae186bbafa27febd0d0e35dda067c321aa5730c5ce45ea3453fbc07dff", ip_address: "127.0.0.1", session_hash: "cd0d641796be4ecf31e09dbe658a5e74", message: nil, referrer: "http://localhost:3000/videos"},
  {impressionable_type: "Photo", impressionable_id: 1, user_id: nil, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "54f4f022d10f9c6d951944711a58ac0f41913623289e5f75bd56342603fdfef7", ip_address: "127.0.0.1", session_hash: "089d07f4310d8837cb4be64fc679d86c", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Video", impressionable_id: 1, user_id: 1, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "0fb81002af4e3342b9ad1f4a403925bf29342124d37797cc6d0844d7f0351afc", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/videos"},
  {impressionable_type: "Video", impressionable_id: 3, user_id: 1, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "a97fc8792c80c49946e727b9658c7b1598a48d5d65cd07c822458be5efafb0c8", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/videos"},
  {impressionable_type: "Photo", impressionable_id: 1, user_id: 1, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "0b356a3a70d525008589745069daca9c67e2dd9afdf41b7b15f0ad9602fa14dc", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Photo", impressionable_id: 5, user_id: 1, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "17dc490b9b13215ac90b7b76596baf572b21b68fefc1ca7e3f79b1405265d2cc", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Photo", impressionable_id: 4, user_id: 1, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "ae1b21d6da9c37f1d47696044d7ba8bf769e778e6a0d348301e80f5ab6880e54", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/photos/1"},
  {impressionable_type: "Video", impressionable_id: 4, user_id: 1, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "a0dc674d8696c6168c8706e2b5a575ecea4aab28957bc5b08ebfec760ec13a8b", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/videos/1"},
  {impressionable_type: "Video", impressionable_id: 2, user_id: 1, controller_name: "videos", action_name: "show", view_name: nil, request_hash: "a7dbf502966901f7b49fa7c1775b8c86cad15dd95469b77bb6fa2b1f4f828fc1", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/videos"},
  {impressionable_type: "Photo", impressionable_id: 2, user_id: 1, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "66ea5355daee35d911a824f86e05f9bbb9f0ea8a0ab89c2884b90b948336bba9", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/photos"},
  {impressionable_type: "Photo", impressionable_id: 3, user_id: 1, controller_name: "photos", action_name: "show", view_name: nil, request_hash: "e1d2587722e316005b3d6a4a2ba051eaa8fda550022dd3387a673092ec3d6af3", ip_address: "127.0.0.1", session_hash: "145d3b1988418e2e3d177e5601e21be9", message: nil, referrer: "http://localhost:3000/photos"}
])
User.create!([
  {email: "comex@demo.com", :password => 'comex123', :password_confirmation => 'comex123'}
])
About.create!([
  {name: "¿QUÉ ES COMEX URBANO?", description: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis adipiscing nibh, ut tincidunt quam. Praesent ut congue enim. Nulla sed ultrices nunc. Nunc pharetra tristique magna, id tincidunt nisl venenatis at. Aliquam mollis diam vel velit interdum faucibus. Aenean purus nulla, pharetra vel molestie quis, pretium a nulla. Donec non urna et nulla iaculis euismod et id nulla.</p>\r\n", image_file_name: "header.jpg", image_content_type: "image/jpeg", image_file_size: 281333, image_updated_at: "2014-09-05 04:16:22"}
])
Banner.create!([
  {name: nil, description: nil, active: nil, photo_file_name: "placead1.jpg", photo_content_type: "image/jpeg", photo_file_size: 57825, photo_updated_at: "2014-09-04 06:41:15", landing_page_id: nil},
  {name: nil, description: nil, active: nil, photo_file_name: "placead2.jpg", photo_content_type: "image/jpeg", photo_file_size: 70431, photo_updated_at: "2014-09-04 06:41:22", landing_page_id: nil}
])
Category.create!([
  {name: "¿Qué es comex urbano?", link: "abouts", position: 1, active: 1},
  {name: "Galería", link: "photos", position: 2, active: 1},
  {name: "Videos", link: "videos", position: 3, active: 1}
])
Contact.create!([
  {name: "Oswaldo", lastname: "Lopez", email: "oswaldo@codetlan.com", subject: "Prueba", message: "Pruebas de mensaje"}
])
Image.create!([
  {name: "Festival Internacional de Arte Urbano", description: "Festival Internacional de Arte Urbano Festival Internacional de Arte Urbano", link: "http://www.codetlan.com", photo_file_name: "featured-image.jpg", photo_content_type: "image/jpeg", photo_file_size: 511217, photo_updated_at: "2014-07-29 03:44:53", landing_page_id: 1},
  {name: "Festival Internacional de Arte Barroco", description: "Festival Internacional de Arte Barroco Festival Internacional de Arte Barroco", link: "http://www.google.com", photo_file_name: "featured-image2.jpg", photo_content_type: "image/jpeg", photo_file_size: 358088, photo_updated_at: "2014-07-30 05:18:21", landing_page_id: 1}
])
LandingPage.create!([
  {facebook: "http://www.facebook.com", twitter: "http://www.twitter.com", youtube: "https://www.youtube.com/playlist?list=PLCD3256751AEEB51F", vimeo: "http://www.vimeo.com", copyright: "Copyright 2014 Consorcio Comex, S.A. de C.V", terms: "Términos y Condiciones / Aviso de Privacidad / Soporte Técnico"}
])
Photo.create!([
  {name: "Imagen 3 Arte", description: 'ssff', content: "<p>El trozo de texto est&aacute;ndar de Lorem Ipsum usado desde el a&ntilde;o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de &quot;de Finibus Bonorum et Malorum&quot; por Cicero son tambi&eacute;n reproducidas en su forma original exacta, acompa&ntilde;adas por versiones en Ingl&eacute;s de la traducci&oacute;n realizada en 1914 por H. Rackham.</p>\r\n", visit: nil, active: 1, image_file_name: "arte-urbano.jpg", image_content_type: "image/jpeg", image_file_size: 236740, image_updated_at: "2014-09-02 23:51:43", section_id: 2, posted_at: "2014-07-10"},
  {name: "Imagen verde", description: 'fssfsf', content: "<p>ra mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, es</p>\r\n", visit: nil, active: 1, image_file_name: "arte.jpeg", image_content_type: "image/jpeg", image_file_size: 8303, image_updated_at: "2014-09-02 22:17:02", section_id: 2, posted_at: "2011-09-08"},
  {name: "Imagen 2 Arte", description: 'ssgssg', content: "<p>sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando se</p>\r\n", visit: nil, active: 1, image_file_name: "3.jpg", image_content_type: "image/jpeg", image_file_size: 95033, image_updated_at: "2014-09-02 23:46:34", section_id: 2, posted_at: "2011-01-12"},
  {name: "Imagen 1 Arte", description: 'eggdg', content: "<p>Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, escrito en el a&ntilde;o 45 antes de Cristo. Este libro es un tratado de teor&iacute;a de &eacute;ticas, mu</p>\r\n", visit: nil, active: 1, image_file_name: "2.jpg", image_content_type: "image/jpeg", image_file_size: 104408, image_updated_at: "2014-09-02 23:48:45", section_id: 2, posted_at: "2014-07-23"},
  {name: "kgjhg", description: 'ggssgg', content: "<p>jhhgjjgh</p>\r\n", visit: nil, active: 1, image_file_name: "4.jpg", image_content_type: "image/jpeg", image_file_size: 47462, image_updated_at: "2014-08-06 01:25:48", section_id: 2, posted_at: "2014-08-31"},
  {name: "Imagen 5 Arte", description: 'gdgg', content: "<p>sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando se</p>\r\n", visit: nil, active: 1, image_file_name: "color_2.jpg", image_content_type: "image/jpeg", image_file_size: 14683, image_updated_at: "2014-09-02 22:18:29", section_id: 2, posted_at: "2014-08-06"}
])
Publication.create!([
  {content: "<p>No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como&nbsp;</p>\r\nVideo de Arte Urbanotexto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias arto video urbano", published_id: 1, published_type: "Video"},
  {content: "<p>de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum</p>\r\nVideo de Arte Urbano GrafittiEl punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letrasvideo2 arto graffiti", published_id: 2, published_type: "Video"},
  {content: "<p>&nbsp;puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucion</p>\r\nVideo de Arte Modernocontenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene arto video2", published_id: 3, published_type: "Video"},
  {content: "<p>Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;li</p>\r\nVIdeo de Arte TigreHay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguarto video3 tigre", published_id: 4, published_type: "Video"},
  {content: "Imagen 5 Arte<p>sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando se</p>\r\narto foto5", published_id: 6, published_type: "Photo"},
  {content: "Imagen verde<p>ra mas de 2000 a&ntilde;os de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-Sydney en Virginia, encontr&oacute; una de las palabras m&aacute;s oscuras de la lengua del lat&iacute;n, &quot;consecteur&quot;, en un pasaje de Lorem Ipsum, y al seguir leyendo distintos textos del lat&iacute;n, descubri&oacute; la fuente indudable. Lorem Ipsum viene de las secciones 1.10.32 y 1.10.33 de &quot;de Finnibus Bonorum et Malorum&quot; (Los Extremos del Bien y El Mal) por Cicero, es</p>\r\narto imagen2 futbol", published_id: 2, published_type: "Photo"},
  {content: "Imagen 3 Arte<p>El trozo de texto est&aacute;ndar de Lorem Ipsum usado desde el a&ntilde;o 1500 es reproducido debajo para aquellos interesados. Las secciones 1.10.32 y 1.10.33 de &quot;de Finibus Bonorum et Malorum&quot; por Cicero son tambi&eacute;n reproducidas en su forma original exacta, acompa&ntilde;adas por versiones en Ingl&eacute;s de la traducci&oacute;n realizada en 1914 por H. Rackham.</p>\r\narto verde", published_id: 3, published_type: "Photo"},
  {content: "kgjhg<p>jhhgjjgh</p>\r\narto futbol patada", published_id: 1, published_type: "Photo"},
  {content: "Imagen 5 Arte<p>sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando se</p>\r\narto imagen4 futbol", published_id: 4, published_type: "Photo"}
])
Role.create!([
  {name: "Admin", description: "Puedes editar toda el administrador.", active: 1},
  {name: "Blog", description: "Solo puede editar el blog.", active: 1},
  {name: "Galeria", description: "Puedes agregar, editar o eliminar la galeria.", active: 1},
  {name: "Videos", description: "Se puede agregar, editar o eliminar un videos.", active: 1},
  {name: "Menu", description: "Podras modificar los nombres y links del menu principal.", active: 1}
])
Section.create!([
  {title: "Arte Urbano", description: "<p><img alt=\"\" src=\"http://s3.amazonaws.com/comex_urbano/Users/Waldix/Documents/arto/comex_urbano/public/ckeditor_assets/pictures/1/content_arte-urbano.jpg\" style=\"height:376px; width:895px\" /></p>\r\n\r\n<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\r\n", category_id: 1, active: 1, main_banner_file_name: "videos-section.jpg", main_banner_content_type: "image/jpeg", main_banner_file_size: 213749, main_banner_updated_at: "2014-07-26 07:08:15", secondary_banner_file_name: nil, secondary_banner_content_type: nil, secondary_banner_file_size: nil, secondary_banner_updated_at: nil},
  {title: "Arte Moderno", description: "<p>n,mnnnm</p>\r\n", category_id: 2, active: 1, main_banner_file_name: "Comex_urbano_Galería_Editable.jpg", main_banner_content_type: "image/jpeg", main_banner_file_size: 228869, main_banner_updated_at: "2014-07-26 07:22:36", secondary_banner_file_name: nil, secondary_banner_content_type: nil, secondary_banner_file_size: nil, secondary_banner_updated_at: nil},
  {title: "Arte Realista", description: "<p>Lorem Ipsum&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto.</p>\r\n", category_id: 3, active: 1, main_banner_file_name: "blog-section.jpg", main_banner_content_type: "image/jpeg", main_banner_file_size: 76119, main_banner_updated_at: "2014-07-26 07:30:55", secondary_banner_file_name: nil, secondary_banner_content_type: nil, secondary_banner_file_size: nil, secondary_banner_updated_at: nil}
])
Video.create!([
  {name: "Video de Arte Urbano", description: "texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias ", content: "<p>No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como&nbsp;</p>\r\n", link: "http://www.youtube.com/watch?v=uHFbIBLTYtE", visit: nil, active: 1, section_id: 3, posted_at: "2014-07-28", image: nil},
  {name: "Video de Arte Moderno", description: "contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene ", content: "<p>&nbsp;puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucion</p>\r\n", link: "http://www.youtube.com/watch?v=9tZpmHPl2hk", visit: nil, active: 1, section_id: 3, posted_at: "2014-07-24", image: nil},
  {name: "Video de Arte Urbano Grafitti", description: "El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras", content: "<p>de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum</p>\r\n", link: "http://www.youtube.com/watch?v=jom8ySBhj44", visit: nil, active: 1, section_id: 3, posted_at: "2013-07-18", image: nil},
  {name: "VIdeo de Arte Tigre", description: "Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en algu", content: "<p>Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;li</p>\r\n", link: "http://www.youtube.com/watch?v=PXQrUpB0Jq8", visit: nil, active: 1, section_id: 3, posted_at: "2012-07-27", image: nil}
])

