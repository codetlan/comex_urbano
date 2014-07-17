ActsAsTaggableOn::Tag.create!([
  {name: "waldix"},
  {name: "didier"},
  {name: "prueba"},
  {name: "uno"}
])
ActsAsTaggableOn::Tagging.create!([
  {tag_id: 1, taggable_id: 1, taggable_type: "Post", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 2, taggable_id: 1, taggable_type: "Post", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 3, taggable_id: 1, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"},
  {tag_id: 4, taggable_id: 1, taggable_type: "Video", tagger_id: nil, tagger_type: nil, context: "tags"}
])
User.create!([
  {email: "comex@demo.com", :password => 'comex123', :password_confirmation => 'comex123'}
])
About.create!([
  {name: "¿QUÉ ES COMEX URBANO?", description: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis adipiscing nibh, ut tincidunt quam. Praesent ut congue enim. Nulla sed ultrices nunc. Nunc pharetra tristique magna, id tincidunt nisl venenatis at. Aliquam mollis diam vel velit interdum faucibus. Aenean purus nulla, pharetra vel molestie quis, pretium a nulla. Donec non urna et nulla iaculis euismod et id nulla.</p>"},
  {name: "¿DE DÓNDE SURGE COMEX URBANO?", description: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis adipiscing nibh, ut tincidunt quam. Praesent ut congue enim. Nulla sed ultrices nunc. Nunc pharetra tristique magna, id tincidunt nisl venenatis at. Aliquam mollis diam vel velit interdum faucibus. Aenean purus nulla, pharetra vel molestie quis, pretium a nulla. Donec non urna et nulla iaculis euismod et id nulla.</p>"}
])
Banner.create!([
  {name: nil, description: nil, active: nil, photo_file_name: "placead1.jpg", photo_content_type: "image/jpeg", photo_file_size: 57825, photo_updated_at: "2014-07-17 01:40:21", landing_page_id: nil},
  {name: nil, description: nil, active: nil, photo_file_name: "placead2.jpg", photo_content_type: "image/jpeg", photo_file_size: 70431, photo_updated_at: "2014-07-17 01:40:23", landing_page_id: nil}
])
Category.create!([
  {name: "Videos", link: "videos", position: 1, active: 1},
  {name: "Galería", link: "photos", position: 2, active: 1},
  {name: "Blog", link: "posts", position: 3, active: 1},
  {name: "¿Qué es urbano?", link: "abouts", position: 4, active: 1}
])
Image.create!([
  {name: "Festival Internacional Comex Urbano", description: "FICU es un festival que da apertura al arte urbano y digital en México.", link: "http://www.google.com", photo_file_name: "featured-image.jpg", photo_content_type: "image/jpeg", photo_file_size: 511217, photo_updated_at: "2014-07-16 23:04:03", landing_page_id: 1},
  {name: "Festival Internacional Comex Urbano", description: "FICU es un festival que da apertura al arte urbano y digital en México.", link: "http://www.google.com", photo_file_name: "featured-image2.jpg", photo_content_type: "image/jpeg", photo_file_size: 358088, photo_updated_at: "2014-07-16 23:04:04", landing_page_id: 1}
])
LandingPage.create!([
  {facebook: "http://www.facebook.com", twitter: "http://www.twitter.com", youtube: "http://www.youtube.com", vimeo: "http://www.vimeo.com", copyright: "Copyright 2014 Consorcio Comex, S.A. de C.V", terms: "Términos y Condiciones / Aviso de Privacidad / Soporte Técnico"}
])
Photo.create!([
  {name: "Arte", description: "Es una cosa impresionante", visit: 1, active: 1, image_file_name: "luciano_ushuaia.jpg", image_content_type: "image/jpeg", image_file_size: 193958, image_updated_at: "2014-06-18 06:31:36", section_id: nil, posted_at: nil}
])
Post.create!([
  {title: "Festival Internacional Comex Urbano", introduction: "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen.", description: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis adipiscing nibh, ut tincidunt quam. Praesent ut congue enim. Nulla sed ultrices nunc. Nunc pharetra tristique magna, id tincidunt nisl venenatis at. Aliquam mollis diam vel velit interdum faucibus. Aenean purus nulla, pharetra vel molestie quis, pretium a nulla. Donec non urna et nulla iaculis euismod et id nulla.</p>\r\n\r\n<p><img alt=\"\" src=\"http://s3.amazonaws.com/comex_urbano/Users/Waldix/Documents/arto/comex_urbano/public/ckeditor_assets/pictures/2/content_arte-urbano.jpg\" style=\"height:349px; width:800px\" /></p>\r\n\r\n<p>Vivamus condimentum tempor accumsan. Duis eget elit imperdiet, elementum quam at, interdum neque. In condimentum est in lacinia volutpat. In a sollicitudin nisi, a volutpat nunc. Cras sit amet orci congue, fermentum nisl vel, posuere velit. Suspendisse a orci ac mi convallis rhoncus et quis odio. Nunc at leo sem. Mauris non tristique mi.</p>\r\n\r\n<p>Nam consectetur auctor mi ut bibendum. Donec elementum mi libero, ut vestibulum dolor lobortis quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam sollicitudin sem eu sem tristique convallis. Proin quis risus eleifend, ornare urna in, eleifend tortor. Aliquam quis semper arcu. Quisque facilisis leo ut eros suscipit laoreet. Integer pretium urna eget tristique ullamcorper. Mauris aliquet vitae tortor eu dignissim. Suspendisse volutpat id neque et pretium. Sed dapibus, velit ut cursus faucibus, purus dolor tempor mauris, varius dictum risus tortor cursus tortor.</p>\r\n", active: 1, image_file_name: "post3.jpg", image_content_type: "image/jpeg", image_file_size: 22161, image_updated_at: "2014-07-17 01:36:44"},
  {title: "FESTIVAL INTERNACIONAL COMEX URBANO", introduction: "No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.", description: "sdsfdsfsfsffsf", active: 1, image_file_name: "post6.jpg", image_content_type: "image/jpeg", image_file_size: 18863, image_updated_at: "2014-07-17 01:37:30"}
])
Role.create!([
  {name: "admin", description: "puedes hacer todo", active: 1}
])
Section.create!([
  {title: "Arte Urbano", description: "<p><img alt=\"\" src=\"http://s3.amazonaws.com/comex_urbano/Users/Waldix/Documents/arto/comex_urbano/public/ckeditor_assets/pictures/1/content_arte-urbano.jpg\" style=\"height:376px; width:895px\" /></p>\r\n\r\n<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\r\n", category_id: 1, active: 1, main_banner_file_name: "banner_principal.png", main_banner_content_type: "image/png", main_banner_file_size: 650965, main_banner_updated_at: "2014-06-19 00:54:34", secondary_banner_file_name: "banner_secundario.png", secondary_banner_content_type: "image/png", secondary_banner_file_size: 563369, secondary_banner_updated_at: "2014-06-19 00:54:36"}
])
Video.create!([
  {name: "Festival Internacional Comex Urbano", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", content: "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis adipiscing nibh, ut tincidunt quam. Praesent ut congue enim. Nulla sed ultrices nunc. Nunc pharetra tristique magna, id tincidunt nisl venenatis at. Aliquam mollis diam vel velit interdum faucibus. Aenean purus nulla, pharetra vel molestie quis, pretium a nulla. Donec non urna et nulla iaculis euismod et id nulla.</p>\r\n\r\n<p><img alt=\"\" src=\"http://s3.amazonaws.com/comex_urbano/Users/Waldix/Documents/arto/comex_urbano/public/ckeditor_assets/pictures/1/content_post-show-1.jpg\" style=\"height:466px; width:878px\" /></p>\r\n\r\n<p>Vivamus condimentum tempor accumsan. Duis eget elit imperdiet, elementum quam at, interdum neque. In condimentum est in lacinia volutpat. In a sollicitudin nisi, a volutpat nunc. Cras sit amet orci congue, fermentum nisl vel, posuere velit. Suspendisse a orci ac mi convallis rhoncus et quis odio. Nunc at leo sem. Mauris non tristique mi.</p>\r\n\r\n<p>Nam consectetur auctor mi ut bibendum. Donec elementum mi libero, ut vestibulum dolor lobortis quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam sollicitudin sem eu sem tristique convallis. Proin quis risus eleifend, ornare urna in, eleifend tortor. Aliquam quis semper arcu. Quisque facilisis leo ut eros suscipit laoreet. Integer pretium urna eget tristique ullamcorper. Mauris aliquet vitae tortor eu dignissim. Suspendisse volutpat id neque et pretium. Sed dapibus, velit ut cursus faucibus, purus dolor tempor mauris, varius dictum risus tortor cursus tortor.</p>\r\n", link: "https://www.youtube.com/watch?v=WO5X9ZUzqXM", visit: nil, active: 1, section_id: 1, posted_at: nil},
  {name: "Festival Internacional Comex Urbano", description: "FICU es un festival que da oportunidad al arte urbano y digital", content: "", link: "https://www.youtube.com/watch?v=tSWWA8NA5g8", visit: nil, active: 1, section_id: 1, posted_at: nil},
  {name: "Festival Internacional Comex Urbano", description: "FICU es un festival que da oportunidad al arte urbano y digital en M&eacute;xi", content: "", link: "https://www.youtube.com/watch?v=GRdF8u_wNhk", visit: nil, active: 1, section_id: 1, posted_at: nil}
])
