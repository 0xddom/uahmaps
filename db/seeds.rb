# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

points = PointOfInterest.create([
                                  {
                                    name: 'Escuela Politécnica Superior',
                                    # 40.513042, -3.348749,
                                    location: 'POINT(40.513042 -3.348749)',
                                    description: 'Bienvenidos a la Escuela Politécnica Superior ubicada en el Campus Científico-Tecnológico de la Universidad de Alcalá. En ella se imparte docencia en los niveles de Grado, Máster y Doctorado, en las ramas de Ingeniería Informática, Ingeniería Industrial e Ingeniería de Telecomunicación. La Escuela Politécnica Superior de la Universidad de Alcalá ofrece, entre otras, las siguientes ventajas: docencia bilingüe en la mayoría de los grados, convenios internacionales con algunas de las mejores universidades del mundo y facilidad para la realización de prácticas externas, gracias a los convenios existentes con más de 300 empresas.'
                                  },
																	{
																		name: 'Escuela de Arquitectura',
																		location: 'POINT(40.480688 -3.358106)',
																		description: 'Bienvenidos a la Escuela de Arquitectura ubicada en el Campus Histórico donde se cursan los estudios de, Grado en Fundamentos de Arquitectura y Urbanismo y el Máster habilitante en Arquitectura y en el Campus de Guadalajara el Grado en Ciencia y Tecnología de la Edificación. Contamos con grupos reducidos y un contacto personalizado entre profesores y alumnos. Seguimiento continuo del trabajo de los estudiantes y metodología activa y programas de emprendimiento y "spin-off" en colaboración con las empresas del entorno.'
																	},
																	{
																		name: 'Facultad de Biología, Ciencias Ambientales y Química',
																		location: 'POINT(40.505818 -3.336814)',
																		description: ' Bienvenidos a la Facultad de Biología, Ciencias Ambientales y Química ubicada en el Campus Científico-Tecnológico de la Universidad de Alcalá. En ella se cursan los estudios de Grado en Biología y Biología Sanitaria, Grado en Ciencias Ambientales y Grado en Química. Nuestros estudios se acompañan con prácticas para conseguir la plena inserción laboral de los estudiantes y para ello la Facultad tiene firmados convenios con prestigiosas empresas e instituciones. Modernas instalaciones y en continua renovación han contribuido a que las titulaciones impartidas en el centro aparezcan en las mejores posiciones en diversos rankings que miden la calidad de las mismas. '
																	},
																	{
																		name: 'Facultad de Ciencias Ambientales UAH',
																		location: 'POINT(40.510133 -3.345257)',
																		description: ' Bienvenidos a la Facultad de Biología, Ciencias Ambientales y Química ubicada en el Campus Científico-Tecnológico de la Universidad de Alcalá. En ella se cursan los estudios de Grado en Biología y Biología Sanitaria, Grado en Ciencias Ambientales y Grado en Química. Nuestros estudios se acompañan con prácticas para conseguir la plena inserción laboral de los estudiantes y para ello la Facultad tiene firmados convenios con prestigiosas empresas e instituciones. Modernas instalaciones y en continua renovación han contribuido a que las titulaciones impartidas en el centro aparezcan en las mejores posiciones en diversos rankings que miden la calidad de las mismas. '
																	},
																	{
																		name: 'Facultad de Ciencias Económicas, Empresariales y Turismo',
																		location: 'POINT(40.481147 -3.366829)',
																		description: ' Bienvenidos a la Facultad de Ciencias Económicas, Empresariales y Turismo ubicada en el Campus Histórico y en el Campus de Guadalajara de la Universidad de Alcalá. En ella se cursan los estudios de Grado relacionados con las áreas de Administración y Dirección de Empresas, Economía y Turismo y los dobles Grados en Derecho y Administración y Dirección de Empresas, y el Doble Grado en Turismo y Administración y Dirección de Empresas adaptados al marco europeo e internacional. Nuestros estudios se acompañan con prácticas para conseguir la plena inserción laboral de los estudiantes fomentando unas excelentes relaciones entre el ámbito académico y el tejido empresarial. En los últimos años, la progresiva internacionalización de la Facultad con convenios internacionales ha hecho posible también la posibilidad de hacer prácticas en el extranjero.'
																	},
																	{
																		name: 'Facultad de Derecho',
																		location: 'POINT(40.485216 -3.36234)',
																		description: 'Bienvenidos a la Facultad de Derecho ubicada en el Campus Histórico de la Universidad de Alcalá. En ella se cursan los estudios de Grado en Derecho y el Doble Grado en Derecho y Administración y Dirección de Empresas, complementados con estudios de posgrado y máster que habilitan para el ejercicio de la profesión. Formamos profesionales y para ello nuestros estudios se acompañan con prácticas para conseguir la plena inserción laboral de los estudiantes fomentando unas excelentes relaciones entre el ámbito académico y el tejido empresarial. En los últimos años, la progresiva internacionalización de la Facultad ha hecho posible la alianza con otras universidades de prestigio.'
																	},
																	{
																		name: 'Facultad de Educación',
																		location: 'POINT(40.637668 -3.169749)',
																		description: 'Bienvenidos a la Facultad de Educación ubicada en el Campus de Guadalajara de la Universidad de Alcalá. En ella se imparten los estudios de Grado en Magisterio en Educación Primaria y Educación Infantil además del Doble Grado en Humanidades y Magisterio en Educación Primaria. La Facultad de Educación es una institución heredera de un centenario centro educativo dedicado a la formación del profesorado. En los últimos años ha apostado por la oferta bilingüe para dar respuesta a las nuevas necesidades demandadas por nuestros centros educativos. Formamos profesionales y para ello nuestros estudios se acompañan con prácticas para conseguir la plena inserción laboral de los estudiantes.'
																	},
																	{
																		name: 'Facultad de Farmacia',
																		location: 'POINT(40.510042 -3.342399)',
																		description: 'Bienvenidos a la Facultad de Farmacia ubicada en el Campus Científico-Tecnológico de la Universidad de Alcalá. En ella se imparte docencia en los niveles de Grado, Máster y Doctorado. Nuestros estudios se acompañan con prácticas para conseguir la plena inserción laboral de los estudiantes. Con una excelente dotación en laboratorios y en continua renovación se ha conseguido posicionar la titulación impartida en las mejores posiciones de diversos rankings que miden la calidad de las mismas.'
																	},
																	{
																		name: 'Facultad de Filosofía y Letras',
																		location: 'POINT(40.481262 -3.363545)',
																		description: 'Bienvenidos a la Facultad de Filosofía y Letras ubicada en el Campus Histórico de la Universidad de Alcalá. En ella se cursa estudios de Comunicación Audiovisual, Estudios Ingleses, Estudios Hispánicos, Historia, Humanidades, Lenguas Modernas y Traducción y el Doble Grado en Humanidades y Magisterio de Educación Primaria. Nuestras titulaciones están posicionadas entre las mejores de España, según los rankings de calidad del diario “El Mundo” y de la Fundación BBVA-IVIE. Referente mundial en la Enseñanza de Español como Lengua Extranjera, proximidad y permanente comunicación con el profesorado, convenios con las mejores universidades de Europa y América, prácticas en empresas e instituciones de prestigio y un entorno privilegiado son nuestras señas de identidad.'
																	},
																	{
																		name: 'Facultad de Medicina y Ciencias de la Salud',
																		location: 'POINT(40.511815 -3.344785)',
																		description: 'Bienvenidos a la Facultad de Medicina y Ciencias de la Salud ubicada en el Campus Científico-Tecnológico y en el Campus de Guadalajara de la Universidad de Alcalá. En ella se cursan los estudios de Grado en Medicina, Grado en Enfermería, Grado en Fisioterapia y Grado en Ciencias de la Actividad Física y del Deporte. Entre las 5 mejores de España en resultados de MIR y EIR, se encuentra a la vanguardia en investigación experimental y biomédica. Ofrece la ventaja de hacer la práctica clínica en cuatro hospitales universitarios de referencia y para nuestros estudiantes de CCAFYDE disponemos de instalaciones al aire libre y un pabellón deportivo cubierto, concebido como aulas para la enseñanza de la práctica deportiva.'
																	},
																	{
																		name: 'Facultad de Enfermería y Fisioterapia',
																		location: 'POINT(40.5127959 -3.3442088)',
																		description: 'Bienvenidos a la Facultad de Medicina y Ciencias de la Salud ubicada en el Campus Científico-Tecnológico y en el Campus de Guadalajara de la Universidad de Alcalá. En ella se cursan los estudios de Grado en Medicina, Grado en Enfermería, Grado en Fisioterapia y Grado en Ciencias de la Actividad Física y del Deporte. Entre las 5 mejores de España en resultados de MIR y EIR, se encuentra a la vanguardia en investigación experimental y biomédica. Ofrece la ventaja de hacer la práctica clínica en cuatro hospitales universitarios de referencia y para nuestros estudiantes de CCAFYDE disponemos de instalaciones al aire libre y un pabellón deportivo cubierto, concebido como aulas para la enseñanza de la práctica deportiva.'
																	}
                                ])
