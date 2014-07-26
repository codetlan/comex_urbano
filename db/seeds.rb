ActsAsTaggableOn::Tag.create!([
  {name: "arte"},
  {name: "arto"},
  {name: "video1"},
  {name: "tigre"},
  {name: "moderno"},
  {name: "graffiti"},
  {name: "urbano"},
  {name: "música"},
  {name: "fotografia"},
  {name: "festival"},
  {name: "art"},
  {name: "street"},
  {name: "post1"},
  {name: "futbol"},
  {name: "aguila"},
  {name: "artesanal"},
  {name: "cultura"}
])
ActsAsTaggableOn::Tagging.create!([
  {tag_id: 1, taggable_id: 1, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 1, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 3, taggable_id: 1, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 4, taggable_id: 2, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 5, taggable_id: 2, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 2, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 6, taggable_id: 3, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 3, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 7, taggable_id: 3, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 3, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 8, taggable_id: 4, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 4, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 9, taggable_id: 1, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 1, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 10, taggable_id: 1, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 1, taggable_id: 2, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 7, taggable_id: 2, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 11, taggable_id: 3, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 12, taggable_id: 3, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 13, taggable_id: 1, taggable_type: "Post", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 10, taggable_id: 1, taggable_type: "Post", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 1, taggable_type: "Post", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 14, taggable_id: 1, taggable_type: "Post", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 15, taggable_id: 4, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 16, taggable_id: 4, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 4, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 17, taggable_id: 4, taggable_type: "Photo", tagger_id: nil, tagger_type: nil, context: "tags"}
])
User.create!([
                 {email: "comex@demo.com", :password => 'comex123', :password_confirmation => 'comex123'}
             ])
About.create!([
  {name: "¿QUÉ ES COMEX URBANO?", description: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis adipiscing nibh, ut tincidunt quam. Praesent ut congue enim. Nulla sed ultrices nunc. Nunc pharetra tristique magna, id tincidunt nisl venenatis at. Aliquam mollis diam vel velit interdum faucibus. Aenean purus nulla, pharetra vel molestie quis, pretium a nulla. Donec non urna et nulla iaculis euismod et id nulla.</p>"},
  {name: "¿DE DÓNDE SURGE COMEX URBANO?", description: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis adipiscing nibh, ut tincidunt quam. Praesent ut congue enim. Nulla sed ultrices nunc. Nunc pharetra tristique magna, id tincidunt nisl venenatis at. Aliquam mollis diam vel velit interdum faucibus. Aenean purus nulla, pharetra vel molestie quis, pretium a nulla. Donec non urna et nulla iaculis euismod et id nulla.</p>"}
])
Banner.create!([
  {name: nil, description: nil, active: nil, photo_file_name: "placead1.jpg", photo_content_type: "image/jpeg", photo_file_size: 57825, photo_updated_at: "2014-07-26 07:37:24", landing_page_id: nil},
  {name: nil, description: nil, active: nil, photo_file_name: "placead2.jpg", photo_content_type: "image/jpeg", photo_file_size: 70431, photo_updated_at: "2014-07-26 07:37:30", landing_page_id: nil}
])
Category.create!([
  {name: "Videos", link: "videos", position: 1, active: 1},
  {name: "Galería", link: "photos", position: 2, active: 1},
  {name: "Blog", link: "posts", position: 3, active: 1},
  {name: "¿Qué es urbano?", link: "abouts", position: 4, active: 1}
])
LandingPage.create!([
  {facebook: "http://www.facebook.com", twitter: "http://www.twitter.com", youtube: "http://www.youtube.com", vimeo: "http://www.vimeo.com", copyright: "Copyright 2014 Consorcio Comex, S.A. de C.V", terms: "Términos y Condiciones / Aviso de Privacidad / Soporte Técnico"}
])
Photo.create!([
  {name: "Festival de Fotografia", description: "<p>hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de au</p>\r\n", visit: 0, active: 1, image_file_name: "1.jpg", image_content_type: "image/jpeg", image_file_size: 75347, image_updated_at: "2014-07-26 07:20:53", section_id: 2, posted_at: "2014-07-24"},
  {name: "Imagen verde", description: "<p>lsfflksjfskljfskljskfjklsjslfsjljsf</p>\r\n", visit: 0, active: 1, image_file_name: "color.jpg", image_content_type: "image/jpeg", image_file_size: 13620, image_updated_at: "2014-07-26 07:24:18", section_id: 2, posted_at: "2014-07-24"},
  {name: "hjkjjk", description: "<p>ljkjjlkljkljk</p>\r\n", visit: 0, active: 1, image_file_name: "featured-image.jpg", image_content_type: "image/jpeg", image_file_size: 511217, image_updated_at: "2014-07-26 07:25:48", section_id: 2, posted_at: "2014-07-23"},
  {name: "Festival Artesanal", description: "<p>pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras&nbsp;</p>\r\n", visit: 0, active: 1, image_file_name: "3.jpg", image_content_type: "image/jpeg", image_file_size: 95033, image_updated_at: "2014-07-26 07:32:44", section_id: 2, posted_at: "2014-07-16"}
])
Post.create!([
  {title: "Festival Internacion Comex Urbano", introduction: "Al contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-SHay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras prove", description: "<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras prove</p>\r\n\r\n<p><img alt=\"\" src=\"http://s3.amazonaws.com/comex_urbano/app/public/ckeditor_assets/pictures/1/content_arte-urbano.jpg\" style=\"height:349px; width:800px\" /></p>\r\n", active: 1, image_file_name: "post2.jpg", image_content_type: "image/jpeg", image_file_size: 24251, image_updated_at: "2014-07-26 07:30:17", section_id: 3, posted_at: "2014-07-07"}
])
Publication.create!([
  {content: "<p>El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lore</p>\r\nFestival Internacional de Urbanodesconocido usó una galería de textos y los mezcló tigre moderno arte", published_id: 2, published_type: "Video"},
  {content: "<p>&nbsp;Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenie</p>\r\nFestival Internacional de Grafittis variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras graffiti arte urbano arto", published_id: 3, published_type: "Video"},
  {content: "Festival de Fotografia<p>hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de au</p>\r\narto fotografia festival", published_id: 1, published_type: "Video"},
  {content: "Festival de Fotografia<p>hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de au</p>\r\narto fotografia festival", published_id: 1, published_type: "Photo"},
  {content: "Imagen verde<p>lsfflksjfskljfskljskfjklsjslfsjljsf</p>\r\narte urbano", published_id: 2, published_type: "Photo"},
  {content: "hjkjjk<p>ljkjjlkljkljk</p>\r\nart street", published_id: 3, published_type: "Photo"},
  {content: "Festival Internacion Comex UrbanoAl contrario del pensamiento popular, el texto de Lorem Ipsum no es simplemente texto aleatorio. Tiene sus raices en una pieza cl´sica de la literatura del Latin, que data del año 45 antes de Cristo, haciendo que este adquiera mas de 2000 años de antiguedad. Richard McClintock, un profesor de Latin de la Universidad de Hampden-SHay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras aleatorias que no parecen ni un poco creíbles. Si vas a utilizar un pasaje de Lorem Ipsum, necesitás estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el único generador verdadero (válido) en la Internet. Usa un diccionario de mas de 200 palabras prove<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras prove</p>\r\n\r\n<p><img alt=\"\" src=\"http://s3.amazonaws.com/comex_urbano/app/public/ckeditor_assets/pictures/1/content_arte-urbano.jpg\" style=\"height:349px; width:800px\" /></p>\r\npost1 festival arto futbol", published_id: 1, published_type: "Post"},
  {content: "Festival Artesanal<p>pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras&nbsp;</p>\r\naguila artesanal arto cultura", published_id: 4, published_type: "Photo"},
  {content: "Festival Artesanal<p>pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras&nbsp;</p>\r\narto aguila artesanal cultura", published_id: 4, published_type: "Video"}
])
Section.create!([
  {title: "Arte Urbano", description: "<p><img alt=\"\" src=\"http://s3.amazonaws.com/comex_urbano/Users/Waldix/Documents/arto/comex_urbano/public/ckeditor_assets/pictures/1/content_arte-urbano.jpg\" style=\"height:376px; width:895px\" /></p>\r\n\r\n<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\r\n", category_id: 1, active: 1, main_banner_file_name: "videos-section.jpg", main_banner_content_type: "image/jpeg", main_banner_file_size: 213749, main_banner_updated_at: "2014-07-26 07:08:15", secondary_banner_file_name: nil, secondary_banner_content_type: nil, secondary_banner_file_size: nil, secondary_banner_updated_at: nil},
  {title: "Arte Moderno", description: "<p>n,mnnnm</p>\r\n", category_id: 2, active: 1, main_banner_file_name: "Comex_urbano_Galería_Editable.jpg", main_banner_content_type: "image/jpeg", main_banner_file_size: 228869, main_banner_updated_at: "2014-07-26 07:22:36", secondary_banner_file_name: nil, secondary_banner_content_type: nil, secondary_banner_file_size: nil, secondary_banner_updated_at: nil},
  {title: "Arte Realista", description: "<p>Lorem Ipsum&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto.</p>\r\n", category_id: 3, active: 1, main_banner_file_name: "blog-section.jpg", main_banner_content_type: "image/jpeg", main_banner_file_size: 76119, main_banner_updated_at: "2014-07-26 07:30:55", secondary_banner_file_name: nil, secondary_banner_content_type: nil, secondary_banner_file_size: nil, secondary_banner_updated_at: nil}
])
Video.create!([
  {name: "Festival Internacional de Arte", description: "Lorem Ipsum es simplemente el texto de relleno. ", content: "<p>Lorem Ipsum&nbsp;es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen.&nbsp;</p>\r\n", link: "https://www.youtube.com/watch?v=9tZpmHPl2hk", visit: nil, active: 1, section_id: 1, posted_at: "2014-07-24"},
  {name: "Festival Internacional de Urbano", description: "desconocido usó una galería de textos y los mezcló ", content: "<p>El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aqu&iacute;, contenido aqu&iacute;&quot;. Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lore</p>\r\n", link: "https://www.youtube.com/watch?v=PXQrUpB0Jq8", visit: nil, active: 1, section_id: 1, posted_at: "2013-02-13"},
  {name: "Festival Internacional de Grafitti", description: "s variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayoría sufrió alteraciones en alguna manera, ya sea porque se le agregó humor, o palabras ", content: "<p>&nbsp;Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenie</p>\r\n", link: "https://www.youtube.com/watch?v=3LxBb2jxRWU", visit: nil, active: 1, section_id: 1, posted_at: "2012-10-18"},
  {name: "Ydasfdafa", description: "dfarafdsa<d", content: "", link: "https://www.youtube.com/watch?v=V2fpgpanZAw", visit: nil, active: 1, section_id: 1, posted_at: "2013-12-03"}
])
