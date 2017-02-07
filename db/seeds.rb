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
                                    description: 'La Escuela Politécnica Superior de la Universidad de Alcalá ofrece, entre otras, las siguientes ventajas: docencia bilingüe en la mayoría de los grados, convenios internacionales con algunas de las mejores universidades del mundo y facilidad para la realización de prácticas externas, gracias a los convenios existentes con más de 300 empresas.'
                                  }
                                ])
