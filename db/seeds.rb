User.create!([
  {email: "comex@demo.com", :password => 'comex123', :password_confirmation => 'comex123'}
])

Banner.create!([
  {name: 'Arte Urbano', description: 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.', active: 1, photo_file_name: "banner1.png", photo_content_type: "image/png", photo_file_size: 1627015, photo_updated_at: "2014-06-27 16:42:58", landing_page_id: 1},
  {name: 'Arte Contemporaneo', description: 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto.', active: 1, photo_file_name: "banner_principal.png", photo_content_type: "image/png", photo_file_size: 650965, photo_updated_at: "2014-06-27 16:43:07", landing_page_id: 1}
])
Category.create!([
  {name: "Videos", link: "videos", position: 1, active: 1},
  {name: "Galeria", link: "photos", position: 2, active: 1},
  {name: "Blog", link: "posts", position: 3, active: 1},
  {name: "¿Ques es urbano?", link: "about", position: 4, active: 1}
])
LandingPage.create!([
  {facebook: "http://www.facebook.com", twitter: "http://www.twitter.com", youtube: "http://www.youtube.com", vimeo: "http://www.vimeo.com", copyright: "Copyright 2014 Consorcio Comex, S.A. de C.V", terms: "Aviso de Privacidad"}
])
Photo.create!([
  {name: "Arte", description: "Es una cosa impresionante", visit: 1, active: 1, image_file_name: "luciano_ushuaia.jpg", image_content_type: "image/jpeg", image_file_size: 193958, image_updated_at: "2014-06-18 06:31:36"},
])
Post.create!([
  {title: "Arte Urbano", introduction: "slñsfñkfksñfkñ", description: "sksñkñskñsksñlskfñsfkñsklñsfkñlsfklslkñksflñksñ", active: 1, image_file_name: "banner_principal.png", image_content_type: "image/png", image_file_size: 650965, image_updated_at: "2014-06-19 05:31:40"}
])
Role.create!([
  {name: "admin", description: "puedes hacer todo", active: 1}
])
Section.create!([
  {title: "Arte Urbano", description: "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.", active: 1, main_banner_file_name: "banner_principal.png", main_banner_content_type: "image/png", main_banner_file_size: 650965, main_banner_updated_at: "2014-06-19 00:54:34", secondary_banner_file_name: "banner_secundario.png", secondary_banner_content_type: "image/png", secondary_banner_file_size: 563369, secondary_banner_updated_at: "2014-06-19 00:54:36"}
])
Video.create!([
  {name: "Arte Urbano", description: "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas \"Letraset\", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.", link: "https://www.youtube.com/watch?v=WO5X9ZUzqXM", visit: nil, active: 1},
  {name: "Arte Contemporaneo", description: "Es muy bello", link: "https://www.youtube.com/watch?v=tSWWA8NA5g8", visit: nil, active: 1},
  {name: "Arte Visual", description: "nombree", link: "https://www.youtube.com/watch?v=GRdF8u_wNhk", visit: nil, active: 1}
])
