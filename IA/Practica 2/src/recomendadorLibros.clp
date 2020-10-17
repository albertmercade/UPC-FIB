; Sun Dec 15 21:01:20 CET 2019
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot nombreGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot generosSimilares
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write))
	(single-slot idLibro
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot hasManyReviews
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nPag
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot goodReview
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot sexo
		(type SYMBOL)
		(allowed-values male female)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gradoRecomendacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot idGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot psicologico
		(type SYMBOL)
		(allowed-values A B C D)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot terminal
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot autoresSimilares
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write))
	(single-slot curable
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot url
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot idAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(multislot generosRecomendados
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot rangoEdad
		(type SYMBOL)
		(allowed-values Infantil Juvenil Adulto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot publicacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Libro
	(is-a USER)
	(role concrete)
	(single-slot hasManyReviews
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nPag
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot goodReview
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot url
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot generos
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot idLibro
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot autor
		(type INSTANCE)
;+		(allowed-classes Autor)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot publicacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(single-slot nombreGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot generosSimilares
		(type INSTANCE)
;+		(allowed-classes Genero)
		(create-accessor read-write))
	(single-slot idGenero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Autor
	(is-a USER)
	(role concrete)
	(single-slot sexo
		(type SYMBOL)
		(allowed-values male female)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot idAutor
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot autoresSimilares
		(type INSTANCE)
;+		(allowed-classes Autor)
		(create-accessor read-write)))

(defclass Perfil
	(is-a USER)
	(role concrete)
	(single-slot rangoEdad
		(type SYMBOL)
		(allowed-values Infantil Juvenil Adulto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot psicologico
		(type SYMBOL)
		(allowed-values A B C D)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot generosRecomendados
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Recomendacion
	(is-a USER)
	(role concrete)
	(single-slot libro
		(type INSTANCE)
;+		(allowed-classes Libro)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gradoRecomendacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write)))

(definstances instancies
	([Book_0] of Libro
	 (autor [Author_0])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "0")
	 (nPag 465)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/2429135.The_Girl_with_the_Dragon_Tattoo")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Girl with the Dragon Tattoo"))

	([Book_1] of Libro
	 (autor [Author_1])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "1")
	 (nPag 438)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/382975.The_Obscene_Bird_of_Night")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Obscene Bird of Night"))

	([Book_2] of Libro
	 (autor [Author_2])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "2")
	 (nPag 392)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7260188-mockingjay")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Mockingjay"))

	([Book_3] of Libro
	 (autor [Author_3])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "3")
	 (nPag 354)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/5130.Island")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Island"))

	([Book_4] of Libro
	 (autor [Author_4])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "4")
	 (nPag 109)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20927491-1-27")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "127 An ICoS Anthology"))

	([Book_5] of Libro
	 (autor [Author_5])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "5")
	 (nPag 171)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20803627-forget-me-not")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Forget Me Not"))

	([Book_6] of Libro
	 (autor [Author_6])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "6")
	 (nPag 688)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17305049-ethan")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Ethan"))

	([Book_7] of Libro
	 (autor [Author_7])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "7")
	 (nPag 320)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7059135-inside-out")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Inside Out"))

	([Book_8] of Libro
	 (autor [Author_8])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "8")
	 (nPag 315)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/104344.The_Gate_to_Women_s_Country")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Gate to Womens Country"))

	([Book_9] of Libro
	 (autor [Author_9])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "9")
	 (nPag 528)
	 (publicacion 1961)
	 (url "https://www.goodreads.com/book/show/350.Stranger_in_a_Strange_Land")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Stranger in a Strange Land"))

	([Book_10] of Libro
	 (autor [Author_10])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "10")
	 (nPag 326)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7095831-ship-breaker")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Ship Breaker"))

	([Book_11] of Libro
	 (autor [Author_11])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "11")
	 (nPag 149)
	 (publicacion 1967)
	 (url "https://www.goodreads.com/book/show/73654.Logan_s_Run")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Logans Run"))

	([Book_12] of Libro
	 (autor [Author_12])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "12")
	 (nPag 341)
	 (publicacion 1952)
	 (url "https://www.goodreads.com/book/show/9597.Player_Piano")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Player Piano"))

	([Book_13] of Libro
	 (autor [Author_13])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "13")
	 (nPag 629)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/218467.Lucifer_s_Hammer")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Lucifers Hammer"))

	([Book_14] of Libro
	 (autor [Author_14])
	 (generos
	     [Genres_4]
	     [Genres_8])
	 (idLibro "14")
	 (nPag 345)
	 (publicacion 1949)
	 (url "https://www.goodreads.com/book/show/93269.Earth_Abides")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Earth Abides"))

	([Book_15] of Libro
	 (autor [Author_15])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "15")
	 (nPag 268)
	 (publicacion 1963)
	 (url "https://www.goodreads.com/book/show/414895.Planet_of_the_Apes")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Planet of the Apes"))

	([Book_16] of Libro
	 (autor [Author_16])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "16")
	 (nPag 449)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/10567.Cell")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Cell"))

	([Book_17] of Libro
	 (autor [Author_17])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "17")
	 (nPag 219)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/14817.A_Scanner_Darkly")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Scanner Darkly"))

	([Book_18] of Libro
	 (autor [Author_18])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "18")
	 (nPag 400)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/2113260.Shades_of_Grey")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Shades of Grey"))

	([Book_19] of Libro
	 (autor [Author_19])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "19")
	 (nPag 499)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/827.The_Diamond_Age")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Diamond Age Or A Young Ladys Illustrated Primer"))

	([Book_20] of Libro
	 (autor [Author_20])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "20")
	 (nPag 488)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/10576365-the-darkest-minds")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Darkest Minds"))

	([Book_21] of Libro
	 (autor [Author_21])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "21")
	 (nPag 382)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/15839976-red-rising")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Red Rising"))

	([Book_22] of Libro
	 (autor [Author_22])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "22")
	 (nPag 317)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/11607.The_Running_Man")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Running Man"))

	([Book_23] of Libro
	 (autor [Author_23])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "23")
	 (nPag 182)
	 (publicacion 1950)
	 (url "https://www.goodreads.com/book/show/76778.The_Martian_Chronicles")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Martian Chronicles"))

	([Book_24] of Libro
	 (autor [Author_24])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "24")
	 (nPag 278)
	 (publicacion 1974)
	 (url "https://www.goodreads.com/book/show/21611.The_Forever_War")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Forever War"))

	([Book_25] of Libro
	 (autor [Author_25])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "25")
	 (nPag 956)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/11557.Swan_Song")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Swan Song"))

	([Book_26] of Libro
	 (autor [Author_26])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "26")
	 (nPag 296)
	 (publicacion 1957)
	 (url "https://www.goodreads.com/book/show/38180.On_the_Beach")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "On the Beach"))

	([Book_27] of Libro
	 (autor [Author_27])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "27")
	 (nPag 321)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/889284.The_Postman")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Postman"))

	([Book_28] of Libro
	 (autor [Author_28])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "28")
	 (nPag 336)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20170404-station-eleven")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Station Eleven"))

	([Book_29] of Libro
	 (autor [Author_29])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "29")
	 (nPag 323)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/38169.Alas_Babylon")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Alas Babylon"))

	([Book_30] of Libro
	 (autor [Author_30])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "30")
	 (nPag 200)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/826845.The_Chrysalids")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Chrysalids"))

	([Book_31] of Libro
	 (autor [Author_31])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "31")
	 (nPag 259)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/7137327-enclave")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Enclave"))

	([Book_32] of Libro
	 (autor [Author_32])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "32")
	 (nPag 345)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/52397.Parable_of_the_Sower")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Parable of the Sower"))

	([Book_33] of Libro
	 (autor [Author_33])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "33")
	 (nPag 308)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/169756.Feed")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Feed"))

	([Book_34] of Libro
	 (autor [Author_34])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "34")
	 (nPag 387)
	 (publicacion 1974)
	 (url "https://www.goodreads.com/book/show/13651.The_Dispossessed")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Dispossessed"))

	([Book_35] of Libro
	 (autor [Author_35])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "35")
	 (nPag 255)
	 (publicacion 1925)
	 (url "https://www.goodreads.com/book/show/17690.The_Trial")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Trial"))

	([Book_36] of Libro
	 (autor [Author_36])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "36")
	 (nPag 399)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/8235178-across-the-universe")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Across the Universe"))

	([Book_37] of Libro
	 (autor [Author_37])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "37")
	 (nPag 380)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/13376.The_House_of_the_Scorpion")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The House of the Scorpion"))

	([Book_38] of Libro
	 (autor [Author_38])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "38")
	 (nPag 1168)
	 (publicacion 1957)
	 (url "https://www.goodreads.com/book/show/662.Atlas_Shrugged")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Atlas Shrugged"))

	([Book_39] of Libro
	 (autor [Author_39])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "39")
	 (nPag 241)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/41913.The_Children_of_Men")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Children of Men"))

	([Book_40] of Libro
	 (autor [Author_40])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "40")
	 (nPag 271)
	 (publicacion 1984)
	 (url "https://www.goodreads.com/book/show/888628.Neuromancer")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Neuromancer"))

	([Book_41] of Libro
	 (autor [Author_41])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "41")
	 (nPag 335)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/164154.A_Canticle_for_Leibowitz")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Canticle for Leibowitz"))

	([Book_42] of Libro
	 (autor [Author_42])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "42")
	 (nPag 326)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/40495148-blindness")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Blindness"))

	([Book_43] of Libro
	 (autor [Author_43])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "43")
	 (nPag 255)
	 (publicacion 1921)
	 (url "https://www.goodreads.com/book/show/76171.We")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "We"))

	([Book_44] of Libro
	 (autor [Author_44])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "44")
	 (nPag 337)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/213753.Life_As_We_Knew_It")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Life As We Knew It"))

	([Book_45] of Libro
	 (autor [Author_45])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "45")
	 (nPag 617)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/57891.Battle_Royale")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Battle Royale"))

	([Book_46] of Libro
	 (autor [Author_46])
	 (generos
	     [Genres_5]
	     [Genres_4])
	 (idLibro "46")
	 (nPag 118)
	 (publicacion 1895)
	 (url "https://www.goodreads.com/book/show/2493.The_Time_Machine")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Time Machine"))

	([Book_47] of Libro
	 (autor [Author_47])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "47")
	 (nPag 509)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13453029-wool-omnibus")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Wool Omnibus"))

	([Book_48] of Libro
	 (autor [Author_48])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "48")
	 (nPag 342)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/8908.World_War_Z")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "World War Z An Oral History of the Zombie War"))

	([Book_49] of Libro
	 (autor [Author_49])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "49")
	 (nPag 389)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/46756.Oryx_and_Crake")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Oryx and Crake"))

	([Book_50] of Libro
	 (autor [Author_50])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "50")
	 (nPag 288)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/6334.Never_Let_Me_Go")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Never Let Me Go"))

	([Book_51] of Libro
	 (autor [Author_51])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "51")
	 (nPag 449)
	 (publicacion 1938)
	 (url "https://www.goodreads.com/book/show/17899948-rebecca")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Rebecca"))

	([Book_52] of Libro
	 (autor [Author_52])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "52")
	 (nPag 308)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6048530-finger-lickin-fifteen")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Finger Lickin Fifteen"))

	([Book_53] of Libro
	 (autor [Author_53])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "53")
	 (nPag 453)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/3720975-handle-with-care")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Handle with Care"))

	([Book_54] of Libro
	 (autor [Author_54])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "54")
	 (nPag 352)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/17204.The_Friday_Night_Knitting_Club")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Friday Night Knitting Club"))

	([Book_55] of Libro
	 (autor [Author_55])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "55")
	 (nPag 449)
	 (publicacion 1868)
	 (url "https://www.goodreads.com/book/show/1934.Little_Women")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Little Women"))

	([Book_56] of Libro
	 (autor [Author_56])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "56")
	 (nPag 294)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/556602.Sarah_s_Key")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Sarahs Key"))

	([Book_57] of Libro
	 (autor [Author_57])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "57")
	 (nPag 496)
	 (publicacion 1943)
	 (url "https://www.goodreads.com/book/show/14891.A_Tree_Grows_in_Brooklyn")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "A Tree Grows in Brooklyn"))

	([Book_58] of Libro
	 (autor [Author_58])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "58")
	 (nPag 294)
	 (publicacion 1963)
	 (url "https://www.goodreads.com/book/show/6514.The_Bell_Jar")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Bell Jar"))

	([Book_59] of Libro
	 (autor [Author_59])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "59")
	 (nPag 815)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/13.The_Ultimate_Hitchhiker_s_Guide_to_the_Galaxy")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Ultimate Hitchhikers Guide to the Galaxy"))

	([Book_60] of Libro
	 (autor [Author_60])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "60")
	 (nPag 288)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/7763.The_Joy_Luck_Club")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Joy Luck Club"))

	([Book_61] of Libro
	 (autor [Author_61])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "61")
	 (nPag 216)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/101299.The_Reader")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Reader"))

	([Book_62] of Libro
	 (autor [Author_62])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "62")
	 (nPag 241)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/6288.The_Road")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Road"))

	([Book_63] of Libro
	 (autor [Author_63])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "63")
	 (nPag 186)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/22232.Stargirl")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Stargirl"))

	([Book_64] of Libro
	 (autor [Author_64])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "64")
	 (nPag 490)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/18512.The_Return_of_the_King")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Return of the King"))

	([Book_65] of Libro
	 (autor [Author_65])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "65")
	 (nPag 509)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6411961-the-lost-symbol")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Lost Symbol"))

	([Book_66] of Libro
	 (autor [Author_66])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "66")
	 (nPag 973)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/5043.The_Pillars_of_the_Earth")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Pillars of the Earth"))

	([Book_67] of Libro
	 (autor [Author_67])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "67")
	 (nPag 661)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/37470.The_Other_Boleyn_Girl")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Other Boleyn Girl"))

	([Book_68] of Libro
	 (autor [Author_68])
	 (generos
	     [Genres_0]
	     [Genres_9])
	 (idLibro "68")
	 (nPag 320)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/5899779-pride-and-prejudice-and-zombies")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Pride and Prejudice and Zombies"))

	([Book_69] of Libro
	 (autor [Author_69])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "69")
	 (nPag 401)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/10441.The_Memory_Keeper_s_Daughter")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Memory Keepers Daughter"))

	([Book_70] of Libro
	 (autor [Author_70])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "70")
	 (nPag 370)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/24768.Pretties")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Pretties"))

	([Book_71] of Libro
	 (autor [Author_71])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "71")
	 (nPag 288)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/227443.Bridget_Jones_s_Diary")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Bridget Joness Diary"))

	([Book_72] of Libro
	 (autor [Author_72])
	 (generos
	     [Genres_6]
	     [Genres_12])
	 (idLibro "72")
	 (nPag 391)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/854757.Bet_Me")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Bet Me"))

	([Book_73] of Libro
	 (autor [Author_73])
	 (generos
	     [Genres_12]
	     [Genres_6])
	 (idLibro "73")
	 (nPag 374)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/33724.Can_You_Keep_a_Secret_")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Can You Keep a Secret"))

	([Book_74] of Libro
	 (autor [Author_74])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "74")
	 (nPag 338)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/10429045-shatter-me")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Shatter Me"))

	([Book_75] of Libro
	 (autor [Author_75])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "75")
	 (nPag 369)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7735333-matched")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Matched"))

	([Book_76] of Libro
	 (autor [Author_76])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "76")
	 (nPag 503)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/929.Memoirs_of_a_Geisha")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Memoirs of a Geisha"))

	([Book_77] of Libro
	 (autor [Author_77])
	 (generos
	     [Genres_6]
	     [Genres_0])
	 (idLibro "77")
	 (nPag 215)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/35545737-a-walk-to-remember")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "A Walk to Remember"))

	([Book_78] of Libro
	 (autor [Author_78])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "78")
	 (nPag 334)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/20448515-bared-to-you")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Bared to You"))

	([Book_79] of Libro
	 (autor [Author_79])
	 (generos
	     [Genres_6]
	     [Genres_0])
	 (idLibro "79")
	 (nPag 356)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/10818853-fifty-shades-of-grey")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Fifty Shades of Grey"))

	([Book_80] of Libro
	 (autor [Author_80])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "80")
	 (nPag 428)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/11861715-icons")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Icons"))

	([Book_81] of Libro
	 (autor [Author_81])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "81")
	 (nPag 312)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/13425802-pods")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "PODs"))

	([Book_82] of Libro
	 (autor [Author_82])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "82")
	 (nPag 320)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/9791892-unremembered")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Unremembered"))

	([Book_83] of Libro
	 (autor [Author_83])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "83")
	 (nPag 309)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/13112869-not-a-drop-to-drink")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Not a Drop to Drink"))

	([Book_84] of Libro
	 (autor [Author_84])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "84")
	 (nPag 323)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/10859509-altered")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Altered"))

	([Book_85] of Libro
	 (autor [Author_85])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "85")
	 (nPag 292)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/13401993-dualed")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dualed"))

	([Book_86] of Libro
	 (autor [Author_86])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "86")
	 (nPag 400)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/13188615-breaking-point")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Breaking Point"))

	([Book_87] of Libro
	 (autor [Author_87])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "87")
	 (nPag 496)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/14743784-unbreakable")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Unbreakable"))

	([Book_88] of Libro
	 (autor [Author_88])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "88")
	 (nPag 384)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/13138635-these-broken-stars")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "These Broken Stars"))

	([Book_89] of Libro
	 (autor [Author_89])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "89")
	 (nPag 360)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/11044367-taken")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Taken"))

	([Book_90] of Libro
	 (autor [Author_90])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "90")
	 (nPag 470)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/10222362-mila-2-0")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "MILA 20"))

	([Book_91] of Libro
	 (autor [Author_91])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "91")
	 (nPag 457)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16101128-the-5th-wave")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The 5th Wave"))

	([Book_92] of Libro
	 (autor [Author_92])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "92")
	 (nPag 369)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/14290364-champion")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Champion"))

	([Book_93] of Libro
	 (autor [Author_93])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "93")
	 (nPag 307)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/10874177-etiquette-espionage")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Etiquette  Espionage"))

	([Book_94] of Libro
	 (autor [Author_94])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "94")
	 (nPag 341)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/12631512-the-essence")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Essence"))

	([Book_95] of Libro
	 (autor [Author_95])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "95")
	 (nPag 405)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/11366397-the-program")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Program"))

	([Book_96] of Libro
	 (autor [Author_96])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "96")
	 (nPag 411)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/8811139-light")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Light"))

	([Book_97] of Libro
	 (autor [Author_97])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "97")
	 (nPag 391)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/9593913-requiem")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Requiem"))

	([Book_98] of Libro
	 (autor [Author_98])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "98")
	 (nPag 371)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/12383869-sever")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sever"))

	([Book_99] of Libro
	 (autor [Author_99])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "99")
	 (nPag 341)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/13253276-through-the-ever-night")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Through the Ever Night"))

	([Book_100] of Libro
	 (autor [Author_100])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "100")
	 (nPag 526)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/18710190-allegiant")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Allegiant"))

	([Book_101] of Libro
	 (autor [Author_101])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "101")
	 (nPag 304)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/40963299-mechanica")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Mechanica"))

	([Book_102] of Libro
	 (autor [Author_102])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "102")
	 (nPag 456)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23399192-rook")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Rook"))

	([Book_103] of Libro
	 (autor [Author_103])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "103")
	 (nPag 356)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/17316770-invaded")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Invaded"))

	([Book_104] of Libro
	 (autor [Author_104])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "104")
	 (nPag 415)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/19288043-gone-girl")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Gone Girl"))

	([Book_105] of Libro
	 (autor [Author_105])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "105")
	 (nPag 361)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/6909544-birthmarked")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Birthmarked"))

	([Book_106] of Libro
	 (autor [Author_106])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "106")
	 (nPag 192)
	 (publicacion 1961)
	 (url "https://www.goodreads.com/book/show/595394.Some_of_Your_Blood")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Some of Your Blood"))

	([Book_107] of Libro
	 (autor [Author_107])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "107")
	 (nPag 496)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/36159.Black_Sun_Rising")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Black Sun Rising"))

	([Book_108] of Libro
	 (autor [Author_108])
	 (generos
	     [Genres_9]
	     [Genres_4])
	 (idLibro "108")
	 (nPag 160)
	 (publicacion 1954)
	 (url "https://www.goodreads.com/book/show/40940649-i-am-legend")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "I Am Legend"))

	([Book_109] of Libro
	 (autor [Author_109])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "109")
	 (nPag 766)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/6690798-the-passage")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Passage"))

	([Book_110] of Libro
	 (autor [Author_110])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "110")
	 (nPag 403)
	 (publicacion 1981)
	 (url "https://www.goodreads.com/book/show/62571.The_Keep")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Keep"))

	([Book_111] of Libro
	 (autor [Author_111])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "111")
	 (nPag 296)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/34541.Carpe_Jugulum")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Carpe Jugulum"))

	([Book_112] of Libro
	 (autor [Author_112])
	 (generos
	     [Genres_14]
	     [Genres_0])
	 (idLibro "112")
	 (nPag 300)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/33454.Bloodsucking_Fiends")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Bloodsucking Fiends"))

	([Book_113] of Libro
	 (autor [Author_113])
	 (generos
	     [Genres_9]
	     [Genres_4])
	 (idLibro "113")
	 (nPag 403)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6065215-the-strain")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Strain"))

	([Book_114] of Libro
	 (autor [Author_114])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "114")
	 (nPag 513)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/943402.Let_the_Right_One_In")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Let the Right One In"))

	([Book_115] of Libro
	 (autor [Author_115])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "115")
	 (nPag 313)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2227528.The_Plague_of_Doves")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Plague of Doves"))

	([Book_116] of Libro
	 (autor [Author_116])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "116")
	 (nPag 479)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1472878.Firefly_Lane")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Firefly Lane"))

	([Book_117] of Libro
	 (autor [Author_117])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "117")
	 (nPag 400)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/3289281-when-will-there-be-good-news")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "When Will There Be Good News"))

	([Book_118] of Libro
	 (autor [Author_118])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "118")
	 (nPag 372)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2017056.Skeletons_at_the_Feast")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Skeletons at the Feast"))

	([Book_119] of Libro
	 (autor [Author_119])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "119")
	 (nPag 530)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1833852.A_Fraction_of_the_Whole")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Fraction of the Whole"))

	([Book_120] of Libro
	 (autor [Author_120])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "120")
	 (nPag 288)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/426775.Chasing_Harry_Winston")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Chasing Harry Winston"))

	([Book_121] of Libro
	 (autor [Author_121])
	 (generos
	     [Genres_0]
	     [Genres_16])
	 (idLibro "121")
	 (nPag 898)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/63032.2666")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "2666"))

	([Book_122] of Libro
	 (autor [Author_122])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "122")
	 (nPag 208)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1840511.Snuff")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Snuff"))

	([Book_123] of Libro
	 (autor [Author_123])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "123")
	 (nPag 272)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2112237.Betrayal_on_Orbis_2")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Betrayal on Orbis 2"))

	([Book_124] of Libro
	 (autor [Author_124])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "124")
	 (nPag 167)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/3009435-a-mercy")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Mercy"))

	([Book_125] of Libro
	 (autor [Author_125])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "125")
	 (nPag 332)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/3181953-the-heretic-s-daughter")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Heretics Daughter"))

	([Book_126] of Libro
	 (autor [Author_126])
	 (generos
	     [Genres_0]
	     [Genres_17])
	 (idLibro "126")
	 (nPag 128)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2556204.Unlucky_Lucky_Days")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Unlucky Lucky Days"))

	([Book_127] of Libro
	 (autor [Author_127])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "127")
	 (nPag 214)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1605034.The_Miracle_at_Speedy_Motors")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Miracle at Speedy Motors"))

	([Book_128] of Libro
	 (autor [Author_128])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "128")
	 (nPag 416)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2177236.Hold_Tight")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hold Tight"))

	([Book_129] of Libro
	 (autor [Author_129])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "129")
	 (nPag 386)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/421549.Certain_Girls")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Certain Girls"))

	([Book_130] of Libro
	 (autor [Author_130])
	 (generos
	     [Genres_14]
	     [Genres_0])
	 (idLibro "130")
	 (nPag 224)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1809465.Rodrick_Rules")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Rodrick Rules"))

	([Book_131] of Libro
	 (autor [Author_131])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "131")
	 (nPag 555)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2807199-american-wife")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "American Wife"))

	([Book_132] of Libro
	 (autor [Author_132])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "132")
	 (nPag 466)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/5941114-the-likeness")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Likeness"))

	([Book_133] of Libro
	 (autor [Author_133])
	 (generos
	     [Genres_0]
	     [Genres_18])
	 (idLibro "133")
	 (nPag 269)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2615008-netherland")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Netherland"))

	([Book_134] of Libro
	 (autor [Author_134])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "134")
	 (nPag 328)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2138727.Mudbound")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Mudbound"))

	([Book_135] of Libro
	 (autor [Author_135])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "135")
	 (nPag 342)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2120652.Love_the_One_You_re_With")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Love the One Youre With"))

	([Book_136] of Libro
	 (autor [Author_136])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "136")
	 (nPag 384)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1474628.The_Monsters_of_Templeton")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Monsters of Templeton"))

	([Book_137] of Libro
	 (autor [Author_137])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "137")
	 (nPag 740)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/3086160-the-hour-i-first-believed")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Hour I First Believed"))

	([Book_138] of Libro
	 (autor [Author_138])
	 (generos
	     [Genres_0]
	     [Genres_17])
	 (idLibro "138")
	 (nPag 270)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1736739.Olive_Kitteridge")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Olive Kitteridge"))

	([Book_139] of Libro
	 (autor [Author_139])
	 (generos
	     [Genres_11]
	     [Genres_0])
	 (idLibro "139")
	 (nPag 400)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2113410.Belong_to_Me")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Belong to Me"))

	([Book_140] of Libro
	 (autor [Author_140])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "140")
	 (nPag 258)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1971304.City_of_Thieves")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "City of Thieves"))

	([Book_141] of Libro
	 (autor [Author_141])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "141")
	 (nPag 382)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/954674.Little_Brother")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Little Brother"))

	([Book_142] of Libro
	 (autor [Author_142])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "142")
	 (nPag 372)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1379961.People_of_the_Book")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "People of the Book"))

	([Book_143] of Libro
	 (autor [Author_143])
	 (generos
	     [Genres_0]
	     [Genres_19])
	 (idLibro "143")
	 (nPag 566)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2731276-the-story-of-edgar-sawtelle")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Story of Edgar Sawtelle"))

	([Book_144] of Libro
	 (autor [Author_144])
	 (generos
	     [Genres_0]
	     [Genres_20])
	 (idLibro "144")
	 (nPag 407)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16168313-racing-with-the-rain")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Racing With The Rain"))

	([Book_145] of Libro
	 (autor [Author_145])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "145")
	 (nPag 280)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/8135807-rock-me")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Rock Me"))

	([Book_146] of Libro
	 (autor [Author_146])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "146")
	 (nPag 320)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/10647131-there-you-ll-find-me")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "There Youll Find Me"))

	([Book_147] of Libro
	 (autor [Author_147])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "147")
	 (nPag 372)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/128029.A_Thousand_Splendid_Suns")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "A Thousand Splendid Suns"))

	([Book_148] of Libro
	 (autor [Author_148])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "148")
	 (nPag 321)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/31685789-room")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Room"))

	([Book_149] of Libro
	 (autor [Author_149])
	 (generos
	     [Genres_6]
	     [Genres_0])
	 (idLibro "149")
	 (nPag 369)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/17347634-me-before-you")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Me Before You"))

	([Book_150] of Libro
	 (autor [Author_150])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "150")
	 (nPag 525)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/9673436-the-invention-of-hugo-cabret")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Invention of Hugo Cabret"))

	([Book_151] of Libro
	 (autor [Author_151])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "151")
	 (nPag 175)
	 (publicacion 2017)
	 (url "https://www.goodreads.com/book/show/35002208-maya-s-magical-adventures")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Mayas Magical Adventures"))

	([Book_152] of Libro
	 (autor [Author_152])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "152")
	 (nPag 884)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/40605251-the-mists-of-avalon")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Mists of Avalon"))

	([Book_153] of Libro
	 (autor [Author_153])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "153")
	 (nPag 494)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/82192.The_Crystal_Cave")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Crystal Cave"))

	([Book_154] of Libro
	 (autor [Author_154])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "154")
	 (nPag 242)
	 (publicacion 1905)
	 (url "https://www.goodreads.com/book/show/3008.A_Little_Princess")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "A Little Princess"))

	([Book_155] of Libro
	 (autor [Author_155])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "155")
	 (nPag 192)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/28541.Dragonsong")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Dragonsong"))

	([Book_156] of Libro
	 (autor [Author_156])
	 (generos
	     [Genres_0]
	     [Genres_3])
	 (idLibro "156")
	 (nPag 176)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/78411.The_Bad_Beginning")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Bad Beginning"))

	([Book_157] of Libro
	 (autor [Author_157])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "157")
	 (nPag 304)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/44659.Pawn_of_Prophecy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Pawn of Prophecy"))

	([Book_158] of Libro
	 (autor [Author_158])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "158")
	 (nPag 240)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/39988.Matilda")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Matilda"))

	([Book_159] of Libro
	 (autor [Author_159])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "159")
	 (nPag 814)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/228665.The_Eye_of_the_World")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Eye of the World"))

	([Book_160] of Libro
	 (autor [Author_160])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "160")
	 (nPag 368)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/214856.Leven_Thumps_and_the_Gateway_to_Foo")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Leven Thumps and the Gateway to Foo"))

	([Book_161] of Libro
	 (autor [Author_161])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "161")
	 (nPag 662)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/186074.The_Name_of_the_Wind")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Name of the Wind"))

	([Book_162] of Libro
	 (autor [Author_162])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "162")
	 (nPag 398)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/21787.The_Princess_Bride")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Princess Bride"))

	([Book_163] of Libro
	 (autor [Author_163])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "163")
	 (nPag 128)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/40940121-bridge-to-terabithia")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Bridge to Terabithia"))

	([Book_164] of Libro
	 (autor [Author_164])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "164")
	 (nPag 384)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6186357-the-maze-runner")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Maze Runner"))

	([Book_165] of Libro
	 (autor [Author_165])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "165")
	 (nPag 211)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/33574273-a-wrinkle-in-time")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "A Wrinkle in Time"))

	([Book_166] of Libro
	 (autor [Author_166])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "166")
	 (nPag 336)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/347639.What_Happened_to_Lani_Garver")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "What Happened to Lani Garver"))

	([Book_167] of Libro
	 (autor [Author_167])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "167")
	 (nPag 256)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/790289.Hard_Love")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hard Love"))

	([Book_168] of Libro
	 (autor [Author_168])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "168")
	 (nPag 229)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/235466.Someday_This_Pain_Will_Be_Useful_to_You")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Someday This Pain Will Be Useful to You"))

	([Book_169] of Libro
	 (autor [Author_169])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "169")
	 (nPag 128)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/44353.Weetzie_Bat")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Weetzie Bat"))

	([Book_170] of Libro
	 (autor [Author_170])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "170")
	 (nPag 403)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1189878.My_Most_Excellent_Year")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "My Most Excellent Year"))

	([Book_171] of Libro
	 (autor [Author_171])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "171")
	 (nPag 384)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16101023-proxy")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Proxy"))

	([Book_172] of Libro
	 (autor [Author_172])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "172")
	 (nPag 444)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/2227371.The_Girl_with_No_Shadow")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Girl with No Shadow"))

	([Book_173] of Libro
	 (autor [Author_173])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "173")
	 (nPag 287)
	 (publicacion 1983)
	 (url "https://www.goodreads.com/book/show/4831.Shame")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Shame"))

	([Book_174] of Libro
	 (autor [Author_174])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "174")
	 (nPag 304)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/8706185-among-others")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Among Others"))

	([Book_175] of Libro
	 (autor [Author_175])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "175")
	 (nPag 336)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/5159.Here_on_Earth")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Here on Earth"))

	([Book_176] of Libro
	 (autor [Author_176])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "176")
	 (nPag 499)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/14967.A_Trip_to_the_Stars")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Trip to the Stars"))

	([Book_177] of Libro
	 (autor [Author_177])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "177")
	 (nPag 368)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/3394.The_War_of_Don_Emmanuel_s_Nether_Parts")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The War of Don Emmanuels Nether Parts"))

	([Book_178] of Libro
	 (autor [Author_178])
	 (generos
	     [Genres_0]
	     [Genres_17])
	 (idLibro "178")
	 (nPag 352)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/3291.The_Stories_of_Eva_Luna")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Stories of Eva Luna"))

	([Book_179] of Libro
	 (autor [Author_179])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "179")
	 (nPag 393)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/17800.Dance_Dance_Dance")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Dance Dance Dance"))

	([Book_180] of Libro
	 (autor [Author_180])
	 (generos
	     [Genres_0]
	     [Genres_17])
	 (idLibro "180")
	 (nPag 162)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/53423.Cronopios_and_Famas")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Cronopios and Famas"))

	([Book_181] of Libro
	 (autor [Author_181])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "181")
	 (nPag 200)
	 (publicacion 1967)
	 (url "https://www.goodreads.com/book/show/81026.The_Magic_Toyshop")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Magic Toyshop"))

	([Book_182] of Libro
	 (autor [Author_182])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "182")
	 (nPag 288)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13538873-mr-penumbra-s-24-hour-bookstore")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Mr Penumbras 24-Hour Bookstore"))

	([Book_183] of Libro
	 (autor [Author_183])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "183")
	 (nPag 323)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/40940157-swamplandia")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Swamplandia"))

	([Book_184] of Libro
	 (autor [Author_184])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "184")
	 (nPag 404)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6240758-of-bees-and-mist")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Of Bees and Mist"))

	([Book_185] of Libro
	 (autor [Author_185])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "185")
	 (nPag 416)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/60937.The_Temple_of_My_Familiar")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Temple of My Familiar"))

	([Book_186] of Libro
	 (autor [Author_186])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "186")
	 (nPag 312)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/33363.Mama_Day")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Mama Day"))

	([Book_187] of Libro
	 (autor [Author_187])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "187")
	 (nPag 338)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/94669.The_Mistress_of_Spices")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Mistress of Spices"))

	([Book_188] of Libro
	 (autor [Author_188])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "188")
	 (nPag 218)
	 (publicacion 1927)
	 (url "https://www.goodreads.com/book/show/16631.Steppenwolf")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Steppenwolf"))

	([Book_189] of Libro
	 (autor [Author_189])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "189")
	 (nPag 338)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/8366402-the-tiger-s-wife")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Tigers Wife"))

	([Book_190] of Libro
	 (autor [Author_190])
	 (generos
	     [Genres_0]
	     [Genres_23])
	 (idLibro "190")
	 (nPag 272)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/57736.Shoeless_Joe")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Shoeless Joe"))

	([Book_191] of Libro
	 (autor [Author_191])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "191")
	 (nPag 115)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/760.Memories_of_My_Melancholy_Whores")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Memories of My Melancholy Whores"))

	([Book_192] of Libro
	 (autor [Author_192])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "192")
	 (nPag 576)
	 (publicacion 1966)
	 (url "https://www.goodreads.com/book/show/147039.Dona_Flor_and_Her_Two_Husbands")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Dona Flor and Her Two Husbands"))

	([Book_193] of Libro
	 (autor [Author_193])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "193")
	 (nPag 192)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/129984.Big_Fish")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Big Fish"))

	([Book_194] of Libro
	 (autor [Author_194])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "194")
	 (nPag 528)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/91289.The_Hummingbird_s_Daughter")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Hummingbirds Daughter"))

	([Book_195] of Libro
	 (autor [Author_195])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "195")
	 (nPag 456)
	 (publicacion 1974)
	 (url "https://www.goodreads.com/book/show/39242.The_Milagro_Beanfield_War")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Milagro Beanfield War"))

	([Book_196] of Libro
	 (autor [Author_196])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "196")
	 (nPag 531)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/5196764-the-angel-s-game")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Angels Game"))

	([Book_197] of Libro
	 (autor [Author_197])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "197")
	 (nPag 580)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/35743.The_Tin_Drum")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Tin Drum"))

	([Book_198] of Libro
	 (autor [Author_198])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "198")
	 (nPag 128)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/38787.Pedro_P_ramo")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Pedro Pramo"))

	([Book_199] of Libro
	 (autor [Author_199])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "199")
	 (nPag 386)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/33597976-the-snow-child")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Snow Child"))

	([Book_200] of Libro
	 (autor [Author_200])
	 (generos
	     [Genres_0]
	     [Genres_14])
	 (idLibro "200")
	 (nPag 366)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/7572.Even_Cowgirls_Get_the_Blues")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Even Cowgirls Get the Blues"))

	([Book_201] of Libro
	 (autor [Author_201])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "201")
	 (nPag 290)
	 (publicacion 1972)
	 (url "https://www.goodreads.com/book/show/14362.Bless_Me_Ultima")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Bless Me Ultima"))

	([Book_202] of Libro
	 (autor [Author_202])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "202")
	 (nPag 176)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/15047.The_Passion")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Passion"))

	([Book_203] of Libro
	 (autor [Author_203])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "203")
	 (nPag 292)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7048800-the-particular-sadness-of-lemon-cake")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Particular Sadness of Lemon Cake"))

	([Book_204] of Libro
	 (autor [Author_204])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "204")
	 (nPag 260)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/374233.If_on_a_Winter_s_Night_a_Traveler")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "If on a Winters Night a Traveler"))

	([Book_205] of Libro
	 (autor [Author_205])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "205")
	 (nPag 538)
	 (publicacion 1981)
	 (url "https://www.goodreads.com/book/show/90619.Little_Big")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Little Big"))

	([Book_206] of Libro
	 (autor [Author_206])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "206")
	 (nPag 335)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/297673.The_Brief_Wondrous_Life_of_Oscar_Wao")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Brief Wondrous Life of Oscar Wao"))

	([Book_207] of Libro
	 (autor [Author_207])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "207")
	 (nPag 748)
	 (publicacion 1983)
	 (url "https://www.goodreads.com/book/show/12967.Winter_s_Tale")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Winters Tale"))

	([Book_208] of Libro
	 (autor [Author_208])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "208")
	 (nPag 460)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/4214.Life_of_Pi")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Life of Pi"))

	([Book_209] of Libro
	 (autor [Author_209])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "209")
	 (nPag 276)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/256566.Everything_Is_Illuminated")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Everything Is Illuminated"))

	([Book_210] of Libro
	 (autor [Author_210])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "210")
	 (nPag 273)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/8546358-the-peach-keeper")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Peach Keeper"))

	([Book_211] of Libro
	 (autor [Author_211])
	 (generos
	     [Genres_0]
	     [Genres_17])
	 (idLibro "211")
	 (nPag 174)
	 (publicacion 1944)
	 (url "https://www.goodreads.com/book/show/426504.Ficciones")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Ficciones"))

	([Book_212] of Libro
	 (autor [Author_212])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "212")
	 (nPag 387)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9361589-the-night-circus")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Night Circus"))

	([Book_213] of Libro
	 (autor [Author_213])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "213")
	 (nPag 373)
	 (publicacion 1967)
	 (url "https://www.goodreads.com/book/show/117833.The_Master_and_Margarita")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Master and Margarita"))

	([Book_214] of Libro
	 (autor [Author_214])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "214")
	 (nPag 224)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/6952.Like_Water_for_Chocolate")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Like Water for Chocolate"))

	([Book_215] of Libro
	 (autor [Author_215])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "215")
	 (nPag 280)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/53496.Walk_Two_Moons")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Walk Two Moons"))

	([Book_216] of Libro
	 (autor [Author_216])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "216")
	 (nPag 212)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/227463.A_Clockwork_Orange")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "A Clockwork Orange"))

	([Book_217] of Libro
	 (autor [Author_217])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "217")
	 (nPag 232)
	 (publicacion 1918)
	 (url "https://www.goodreads.com/book/show/17150.My_ntonia")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "My ntonia"))

	([Book_218] of Libro
	 (autor [Author_218])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "218")
	 (nPag 518)
	 (publicacion 1891)
	 (url "https://www.goodreads.com/book/show/32261.Tess_of_the_D_Urbervilles")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Tess of the DUrbervilles"))

	([Book_219] of Libro
	 (autor [Author_219])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "219")
	 (nPag 489)
	 (publicacion 1859)
	 (url "https://www.goodreads.com/book/show/1953.A_Tale_of_Two_Cities")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "A Tale of Two Cities"))

	([Book_220] of Libro
	 (autor [Author_220])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "220")
	 (nPag 581)
	 (publicacion 1952)
	 (url "https://www.goodreads.com/book/show/16981.Invisible_Man")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Invisible Man"))

	([Book_221] of Libro
	 (autor [Author_221])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "221")
	 (nPag 1463)
	 (publicacion 1862)
	 (url "https://www.goodreads.com/book/show/24280.Les_Mis_rables")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Les Misrables"))

	([Book_222] of Libro
	 (autor [Author_222])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "222")
	 (nPag 461)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/39832183-the-guernsey-literary-and-potato-peel-pie-society")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Guernsey Literary and Potato Peel Pie Society"))

	([Book_223] of Libro
	 (autor [Author_223])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "223")
	 (nPag 219)
	 (publicacion 1937)
	 (url "https://www.goodreads.com/book/show/37415.Their_Eyes_Were_Watching_God")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Their Eyes Were Watching God"))

	([Book_224] of Libro
	 (autor [Author_224])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "224")
	 (nPag 112)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/71728.Jonathan_Livingston_Seagull")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Jonathan Livingston Seagull"))

	([Book_225] of Libro
	 (autor [Author_225])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "225")
	 (nPag 546)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/7244.The_Poisonwood_Bible")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Poisonwood Bible"))

	([Book_226] of Libro
	 (autor [Author_226])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "226")
	 (nPag 329)
	 (publicacion 1856)
	 (url "https://www.goodreads.com/book/show/2175.Madame_Bovary")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Madame Bovary"))

	([Book_227] of Libro
	 (autor [Author_227])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "227")
	 (nPag 479)
	 (publicacion 1939)
	 (url "https://www.goodreads.com/book/show/18114322-the-grapes-of-wrath")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Grapes of Wrath"))

	([Book_228] of Libro
	 (autor [Author_228])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "228")
	 (nPag 244)
	 (publicacion 1876)
	 (url "https://www.goodreads.com/book/show/24583.The_Adventures_of_Tom_Sawyer")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Adventures of Tom Sawyer"))

	([Book_229] of Libro
	 (autor [Author_229])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "229")
	 (nPag 188)
	 (publicacion 1899)
	 (url "https://www.goodreads.com/book/show/4900.Heart_of_Darkness")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Heart of Darkness"))

	([Book_230] of Libro
	 (autor [Author_230])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "230")
	 (nPag 336)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/37435.The_Secret_Life_of_Bees")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Secret Life of Bees"))

	([Book_231] of Libro
	 (autor [Author_231])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "231")
	 (nPag 324)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/375802.Ender_s_Game")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Enders Game"))

	([Book_232] of Libro
	 (autor [Author_232])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "232")
	 (nPag 209)
	 (publicacion 1958)
	 (url "https://www.goodreads.com/book/show/37781.Things_Fall_Apart")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Things Fall Apart"))

	([Book_233] of Libro
	 (autor [Author_233])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "233")
	 (nPag 172)
	 (publicacion 1903)
	 (url "https://www.goodreads.com/book/show/1852.The_Call_of_the_Wild")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Call of the Wild"))

	([Book_234] of Libro
	 (autor [Author_234])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "234")
	 (nPag 325)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/332613.One_Flew_Over_the_Cuckoo_s_Nest")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "One Flew Over the Cuckoos Nest"))

	([Book_235] of Libro
	 (autor [Author_235])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "235")
	 (nPag 132)
	 (publicacion 1952)
	 (url "https://www.goodreads.com/book/show/2165.The_Old_Man_and_the_Sea")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Old Man and the Sea"))

	([Book_236] of Libro
	 (autor [Author_236])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "236")
	 (nPag 504)
	 (publicacion 1390)
	 (url "https://www.goodreads.com/book/show/2696.The_Canterbury_Tales")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Canterbury Tales"))

	([Book_237] of Libro
	 (autor [Author_237])
	 (generos
	     [Genres_0]
	     [Genres_24])
	 (idLibro "237")
	 (nPag 252)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/40874325-the-shack")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Shack"))

	([Book_238] of Libro
	 (autor [Author_238])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "238")
	 (nPag 478)
	 (publicacion 1972)
	 (url "https://www.goodreads.com/book/show/76620.Watership_Down")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Watership Down"))

	([Book_239] of Libro
	 (autor [Author_239])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "239")
	 (nPag 671)
	 (publicacion 1866)
	 (url "https://www.goodreads.com/book/show/7144.Crime_and_Punishment")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Crime and Punishment"))

	([Book_240] of Libro
	 (autor [Author_240])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "240")
	 (nPag 123)
	 (publicacion 1942)
	 (url "https://www.goodreads.com/book/show/49552.The_Stranger")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Stranger"))

	([Book_241] of Libro
	 (autor [Author_241])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "241")
	 (nPag 224)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/39999.The_Boy_in_the_Striped_Pajamas")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Boy in the Striped Pajamas"))

	([Book_242] of Libro
	 (autor [Author_242])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "242")
	 (nPag 335)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/43641.Water_for_Elephants")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Water for Elephants"))

	([Book_243] of Libro
	 (autor [Author_243])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "243")
	 (nPag 328)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/12232938-the-lovely-bones")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Lovely Bones"))

	([Book_244] of Libro
	 (autor [Author_244])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "244")
	 (nPag 197)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/865.The_Alchemist")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Alchemist"))

	([Book_245] of Libro
	 (autor [Author_245])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "245")
	 (nPag 273)
	 (publicacion 1818)
	 (url "https://www.goodreads.com/book/show/35031085-frankenstein")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Frankenstein"))

	([Book_246] of Libro
	 (autor [Author_246])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "246")
	 (nPag 311)
	 (publicacion 1966)
	 (url "https://www.goodreads.com/book/show/36576608-flowers-for-algernon")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Flowers for Algernon"))

	([Book_247] of Libro
	 (autor [Author_247])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "247")
	 (nPag 464)
	 (publicacion 1847)
	 (url "https://www.goodreads.com/book/show/6185.Wuthering_Heights")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Wuthering Heights"))

	([Book_248] of Libro
	 (autor [Author_248])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "248")
	 (nPag 465)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/4667024-the-help")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Help"))

	([Book_249] of Libro
	 (autor [Author_249])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "249")
	 (nPag 226)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/1618.The_Curious_Incident_of_the_Dog_in_the_Night_Time")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Curious Incident of the Dog in the Night-Time"))

	([Book_250] of Libro
	 (autor [Author_250])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "250")
	 (nPag 279)
	 (publicacion 1850)
	 (url "https://www.goodreads.com/book/show/12296.The_Scarlet_Letter")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Scarlet Letter"))

	([Book_251] of Libro
	 (autor [Author_251])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "251")
	 (nPag 93)
	 (publicacion 1943)
	 (url "https://www.goodreads.com/book/show/157993.The_Little_Prince")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Little Prince"))

	([Book_252] of Libro
	 (autor [Author_252])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "252")
	 (nPag 552)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/19063.The_Book_Thief")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Book Thief"))

	([Book_253] of Libro
	 (autor [Author_253])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "253")
	 (nPag 122)
	 (publicacion 1945)
	 (url "https://www.goodreads.com/book/show/170448.Animal_Farm")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Animal Farm"))

	([Book_254] of Libro
	 (autor [Author_254])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "254")
	 (nPag 277)
	 (publicacion 1951)
	 (url "https://www.goodreads.com/book/show/5107.The_Catcher_in_the_Rye")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Catcher in the Rye"))

	([Book_255] of Libro
	 (autor [Author_255])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "255")
	 (nPag 507)
	 (publicacion 1847)
	 (url "https://www.goodreads.com/book/show/10210.Jane_Eyre")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Jane Eyre"))

	([Book_256] of Libro
	 (autor [Author_256])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "256")
	 (nPag 182)
	 (publicacion 1954)
	 (url "https://www.goodreads.com/book/show/7624.Lord_of_the_Flies")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Lord of the Flies"))

	([Book_257] of Libro
	 (autor [Author_257])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "257")
	 (nPag 180)
	 (publicacion 1925)
	 (url "https://www.goodreads.com/book/show/4671.The_Great_Gatsby")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Great Gatsby"))

	([Book_258] of Libro
	 (autor [Author_258])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "258")
	 (nPag 324)
	 (publicacion 1960)
	 (url "https://www.goodreads.com/book/show/2657.To_Kill_a_Mockingbird")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "To Kill a Mockingbird"))

	([Book_259] of Libro
	 (autor [Author_259])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "259")
	 (nPag 351)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/6867.Atonement")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Atonement"))

	([Book_260] of Libro
	 (autor [Author_260])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "260")
	 (nPag 703)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/177076.The_Meaning_of_Night")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Meaning of Night"))

	([Book_261] of Libro
	 (autor [Author_261])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "261")
	 (nPag 515)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/14975.Labyrinth")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Labyrinth"))

	([Book_262] of Libro
	 (autor [Author_262])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "262")
	 (nPag 362)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/7194.The_Club_Dumas")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Club Dumas"))

	([Book_263] of Libro
	 (autor [Author_263])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "263")
	 (nPag 256)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/61463.The_Winter_Queen")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Winter Queen"))

	([Book_264] of Libro
	 (autor [Author_264])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "264")
	 (nPag 576)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2761171-company-of-liars")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Company of Liars"))

	([Book_265] of Libro
	 (autor [Author_265])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "265")
	 (nPag 623)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/17841.Foucault_s_Pendulum")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Foucaults Pendulum"))

	([Book_266] of Libro
	 (autor [Author_266])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "266")
	 (nPag 263)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/37100.Devil_in_a_Blue_Dress")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Devil in a Blue Dress"))

	([Book_267] of Libro
	 (autor [Author_267])
	 (generos
	     [Genres_13]
	     [Genres_25])
	 (idLibro "267")
	 (nPag 352)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/22874238-deception-on-sable-hill")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Deception on Sable Hill"))

	([Book_268] of Libro
	 (autor [Author_268])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "268")
	 (nPag 555)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/41219.Possession")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Possession"))

	([Book_269] of Libro
	 (autor [Author_269])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "269")
	 (nPag 290)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/3367956-hotel-on-the-corner-of-bitter-and-sweet")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Hotel on the Corner of Bitter and Sweet"))

	([Book_270] of Libro
	 (autor [Author_270])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "270")
	 (nPag 599)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/1278752.The_House_at_Riverton")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The House at Riverton"))

	([Book_271] of Libro
	 (autor [Author_271])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "271")
	 (nPag 582)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/8913370-fingersmith")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Fingersmith"))

	([Book_272] of Libro
	 (autor [Author_272])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "272")
	 (nPag 424)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/18402.The_Dante_Club")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Dante Club"))

	([Book_273] of Libro
	 (autor [Author_273])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "273")
	 (nPag 304)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/880.Pompeii")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Pompeii"))

	([Book_274] of Libro
	 (autor [Author_274])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "274")
	 (nPag 509)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/2161733.Child_44")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Child 44"))

	([Book_275] of Libro
	 (autor [Author_275])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "275")
	 (nPag 386)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/40605285-the-sweetness-at-the-bottom-of-the-pie")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Sweetness at the Bottom of the Pie"))

	([Book_276] of Libro
	 (autor [Author_276])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "276")
	 (nPag 263)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/343.Perfume")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Perfume The Story of a Murderer"))

	([Book_277] of Libro
	 (autor [Author_277])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "277")
	 (nPag 406)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/40440.The_Thirteenth_Tale")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Thirteenth Tale"))

	([Book_278] of Libro
	 (autor [Author_278])
	 (generos
	     [Genres_26]
	     [Genres_7])
	 (idLibro "278")
	 (nPag 84)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/22751611-liberty-belle")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Liberty Belle"))

	([Book_279] of Libro
	 (autor [Author_279])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "279")
	 (nPag 1152)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/74404.The_Cornish_Trilogy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Cornish Trilogy The Rebel Angels Whats Bred in the Bone The Lyre of Orpheus"))

	([Book_280] of Libro
	 (autor [Author_280])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "280")
	 (nPag 263)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/160251.Ordinary_People")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Ordinary People"))

	([Book_281] of Libro
	 (autor [Author_281])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "281")
	 (nPag 440)
	 (publicacion 1971)
	 (url "https://www.goodreads.com/book/show/46917.Rabbit_Redux")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Rabbit Redux"))

	([Book_282] of Libro
	 (autor [Author_282])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "282")
	 (nPag 1774)
	 (publicacion 1930)
	 (url "https://www.goodreads.com/book/show/527756.The_Man_Without_Qualities")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Man Without Qualities"))

	([Book_283] of Libro
	 (autor [Author_283])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "283")
	 (nPag 475)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/4952.What_Is_the_What")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "What Is the What"))

	([Book_284] of Libro
	 (autor [Author_284])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "284")
	 (nPag 448)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/3711.White_Teeth")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "White Teeth"))

	([Book_285] of Libro
	 (autor [Author_285])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "285")
	 (nPag 705)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/24800.House_of_Leaves")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "House of Leaves"))

	([Book_286] of Libro
	 (autor [Author_286])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "286")
	 (nPag 483)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/187020.Empire_Falls")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Empire Falls"))

	([Book_287] of Libro
	 (autor [Author_287])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "287")
	 (nPag 541)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/3591262-cutting-for-stone")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Cutting for Stone"))

	([Book_288] of Libro
	 (autor [Author_288])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "288")
	 (nPag 255)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/3867.The_History_of_Love")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The History of Love"))

	([Book_289] of Libro
	 (autor [Author_289])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "289")
	 (nPag 653)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/3805.The_Corrections")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Corrections"))

	([Book_290] of Libro
	 (autor [Author_290])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "290")
	 (nPag 509)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/49628.Cloud_Atlas")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Cloud Atlas"))

	([Book_291] of Libro
	 (autor [Author_291])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "291")
	 (nPag 288)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/40873273-snow-flower-and-the-secret-fan")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Snow Flower and the Secret Fan"))

	([Book_292] of Libro
	 (autor [Author_292])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "292")
	 (nPag 639)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/3985.The_Amazing_Adventures_of_Kavalier_Clay")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Amazing Adventures of Kavalier  Clay"))

	([Book_293] of Libro
	 (autor [Author_293])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "293")
	 (nPag 352)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/5826.Bel_Canto")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Bel Canto"))

	([Book_294] of Libro
	 (autor [Author_294])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "294")
	 (nPag 529)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/2187.Middlesex")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Middlesex"))

	([Book_295] of Libro
	 (autor [Author_295])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "295")
	 (nPag 754)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/550454.Aztec")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Aztec"))

	([Book_296] of Libro
	 (autor [Author_296])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "296")
	 (nPag 835)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/40200.The_Crimson_Petal_and_the_White")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Crimson Petal and the White"))

	([Book_297] of Libro
	 (autor [Author_297])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "297")
	 (nPag 1104)
	 (publicacion 1965)
	 (url "https://www.goodreads.com/book/show/12657.The_Source")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Source"))

	([Book_298] of Libro
	 (autor [Author_298])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "298")
	 (nPag 351)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/68527.The_Last_Kingdom")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Last Kingdom"))

	([Book_299] of Libro
	 (autor [Author_299])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "299")
	 (nPag 672)
	 (publicacion 1984)
	 (url "https://www.goodreads.com/book/show/8716.Lincoln")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Lincoln"))

	([Book_300] of Libro
	 (autor [Author_300])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "300")
	 (nPag 958)
	 (publicacion 1978)
	 (url "https://www.goodreads.com/book/show/10222.The_Far_Pavilions")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Far Pavilions"))

	([Book_301] of Libro
	 (autor [Author_301])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "301")
	 (nPag 973)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/4687.The_Cider_House_Rules")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Cider House Rules"))

	([Book_302] of Libro
	 (autor [Author_302])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "302")
	 (nPag 6576)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/24520.The_Complete_Aubrey_Maturin_Novels")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Complete AubreyMaturin Novels 5 Volumes"))

	([Book_303] of Libro
	 (autor [Author_303])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "303")
	 (nPag 1152)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/92160.London")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "London"))

	([Book_304] of Libro
	 (autor [Author_304])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "304")
	 (nPag 470)
	 (publicacion 1969)
	 (url "https://www.goodreads.com/book/show/56034.The_French_Lieutenant_s_Woman")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The French Lieutenants Woman"))

	([Book_305] of Libro
	 (autor [Author_305])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "305")
	 (nPag 972)
	 (publicacion 1944)
	 (url "https://www.goodreads.com/book/show/5368.Forever_Amber")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Forever Amber"))

	([Book_306] of Libro
	 (autor [Author_306])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "306")
	 (nPag 812)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/159178.North_and_South")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "North and South"))

	([Book_307] of Libro
	 (autor [Author_307])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "307")
	 (nPag 1076)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/480570.The_First_Man_in_Rome")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The First Man in Rome"))

	([Book_308] of Libro
	 (autor [Author_308])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "308")
	 (nPag 734)
	 (publicacion 1966)
	 (url "https://www.goodreads.com/book/show/42933.Tai_Pan")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Tai-Pan"))

	([Book_309] of Libro
	 (autor [Author_309])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "309")
	 (nPag 463)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/481446.Nefertiti")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Nefertiti"))

	([Book_310] of Libro
	 (autor [Author_310])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "310")
	 (nPag 427)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/28078.The_Birth_of_Venus")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Birth of Venus"))

	([Book_311] of Libro
	 (autor [Author_311])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "311")
	 (nPag 1006)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/14201.Jonathan_Strange_Mr_Norrell")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Jonathan Strange  Mr Norrell"))

	([Book_312] of Libro
	 (autor [Author_312])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "312")
	 (nPag 653)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6101138-wolf-hall")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Wolf Hall"))

	([Book_313] of Libro
	 (autor [Author_313])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "313")
	 (nPag 405)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/3273.Moloka_i")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Molokai"))

	([Book_314] of Libro
	 (autor [Author_314])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "314")
	 (nPag 776)
	 (publicacion 1958)
	 (url "https://www.goodreads.com/book/show/321552.The_Agony_and_the_Ecstasy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Agony and the Ecstasy"))

	([Book_315] of Libro
	 (autor [Author_315])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "315")
	 (nPag 416)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/9375.Fried_Green_Tomatoes_at_the_Whistle_Stop_Cafe")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Fried Green Tomatoes at the Whistle Stop Cafe"))

	([Book_316] of Libro
	 (autor [Author_316])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "316")
	 (nPag 531)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18143977-all-the-light-we-cannot-see")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "All the Light We Cannot See"))

	([Book_317] of Libro
	 (autor [Author_317])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "317")
	 (nPag 422)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/27252.Pope_Joan")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Pope Joan"))

	([Book_318] of Libro
	 (autor [Author_318])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "318")
	 (nPag 608)
	 (publicacion 1958)
	 (url "https://www.goodreads.com/book/show/42697.Exodus")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Exodus"))

	([Book_319] of Libro
	 (autor [Author_319])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "319")
	 (nPag 500)
	 (publicacion 1954)
	 (url "https://www.goodreads.com/book/show/33609.Katherine")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Katherine"))

	([Book_320] of Libro
	 (autor [Author_320])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "320")
	 (nPag 320)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/11713.The_English_Patient")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The English Patient"))

	([Book_321] of Libro
	 (autor [Author_321])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "321")
	 (nPag 468)
	 (publicacion 1934)
	 (url "https://www.goodreads.com/book/show/18765.I_Claudius")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "I Claudius"))

	([Book_322] of Libro
	 (autor [Author_322])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "322")
	 (nPag 625)
	 (publicacion 1844)
	 (url "https://www.goodreads.com/book/show/7190.The_Three_Musketeers")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Three Musketeers"))

	([Book_323] of Libro
	 (autor [Author_323])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "323")
	 (nPag 356)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/10920.Cold_Mountain")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Cold Mountain"))

	([Book_324] of Libro
	 (autor [Author_324])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "324")
	 (nPag 945)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/256008.Lonesome_Dove")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Lonesome Dove"))

	([Book_325] of Libro
	 (autor [Author_325])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "325")
	 (nPag 336)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/4989.The_Red_Tent")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Red Tent"))

	([Book_326] of Libro
	 (autor [Author_326])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "326")
	 (nPag 1023)
	 (publicacion 1605)
	 (url "https://www.goodreads.com/book/show/3836.Don_Quixote")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Don Quixote"))

	([Book_327] of Libro
	 (autor [Author_327])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "327")
	 (nPag 438)
	 (publicacion 1852)
	 (url "https://www.goodreads.com/book/show/46787.Uncle_Tom_s_Cabin")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Uncle Toms Cabin"))

	([Book_328] of Libro
	 (autor [Author_328])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "328")
	 (nPag 296)
	 (publicacion 1929)
	 (url "https://www.goodreads.com/book/show/355697.All_Quiet_on_the_Western_Front")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "All Quiet on the Western Front"))

	([Book_329] of Libro
	 (autor [Author_329])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "329")
	 (nPag 1392)
	 (publicacion 1867)
	 (url "https://www.goodreads.com/book/show/656.War_and_Peace")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "War and Peace"))

	([Book_330] of Libro
	 (autor [Author_330])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "330")
	 (nPag 417)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/7604.Lolita")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Lolita"))

	([Book_331] of Libro
	 (autor [Author_331])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "331")
	 (nPag 453)
	 (publicacion 1961)
	 (url "https://www.goodreads.com/book/show/168668.Catch_22")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Catch-22"))

	([Book_332] of Libro
	 (autor [Author_332])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "332")
	 (nPag 367)
	 (publicacion 1890)
	 (url "https://www.goodreads.com/book/show/5297.The_Picture_of_Dorian_Gray")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Picture of Dorian Gray"))

	([Book_333] of Libro
	 (autor [Author_333])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "333")
	 (nPag 230)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/693208.The_Absolutely_True_Diary_of_a_Part_Time_Indian")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Absolutely True Diary of a Part-Time Indian"))

	([Book_334] of Libro
	 (autor [Author_334])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "334")
	 (nPag 178)
	 (publicacion 1967)
	 (url "https://www.goodreads.com/book/show/3980.From_the_Mixed_Up_Files_of_Mrs_Basil_E_Frankweiler")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "From the Mixed-Up Files of Mrs Basil E Frankweiler"))

	([Book_335] of Libro
	 (autor [Author_335])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "335")
	 (nPag 294)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/452306.The_Sisterhood_of_the_Traveling_Pants")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Sisterhood of the Traveling Pants"))

	([Book_336] of Libro
	 (autor [Author_336])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "336")
	 (nPag 256)
	 (publicacion 1961)
	 (url "https://www.goodreads.com/book/show/378.The_Phantom_Tollbooth")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Phantom Tollbooth"))

	([Book_337] of Libro
	 (autor [Author_337])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "337")
	 (nPag 320)
	 (publicacion 1908)
	 (url "https://www.goodreads.com/book/show/8127.Anne_of_Green_Gables")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Anne of Green Gables"))

	([Book_338] of Libro
	 (autor [Author_338])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "338")
	 (nPag 153)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/227651.Among_the_Hidden")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Among the Hidden"))

	([Book_339] of Libro
	 (autor [Author_339])
	 (generos
	     [Genres_0]
	     [Genres_27])
	 (idLibro "339")
	 (nPag 461)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/9654.Fear_of_Flying")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Fear of Flying"))

	([Book_340] of Libro
	 (autor [Author_340])
	 (generos
	     [Genres_0]
	     [Genres_28])
	 (idLibro "340")
	 (nPag 140)
	 (publicacion 1974)
	 (url "https://www.goodreads.com/book/show/69880.The_Lost_Honor_of_Katharina_Blum")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Lost Honor of Katharina Blum"))

	([Book_341] of Libro
	 (autor [Author_341])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "341")
	 (nPag 567)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/19581.Ghost_Story")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Ghost Story"))

	([Book_342] of Libro
	 (autor [Author_342])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "342")
	 (nPag 462)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/136167.The_Other_Side_of_Midnight")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Other Side of Midnight"))

	([Book_343] of Libro
	 (autor [Author_343])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "343")
	 (nPag 1042)
	 (publicacion 1978)
	 (url "https://www.goodreads.com/book/show/42986.War_and_Remembrance")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "War and Remembrance"))

	([Book_344] of Libro
	 (autor [Author_344])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "344")
	 (nPag 369)
	 (publicacion 1972)
	 (url "https://www.goodreads.com/book/show/11507.My_Name_Is_Asher_Lev")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "My Name Is Asher Lev"))

	([Book_345] of Libro
	 (autor [Author_345])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "345")
	 (nPag 243)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/112537.Rendezvous_with_Rama")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Rendezvous with Rama"))

	([Book_346] of Libro
	 (autor [Author_346])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "346")
	 (nPag 726)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/15575.The_Sword_of_Shannara")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Sword of Shannara"))

	([Book_347] of Libro
	 (autor [Author_347])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "347")
	 (nPag 569)
	 (publicacion 1971)
	 (url "https://www.goodreads.com/book/show/292408.Angle_of_Repose")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Angle of Repose"))

	([Book_348] of Libro
	 (autor [Author_348])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "348")
	 (nPag 592)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/78983.Kane_and_Abel")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Kane and Abel"))

	([Book_349] of Libro
	 (autor [Author_349])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "349")
	 (nPag 144)
	 (publicacion 1972)
	 (url "https://www.goodreads.com/book/show/37741.Tales_of_a_Fourth_Grade_Nothing")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Tales of a Fourth Grade Nothing"))

	([Book_350] of Libro
	 (autor [Author_350])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "350")
	 (nPag 288)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/592657.Deliverance")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Deliverance"))

	([Book_351] of Libro
	 (autor [Author_351])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "351")
	 (nPag 144)
	 (publicacion 1978)
	 (url "https://www.goodreads.com/book/show/15779.Sideways_Stories_from_Wayside_School")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Sideways Stories from Wayside School"))

	([Book_352] of Libro
	 (autor [Author_352])
	 (generos
	     [Genres_0]
	     [Genres_28])
	 (idLibro "352")
	 (nPag 313)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/240976.The_Book_of_Laughter_and_Forgetting")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Book of Laughter and Forgetting"))

	([Book_353] of Libro
	 (autor [Author_353])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "353")
	 (nPag 776)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/415.Gravity_s_Rainbow")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Gravitys Rainbow"))

	([Book_354] of Libro
	 (autor [Author_354])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "354")
	 (nPag 384)
	 (publicacion 1971)
	 (url "https://www.goodreads.com/book/show/540020.The_Day_of_the_Jackal")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Day of the Jackal"))

	([Book_355] of Libro
	 (autor [Author_355])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "355")
	 (nPag 345)
	 (publicacion 1974)
	 (url "https://www.goodreads.com/book/show/682804.The_Killer_Angels")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Killer Angels"))

	([Book_356] of Libro
	 (autor [Author_356])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "356")
	 (nPag 320)
	 (publicacion 1975)
	 (url "https://www.goodreads.com/book/show/175675.Ragtime")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Ragtime"))

	([Book_357] of Libro
	 (autor [Author_357])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "357")
	 (nPag 408)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/120182.The_Black_Prince")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Black Prince"))

	([Book_358] of Libro
	 (autor [Author_358])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "358")
	 (nPag 379)
	 (publicacion 1974)
	 (url "https://www.goodreads.com/book/show/10073506-tinker-tailor-soldier-spy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Tinker Tailor Soldier Spy"))

	([Book_359] of Libro
	 (autor [Author_359])
	 (generos
	     [Genres_30]
	     [Genres_0])
	 (idLibro "359")
	 (nPag 540)
	 (publicacion 1974)
	 (url "https://www.goodreads.com/book/show/629.Zen_and_the_Art_of_Motorcycle_Maintenance")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Zen and the Art of Motorcycle Maintenance An Inquiry Into Values"))

	([Book_360] of Libro
	 (autor [Author_360])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "360")
	 (nPag 385)
	 (publicacion 1971)
	 (url "https://www.goodreads.com/book/show/179780.The_Exorcist")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Exorcist"))

	([Book_361] of Libro
	 (autor [Author_361])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "361")
	 (nPag 204)
	 (publicacion 1971)
	 (url "https://www.goodreads.com/book/show/7745.Fear_and_Loathing_in_Las_Vegas")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Fear and Loathing in Las Vegas"))

	([Book_362] of Libro
	 (autor [Author_362])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "362")
	 (nPag 432)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13062488-the-lost-girl")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Lost Girl"))

	([Book_363] of Libro
	 (autor [Author_363])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "363")
	 (nPag 234)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16098473-project-ele")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Project ELE"))

	([Book_364] of Libro
	 (autor [Author_364])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "364")
	 (nPag 325)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12680986-timepiece")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Timepiece"))

	([Book_365] of Libro
	 (autor [Author_365])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "365")
	 (nPag 373)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11544466-breathe")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Breathe"))

	([Book_366] of Libro
	 (autor [Author_366])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "366")
	 (nPag 308)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/10535458-glitch")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Glitch"))

	([Book_367] of Libro
	 (autor [Author_367])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "367")
	 (nPag 388)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/9859436-something-strange-and-deadly")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Something Strange and Deadly"))

	([Book_368] of Libro
	 (autor [Author_368])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "368")
	 (nPag 480)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/40604658-jurassic-park")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Jurassic Park"))

	([Book_369] of Libro
	 (autor [Author_369])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "369")
	 (nPag 884)
	 (publicacion 1960)
	 (url "https://www.goodreads.com/book/show/13033.The_Alexandria_Quartet")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Alexandria Quartet"))

	([Book_370] of Libro
	 (autor [Author_370])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "370")
	 (nPag 578)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/19821.Riddle_Master")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Riddle-Master"))

	([Book_371] of Libro
	 (autor [Author_371])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "371")
	 (nPag 944)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/61146.The_Myst_Reader")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Myst Reader Three Books in One Volume"))

	([Book_372] of Libro
	 (autor [Author_372])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "372")
	 (nPag 1173)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/39058.The_Gormenghast_Novels")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Gormenghast Novels"))

	([Book_373] of Libro
	 (autor [Author_373])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "373")
	 (nPag 679)
	 (publicacion 1953)
	 (url "https://www.goodreads.com/book/show/46654.The_Foundation_Trilogy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Foundation Trilogy"))

	([Book_374] of Libro
	 (autor [Author_374])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "374")
	 (nPag 1224)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/493121.Blue_is_for_Nightmares_Collections")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Blue is for Nightmares Collections"))

	([Book_375] of Libro
	 (autor [Author_375])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "375")
	 (nPag 2480)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/43888.The_Sword_of_Truth_Boxed_Set_I")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Sword of Truth Boxed Set I Wizards First Rule Blood of the Fold Stone of Tears"))

	([Book_376] of Libro
	 (autor [Author_376])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "376")
	 (nPag 1408)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/123544.The_Bourne_Trilogy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Bourne Trilogy"))

	([Book_377] of Libro
	 (autor [Author_377])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "377")
	 (nPag 872)
	 (publicacion 1921)
	 (url "https://www.goodreads.com/book/show/103159.The_Forsyte_Saga")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Forsyte Saga"))

	([Book_378] of Libro
	 (autor [Author_378])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "378")
	 (nPag 416)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/25898833-the-almost-girl")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Almost Girl"))

	([Book_379] of Libro
	 (autor [Author_379])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "379")
	 (nPag 184)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/24034941-the-kaleidoscope")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Kaleidoscope The Gift of Madness"))

	([Book_380] of Libro
	 (autor [Author_380])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "380")
	 (nPag 372)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/22586406-experiment")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Experiment"))

	([Book_381] of Libro
	 (autor [Author_381])
	 (generos
	     [Genres_31]
	     [Genres_4])
	 (idLibro "381")
	 (nPag 272)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18000952-the-wicked-we-have-done")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Wicked We Have Done"))

	([Book_382] of Libro
	 (autor [Author_382])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "382")
	 (nPag 78)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20761374-reasonable-doubt")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Reasonable Doubt Volume 1"))

	([Book_383] of Libro
	 (autor [Author_383])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "383")
	 (nPag 69)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/22029246-netwars")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Netwars The Code"))

	([Book_384] of Libro
	 (autor [Author_384])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "384")
	 (nPag 148)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/21538656-the-branches-of-time")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Branches of Time"))

	([Book_385] of Libro
	 (autor [Author_385])
	 (generos
	     [Genres_25]
	     [Genres_4])
	 (idLibro "385")
	 (nPag 370)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/21407010-haunted")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Haunted State v Sefore 1"))

	([Book_386] of Libro
	 (autor [Author_386])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "386")
	 (nPag 372)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/43479909-broken-skies")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Broken Skies"))

	([Book_387] of Libro
	 (autor [Author_387])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "387")
	 (nPag 384)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18774016-the-young-world")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Young World"))

	([Book_388] of Libro
	 (autor [Author_388])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "388")
	 (nPag 292)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20830614-saving-yesterday")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Saving Yesterday"))

	([Book_389] of Libro
	 (autor [Author_389])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "389")
	 (nPag 454)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/18318651-to-honor-you-call-us")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "To Honor You Call Us"))

	([Book_390] of Libro
	 (autor [Author_390])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "390")
	 (nPag 406)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/16210411-extraction")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Extraction"))

	([Book_391] of Libro
	 (autor [Author_391])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "391")
	 (nPag 196)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20577546-the-headhunters-race")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Headhunters Race"))

	([Book_392] of Libro
	 (autor [Author_392])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "392")
	 (nPag 324)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17878473-the-57-lives-of-alex-wayfare")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The 57 Lives of Alex Wayfare"))

	([Book_393] of Libro
	 (autor [Author_393])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "393")
	 (nPag 398)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/13576132-the-murder-complex")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Murder Complex"))

	([Book_394] of Libro
	 (autor [Author_394])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "394")
	 (nPag 201)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/19091420-murphy")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Murphy"))

	([Book_395] of Libro
	 (autor [Author_395])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "395")
	 (nPag 230)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/22589352-precarious")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Precarious"))

	([Book_396] of Libro
	 (autor [Author_396])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "396")
	 (nPag 211)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/21863686-iron-sinners")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Iron Sinners"))

	([Book_397] of Libro
	 (autor [Author_397])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "397")
	 (nPag 279)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17869229-loving-me-trusting-you")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Loving Me Trusting You"))

	([Book_398] of Libro
	 (autor [Author_398])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "398")
	 (nPag 300)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17876047-defiance")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Defiance"))

	([Book_399] of Libro
	 (autor [Author_399])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "399")
	 (nPag 207)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17370995-chief-s-angel")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Chiefs Angel"))

	([Book_400] of Libro
	 (autor [Author_400])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "400")
	 (nPag 228)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17969685-making-the-cut")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Making the Cut"))

	([Book_401] of Libro
	 (autor [Author_401])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "401")
	 (nPag 144)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/141372.Brian_s_Winter")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Brians Winter"))

	([Book_402] of Libro
	 (autor [Author_402])
	 (generos
	     [Genres_0]
	     [Genres_8])
	 (idLibro "402")
	 (nPag 352)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/4922079-one-second-after")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "One Second After"))

	([Book_403] of Libro
	 (autor [Author_403])
	 (generos
	     [Genres_0]
	     [Genres_33])
	 (idLibro "403")
	 (nPag 384)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/266485.Last_of_the_Breed")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Last of the Breed"))

	([Book_404] of Libro
	 (autor [Author_404])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "404")
	 (nPag 729)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/546018.Roots")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Roots The Saga of an American Family"))

	([Book_405] of Libro
	 (autor [Author_405])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "405")
	 (nPag 720)
	 (publicacion 1851)
	 (url "https://www.goodreads.com/book/show/153747.Moby_Dick_or_the_Whale")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Moby-Dick or the Whale"))

	([Book_406] of Libro
	 (autor [Author_406])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "406")
	 (nPag 226)
	 (publicacion 1877)
	 (url "https://www.goodreads.com/book/show/3685.Black_Beauty")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Black Beauty"))

	([Book_407] of Libro
	 (autor [Author_407])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "407")
	 (nPag 309)
	 (publicacion 1939)
	 (url "https://www.goodreads.com/book/show/51606.Johnny_Got_His_Gun")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Johnny Got His Gun"))

	([Book_408] of Libro
	 (autor [Author_408])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "408")
	 (nPag 352)
	 (publicacion 1812)
	 (url "https://www.goodreads.com/book/show/62111.The_Swiss_Family_Robinson")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Swiss Family Robinson"))

	([Book_409] of Libro
	 (autor [Author_409])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "409")
	 (nPag 562)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/228560.Sophie_s_Choice")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Sophies Choice"))

	([Book_410] of Libro
	 (autor [Author_410])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "410")
	 (nPag 320)
	 (publicacion 1719)
	 (url "https://www.goodreads.com/book/show/2932.Robinson_Crusoe")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Robinson Crusoe"))

	([Book_411] of Libro
	 (autor [Author_411])
	 (generos
	     [Genres_0]
	     [Genres_3])
	 (idLibro "411")
	 (nPag 192)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/41667.My_Side_of_the_Mountain")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "My Side of the Mountain"))

	([Book_412] of Libro
	 (autor [Author_412])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "412")
	 (nPag 184)
	 (publicacion 1960)
	 (url "https://www.goodreads.com/book/show/41044096-island-of-the-blue-dolphins")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Island of the Blue Dolphins"))

	([Book_413] of Libro
	 (autor [Author_413])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "413")
	 (nPag 344)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/8379374-backstage-pass")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Backstage Pass"))

	([Book_414] of Libro
	 (autor [Author_414])
	 (generos
	     [Genres_7]
	     [Genres_6])
	 (idLibro "414")
	 (nPag 336)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6100797-laid-bare")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Laid Bare"))

	([Book_415] of Libro
	 (autor [Author_415])
	 (generos
	     [Genres_7]
	     [Genres_6])
	 (idLibro "415")
	 (nPag 287)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/25185716-long-hard-ride")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Long Hard Ride"))

	([Book_416] of Libro
	 (autor [Author_416])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "416")
	 (nPag 128)
	 (publicacion 1969)
	 (url "https://www.goodreads.com/book/show/598117.Sounder")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sounder"))

	([Book_417] of Libro
	 (autor [Author_417])
	 (generos
	     [Genres_19]
	     [Genres_0])
	 (idLibro "417")
	 (nPag 240)
	 (publicacion 1948)
	 (url "https://www.goodreads.com/book/show/99738.The_Island_Stallion")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Island Stallion"))

	([Book_418] of Libro
	 (autor [Author_418])
	 (generos
	     [Genres_19]
	     [Genres_0])
	 (idLibro "418")
	 (nPag 176)
	 (publicacion 1948)
	 (url "https://www.goodreads.com/book/show/423156.King_of_the_Wind")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "King of the Wind The Story of the Godolphin Arabian"))

	([Book_419] of Libro
	 (autor [Author_419])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "419")
	 (nPag 130)
	 (publicacion 1983)
	 (url "https://www.goodreads.com/book/show/646195.Babe")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Babe The Gallant Pig"))

	([Book_420] of Libro
	 (autor [Author_420])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "420")
	 (nPag 96)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/817982.Stone_Fox")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Stone Fox"))

	([Book_421] of Libro
	 (autor [Author_421])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "421")
	 (nPag 210)
	 (publicacion 1902)
	 (url "https://www.goodreads.com/book/show/34053.Just_So_Stories")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Just So Stories"))

	([Book_422] of Libro
	 (autor [Author_422])
	 (generos
	     [Genres_0]
	     [Genres_19])
	 (idLibro "422")
	 (nPag 319)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7723542-a-dog-s-purpose")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Dogs Purpose"))

	([Book_423] of Libro
	 (autor [Author_423])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "423")
	 (nPag 513)
	 (publicacion 1938)
	 (url "https://www.goodreads.com/book/show/159582.The_Yearling")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Yearling"))

	([Book_424] of Libro
	 (autor [Author_424])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "424")
	 (nPag 364)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/23340.Tailchaser_s_Song")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Tailchasers Song"))

	([Book_425] of Libro
	 (autor [Author_425])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "425")
	 (nPag 145)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/207153.Shiloh")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Shiloh"))

	([Book_426] of Libro
	 (autor [Author_426])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "426")
	 (nPag 132)
	 (publicacion 1956)
	 (url "https://www.goodreads.com/book/show/130580.Old_Yeller")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Old Yeller"))

	([Book_427] of Libro
	 (autor [Author_427])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "427")
	 (nPag 182)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/357664.Because_of_Winn_Dixie")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Because of Winn-Dixie"))

	([Book_428] of Libro
	 (autor [Author_428])
	 (generos
	     [Genres_0]
	     [Genres_19])
	 (idLibro "428")
	 (nPag 145)
	 (publicacion 1960)
	 (url "https://www.goodreads.com/book/show/231821.The_Incredible_Journey")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Incredible Journey"))

	([Book_429] of Libro
	 (autor [Author_429])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "429")
	 (nPag 256)
	 (publicacion 1908)
	 (url "https://www.goodreads.com/book/show/5659.The_Wind_in_the_Willows")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Wind in the Willows"))

	([Book_430] of Libro
	 (autor [Author_430])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "430")
	 (nPag 272)
	 (publicacion 1961)
	 (url "https://www.goodreads.com/book/show/10365.Where_the_Red_Fern_Grows")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Where the Red Fern Grows"))

	([Book_431] of Libro
	 (autor [Author_431])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "431")
	 (nPag 384)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/40603587-the-last-wish")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Last Wish"))

	([Book_432] of Libro
	 (autor [Author_432])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "432")
	 (nPag 501)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/185253.The_Magic_of_Recluce")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Magic of Recluce"))

	([Book_433] of Libro
	 (autor [Author_433])
	 (generos
	     [Genres_0]
	     [Genres_34])
	 (idLibro "433")
	 (nPag 325)
	 (publicacion 2017)
	 (url "https://www.goodreads.com/book/show/35642518-for-the-love-of-armin")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "For the Love of Armin"))

	([Book_434] of Libro
	 (autor [Author_434])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "434")
	 (nPag 247)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/68210.Gilead")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gilead"))

	([Book_435] of Libro
	 (autor [Author_435])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "435")
	 (nPag 220)
	 (publicacion 1971)
	 (url "https://www.goodreads.com/book/show/189147.To_Your_Scattered_Bodies_Go")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "To Your Scattered Bodies Go"))

	([Book_436] of Libro
	 (autor [Author_436])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "436")
	 (nPag 262)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/60211.The_Shadow_of_the_Torturer")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Shadow of the Torturer"))

	([Book_437] of Libro
	 (autor [Author_437])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "437")
	 (nPag 336)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/61905.Barrayar")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Barrayar"))

	([Book_438] of Libro
	 (autor [Author_438])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "438")
	 (nPag 544)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/40792913-altered-carbon")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Altered Carbon"))

	([Book_439] of Libro
	 (autor [Author_439])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "439")
	 (nPag 293)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/18630.The_Player_of_Games")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Player of Games"))

	([Book_440] of Libro
	 (autor [Author_440])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "440")
	 (nPag 278)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/218427.Gateway")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Gateway"))

	([Book_441] of Libro
	 (autor [Author_441])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "441")
	 (nPag 493)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/77773.To_Say_Nothing_of_the_Dog")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "To Say Nothing of the Dog"))

	([Book_442] of Libro
	 (autor [Author_442])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "442")
	 (nPag 96)
	 (publicacion 1884)
	 (url "https://www.goodreads.com/book/show/433567.Flatland")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Flatland A Romance of Many Dimensions"))

	([Book_443] of Libro
	 (autor [Author_443])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "443")
	 (nPag 613)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/77711.A_Fire_Upon_the_Deep")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Fire Upon the Deep"))

	([Book_444] of Libro
	 (autor [Author_444])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "444")
	 (nPag 572)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/77507.Red_Mars")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Red Mars"))

	([Book_445] of Libro
	 (autor [Author_445])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "445")
	 (nPag 204)
	 (publicacion 1961)
	 (url "https://www.goodreads.com/book/show/95558.Solaris")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Solaris"))

	([Book_446] of Libro
	 (autor [Author_446])
	 (generos
	     [Genres_5]
	     [Genres_4])
	 (idLibro "446")
	 (nPag 240)
	 (publicacion 1864)
	 (url "https://www.goodreads.com/book/show/32829.Journey_to_the_Center_of_the_Earth")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Journey to the Center of the Earth Extraordinary Voyages 3"))

	([Book_447] of Libro
	 (autor [Author_447])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "447")
	 (nPag 258)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/333867.The_Stars_My_Destination")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Stars My Destination"))

	([Book_448] of Libro
	 (autor [Author_448])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "448")
	 (nPag 431)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/334176.The_Sparrow")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Sparrow"))

	([Book_449] of Libro
	 (autor [Author_449])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "449")
	 (nPag 580)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/61666.Contact")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Contact"))

	([Book_450] of Libro
	 (autor [Author_450])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "450")
	 (nPag 351)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/36510196-old-man-s-war")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Old Mans War"))

	([Book_451] of Libro
	 (autor [Author_451])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "451")
	 (nPag 318)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/40111371-the-nanny-song")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Nanny Song"))

	([Book_452] of Libro
	 (autor [Author_452])
	 (generos
	     [Genres_11]
	     [Genres_0])
	 (idLibro "452")
	 (nPag 74)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/40593473-finding-hope-in-the-darkness-of-grief")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Finding Hope in the Darkness of Grief Spiritual Insights Expressed Through Art Poetry and Prose"))

	([Book_453] of Libro
	 (autor [Author_453])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "453")
	 (nPag 382)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17339738-riddle-in-stone")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Riddle in Stone"))

	([Book_454] of Libro
	 (autor [Author_454])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "454")
	 (nPag 333)
	 (publicacion 2017)
	 (url "https://www.goodreads.com/book/show/34521870-mistress-suffragette")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Mistress Suffragette"))

	([Book_455] of Libro
	 (autor [Author_455])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "455")
	 (nPag 384)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7904453-the-broken-kingdoms")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Broken Kingdoms"))

	([Book_456] of Libro
	 (autor [Author_456])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "456")
	 (nPag 312)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/3700085-marcelo-in-the-real-world")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Marcelo in the Real World"))

	([Book_457] of Libro
	 (autor [Author_457])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "457")
	 (nPag 314)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/33107825-stitch")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Stitch"))

	([Book_458] of Libro
	 (autor [Author_458])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "458")
	 (nPag 324)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/10031259-the-emperor-s-edge")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Emperors Edge"))

	([Book_459] of Libro
	 (autor [Author_459])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "459")
	 (nPag 272)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/5711714-academy-7")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Academy 7"))

	([Book_460] of Libro
	 (autor [Author_460])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "460")
	 (nPag 418)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/9752790-burn")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Burn"))

	([Book_461] of Libro
	 (autor [Author_461])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "461")
	 (nPag 492)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/28735.By_the_Sword")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "By the Sword"))

	([Book_462] of Libro
	 (autor [Author_462])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "462")
	 (nPag 306)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/228333.The_Nanny_Diaries")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Nanny Diaries"))

	([Book_463] of Libro
	 (autor [Author_463])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "463")
	 (nPag 365)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/38311414-house-of-sand-and-fog")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "House of Sand and Fog"))

	([Book_464] of Libro
	 (autor [Author_464])
	 (generos
	     [Genres_6]
	     [Genres_0])
	 (idLibro "464")
	 (nPag 224)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/73968.Love_Story")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Love Story"))

	([Book_465] of Libro
	 (autor [Author_465])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "465")
	 (nPag 304)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/5191.The_Pilot_s_Wife")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Pilots Wife"))

	([Book_466] of Libro
	 (autor [Author_466])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "466")
	 (nPag 337)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/7354.The_Shipping_News")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Shipping News"))

	([Book_467] of Libro
	 (autor [Author_467])
	 (generos
	     [Genres_0]
	     [Genres_14])
	 (idLibro "467")
	 (nPag 248)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/186190.Forrest_Gump")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Forrest Gump"))

	([Book_468] of Libro
	 (autor [Author_468])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "468")
	 (nPag 406)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/37442.Wicked")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Wicked The Life and Times of the Wicked Witch of the West"))

	([Book_469] of Libro
	 (autor [Author_469])
	 (generos
	     [Genres_0]
	     [Genres_3])
	 (idLibro "469")
	 (nPag 110)
	 (publicacion 1984)
	 (url "https://www.goodreads.com/book/show/139253.The_House_on_Mango_Street")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The House on Mango Street"))

	([Book_470] of Libro
	 (autor [Author_470])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "470")
	 (nPag 170)
	 (publicacion 1895)
	 (url "https://www.goodreads.com/book/show/35220.The_Red_Badge_of_Courage")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Red Badge of Courage"))

	([Book_471] of Libro
	 (autor [Author_471])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "471")
	 (nPag 304)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/7455.Sex_and_the_City")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sex and the City"))

	([Book_472] of Libro
	 (autor [Author_472])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "472")
	 (nPag 209)
	 (publicacion 1927)
	 (url "https://www.goodreads.com/book/show/59716.To_the_Lighthouse")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "To the Lighthouse"))

	([Book_473] of Libro
	 (autor [Author_473])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "473")
	 (nPag 329)
	 (publicacion 1916)
	 (url "https://www.goodreads.com/book/show/7588.A_Portrait_of_the_Artist_as_a_Young_Man")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "A Portrait of the Artist as a Young Man"))

	([Book_474] of Libro
	 (autor [Author_474])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "474")
	 (nPag 246)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/133518.The_Things_They_Carried")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Things They Carried"))

	([Book_475] of Libro
	 (autor [Author_475])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "475")
	 (nPag 326)
	 (publicacion 1929)
	 (url "https://www.goodreads.com/book/show/10975.The_Sound_and_the_Fury")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Sound and the Fury"))

	([Book_476] of Libro
	 (autor [Author_476])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "476")
	 (nPag 416)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/310612.A_Confederacy_of_Dunces")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "A Confederacy of Dunces"))

	([Book_477] of Libro
	 (autor [Author_477])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "477")
	 (nPag 418)
	 (publicacion 1931)
	 (url "https://www.goodreads.com/book/show/1078.The_Good_Earth")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Good Earth"))

	([Book_478] of Libro
	 (autor [Author_478])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "478")
	 (nPag 307)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/70401.On_the_Road")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "On the Road"))

	([Book_479] of Libro
	 (autor [Author_479])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "479")
	 (nPag 307)
	 (publicacion 1983)
	 (url "https://www.goodreads.com/book/show/133454.Jhereg")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Jhereg"))

	([Book_480] of Libro
	 (autor [Author_480])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "480")
	 (nPag 534)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/2315892.Best_Served_Cold")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Best Served Cold"))

	([Book_481] of Libro
	 (autor [Author_481])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "481")
	 (nPag 296)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/4345290-the-crown-conspiracy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Crown Conspiracy"))

	([Book_482] of Libro
	 (autor [Author_482])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "482")
	 (nPag 656)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/261604.Rhapsody")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Rhapsody Child of Blood"))

	([Book_483] of Libro
	 (autor [Author_483])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "483")
	 (nPag 421)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/589979.Daughter_of_the_Empire")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Daughter of the Empire"))

	([Book_484] of Libro
	 (autor [Author_484])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "484")
	 (nPag 430)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/28481.Dragon_Wing")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dragon Wing"))

	([Book_485] of Libro
	 (autor [Author_485])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "485")
	 (nPag 449)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12891107-king-of-thorns")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "King of Thorns"))

	([Book_486] of Libro
	 (autor [Author_486])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "486")
	 (nPag 305)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/77160.Across_the_Nightingale_Floor")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Across the Nightingale Floor"))

	([Book_487] of Libro
	 (autor [Author_487])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "487")
	 (nPag 325)
	 (publicacion 1983)
	 (url "https://www.goodreads.com/book/show/76658.On_a_Pale_Horse")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "On a Pale Horse"))

	([Book_488] of Libro
	 (autor [Author_488])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "488")
	 (nPag 1040)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/96281.The_Deed_of_Paksenarrion")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Deed of Paksenarrion"))

	([Book_489] of Libro
	 (autor [Author_489])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "489")
	 (nPag 181)
	 (publicacion 1972)
	 (url "https://www.goodreads.com/book/show/30036.Elric_of_Melnibon_")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Elric of Melnibon"))

	([Book_490] of Libro
	 (autor [Author_490])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "490")
	 (nPag 319)
	 (publicacion 1984)
	 (url "https://www.goodreads.com/book/show/140671.The_Black_Company")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Black Company"))

	([Book_491] of Libro
	 (autor [Author_491])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "491")
	 (nPag 880)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/45100.Ship_of_Magic")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Ship of Magic"))

	([Book_492] of Libro
	 (autor [Author_492])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "492")
	 (nPag 1160)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/179033.The_Chronicles_of_Thomas_Covenant_the_Unbeliever")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Chronicles of Thomas Covenant the Unbeliever"))

	([Book_493] of Libro
	 (autor [Author_493])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "493")
	 (nPag 416)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/3428935-the-warded-man")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Warded Man"))

	([Book_494] of Libro
	 (autor [Author_494])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "494")
	 (nPag 666)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/55399.Gardens_of_the_Moon")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gardens of the Moon"))

	([Book_495] of Libro
	 (autor [Author_495])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "495")
	 (nPag 499)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/29588376-the-lies-of-locke-lamora")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Lies of Locke Lamora"))

	([Book_496] of Libro
	 (autor [Author_496])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "496")
	 (nPag 208)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15852756-naked")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Naked"))

	([Book_497] of Libro
	 (autor [Author_497])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "497")
	 (nPag 604)
	 (publicacion 1965)
	 (url "https://www.goodreads.com/book/show/234225.Dune")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Dune"))

	([Book_498] of Libro
	 (autor [Author_498])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "498")
	 (nPag 722)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/41977.Circle_of_Friends")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Circle of Friends"))

	([Book_499] of Libro
	 (autor [Author_499])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "499")
	 (nPag 244)
	 (publicacion 1952)
	 (url "https://www.goodreads.com/book/show/298663.The_Killer_Inside_Me")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Killer Inside Me"))

	([Book_500] of Libro
	 (autor [Author_500])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "500")
	 (nPag 454)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/498214.Daggerspell")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Daggerspell"))

	([Book_501] of Libro
	 (autor [Author_501])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "501")
	 (nPag 344)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/135836.Trainspotting")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Trainspotting"))

	([Book_502] of Libro
	 (autor [Author_502])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "502")
	 (nPag 246)
	 (publicacion 1925)
	 (url "https://www.goodreads.com/book/show/99664.The_Painted_Veil")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Painted Veil"))

	([Book_503] of Libro
	 (autor [Author_503])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "503")
	 (nPag 230)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/11899.The_Hours")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Hours"))

	([Book_504] of Libro
	 (autor [Author_504])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "504")
	 (nPag 360)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/239239.The_Prestige")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Prestige"))

	([Book_505] of Libro
	 (autor [Author_505])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "505")
	 (nPag 224)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/83674.The_Bridges_of_Madison_County")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Bridges of Madison County"))

	([Book_506] of Libro
	 (autor [Author_506])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "506")
	 (nPag 181)
	 (publicacion 1953)
	 (url "https://www.goodreads.com/book/show/3758.Casino_Royale")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Casino Royale"))

	([Book_507] of Libro
	 (autor [Author_507])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "507")
	 (nPag 288)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/2152.The_Jane_Austen_Book_Club")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Jane Austen Book Club"))

	([Book_508] of Libro
	 (autor [Author_508])
	 (generos
	     [Genres_0]
	     [Genres_35])
	 (idLibro "508")
	 (nPag 340)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/285092.High_Fidelity")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "High Fidelity"))

	([Book_509] of Libro
	 (autor [Author_509])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "509")
	 (nPag 360)
	 (publicacion 1910)
	 (url "https://www.goodreads.com/book/show/480204.The_Phantom_of_the_Opera")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Phantom of the Opera"))

	([Book_510] of Libro
	 (autor [Author_510])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "510")
	 (nPag 410)
	 (publicacion 1826)
	 (url "https://www.goodreads.com/book/show/38296.The_Last_of_the_Mohicans")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Last of the Mohicans"))

	([Book_511] of Libro
	 (autor [Author_511])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "511")
	 (nPag 338)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/23807.The_Silence_of_the_Lambs")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Silence of the Lambs"))

	([Book_512] of Libro
	 (autor [Author_512])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "512")
	 (nPag 320)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/126232.Jaws")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Jaws"))

	([Book_513] of Libro
	 (autor [Author_513])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "513")
	 (nPag 288)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/17231.Darkly_Dreaming_Dexter")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Darkly Dreaming Dexter"))

	([Book_514] of Libro
	 (autor [Author_514])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "514")
	 (nPag 496)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/33482.The_Coming_of_Conan_the_Cimmerian")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Coming of Conan the Cimmerian"))

	([Book_515] of Libro
	 (autor [Author_515])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "515")
	 (nPag 345)
	 (publicacion 1984)
	 (url "https://www.goodreads.com/book/show/618177.Legend")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Legend"))

	([Book_516] of Libro
	 (autor [Author_516])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "516")
	 (nPag 428)
	 (publicacion 2016)
	 (url "https://www.goodreads.com/book/show/25897792-into-the-dim")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Into the Dim"))

	([Book_517] of Libro
	 (autor [Author_517])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "517")
	 (nPag 250)
	 (publicacion 2016)
	 (url "https://www.goodreads.com/book/show/18280801-stripped-2")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Stripped 2 A Ferro Family Novel"))

	([Book_518] of Libro
	 (autor [Author_518])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "518")
	 (nPag 304)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18744040-last-light")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Last Light"))

	([Book_519] of Libro
	 (autor [Author_519])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "519")
	 (nPag 212)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/162086.Such_a_Pretty_Girl")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Such a Pretty Girl"))

	([Book_520] of Libro
	 (autor [Author_520])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "520")
	 (nPag 256)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/253106.The_Earth_My_Butt_and_Other_Big_Round_Things")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Earth My Butt and Other Big Round Things"))

	([Book_521] of Libro
	 (autor [Author_521])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "521")
	 (nPag 172)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/97408.Perfect")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Perfect"))

	([Book_522] of Libro
	 (autor [Author_522])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "522")
	 (nPag 384)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/702539.Get_Shorty")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Get Shorty"))

	([Book_523] of Libro
	 (autor [Author_523])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "523")
	 (nPag 304)
	 (publicacion 1975)
	 (url "https://www.goodreads.com/book/show/43339.Where_Are_the_Children_")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Where Are the Children"))

	([Book_524] of Libro
	 (autor [Author_524])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "524")
	 (nPag 212)
	 (publicacion 1923)
	 (url "https://www.goodreads.com/book/show/192893.Whose_Body_")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Whose Body"))

	([Book_525] of Libro
	 (autor [Author_525])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "525")
	 (nPag 352)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/104106.The_Ritual_Bath")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Ritual Bath"))

	([Book_526] of Libro
	 (autor [Author_526])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "526")
	 (nPag 116)
	 (publicacion 1934)
	 (url "https://www.goodreads.com/book/show/25807.The_Postman_Always_Rings_Twice")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Postman Always Rings Twice"))

	([Book_527] of Libro
	 (autor [Author_527])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "527")
	 (nPag 559)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/29044.The_Secret_History")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Secret History"))

	([Book_528] of Libro
	 (autor [Author_528])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "528")
	 (nPag 479)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/37301.Rules_of_Prey")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Rules of Prey"))

	([Book_529] of Libro
	 (autor [Author_529])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "529")
	 (nPag 460)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/77142.Snow_Falling_on_Cedars")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Snow Falling on Cedars"))

	([Book_530] of Libro
	 (autor [Author_530])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "530")
	 (nPag 482)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/32508.The_Black_Echo")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Black Echo"))

	([Book_531] of Libro
	 (autor [Author_531])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "531")
	 (nPag 201)
	 (publicacion 1934)
	 (url "https://www.goodreads.com/book/show/80616.The_Thin_Man")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Thin Man"))

	([Book_532] of Libro
	 (autor [Author_532])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "532")
	 (nPag 413)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/31374.A_Great_Deliverance")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Great Deliverance"))

	([Book_533] of Libro
	 (autor [Author_533])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "533")
	 (nPag 320)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/2247142.The_Talented_Mr_Ripley")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Talented Mr Ripley"))

	([Book_534] of Libro
	 (autor [Author_534])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "534")
	 (nPag 433)
	 (publicacion 1981)
	 (url "https://www.goodreads.com/book/show/762806.Gorky_Park")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Gorky Park"))

	([Book_535] of Libro
	 (autor [Author_535])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "535")
	 (nPag 469)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/124509.Smilla_s_Sense_of_Snow")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Smillas Sense of Snow"))

	([Book_536] of Libro
	 (autor [Author_536])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "536")
	 (nPag 400)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/32499.The_Pelican_Brief")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Pelican Brief"))

	([Book_537] of Libro
	 (autor [Author_537])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "537")
	 (nPag 308)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/64863.A_is_for_Alibi")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "A is for Alibi"))

	([Book_538] of Libro
	 (autor [Author_538])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "538")
	 (nPag 144)
	 (publicacion 1886)
	 (url "https://www.goodreads.com/book/show/51496.The_Strange_Case_of_Dr_Jekyll_and_Mr_Hyde")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Strange Case of Dr Jekyll and Mr Hyde"))

	([Book_539] of Libro
	 (autor [Author_539])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "539")
	 (nPag 421)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/425029.Presumed_Innocent")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Presumed Innocent"))

	([Book_540] of Libro
	 (autor [Author_540])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "540")
	 (nPag 231)
	 (publicacion 1939)
	 (url "https://www.goodreads.com/book/show/2052.The_Big_Sleep")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Big Sleep"))

	([Book_541] of Libro
	 (autor [Author_541])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "541")
	 (nPag 416)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/21671.Mystic_River")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Mystic River"))

	([Book_542] of Libro
	 (autor [Author_542])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "542")
	 (nPag 448)
	 (publicacion 1969)
	 (url "https://www.goodreads.com/book/show/22034.The_Godfather")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Godfather"))

	([Book_543] of Libro
	 (autor [Author_543])
	 (generos
	     [Genres_3]
	     [Genres_12])
	 (idLibro "543")
	 (nPag 298)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/138202.Sloppy_Firsts")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sloppy Firsts"))

	([Book_544] of Libro
	 (autor [Author_544])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "544")
	 (nPag 410)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11387515-wonder")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Wonder"))

	([Book_545] of Libro
	 (autor [Author_545])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "545")
	 (nPag 444)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/248704.It_s_Kind_of_a_Funny_Story")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Its Kind of a Funny Story"))

	([Book_546] of Libro
	 (autor [Author_546])
	 (generos
	     [Genres_0]
	     [Genres_36])
	 (idLibro "546")
	 (nPag 512)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/10996342-the-art-of-fielding")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Art of Fielding"))

	([Book_547] of Libro
	 (autor [Author_547])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "547")
	 (nPag 477)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15796700-americanah")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Americanah"))

	([Book_548] of Libro
	 (autor [Author_548])
	 (generos
	     [Genres_14]
	     [Genres_0])
	 (idLibro "548")
	 (nPag 64)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/39291659-go-the-f-k-to-sleep")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Go the Fuck to Sleep"))

	([Book_549] of Libro
	 (autor [Author_549])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "549")
	 (nPag 150)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/10746542-the-sense-of-an-ending")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Sense of an Ending"))

	([Book_550] of Libro
	 (autor [Author_550])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "550")
	 (nPag 359)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9736930-before-i-go-to-sleep")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Before I Go to Sleep"))

	([Book_551] of Libro
	 (autor [Author_551])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "551")
	 (nPag 288)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7331435-a-visit-from-the-goon-squad")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "A Visit from the Goon Squad"))

	([Book_552] of Libro
	 (autor [Author_552])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "552")
	 (nPag 337)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/18774964-a-man-called-ove")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "A Man Called Ove"))

	([Book_553] of Libro
	 (autor [Author_553])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "553")
	 (nPag 455)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16160797-the-cuckoo-s-calling")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Cuckoos Calling"))

	([Book_554] of Libro
	 (autor [Author_554])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "554")
	 (nPag 297)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16181775-the-rosie-project")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Rosie Project"))

	([Book_555] of Libro
	 (autor [Author_555])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "555")
	 (nPag 323)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/22557272-the-girl-on-the-train")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Girl on the Train"))

	([Book_556] of Libro
	 (autor [Author_556])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "556")
	 (nPag 306)
	 (publicacion 1726)
	 (url "https://www.goodreads.com/book/show/7733.Gulliver_s_Travels")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Gullivers Travels"))

	([Book_557] of Libro
	 (autor [Author_557])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "557")
	 (nPag 364)
	 (publicacion 1928)
	 (url "https://www.goodreads.com/book/show/32049.Lady_Chatterley_s_Lover")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Lady Chatterleys Lover"))

	([Book_558] of Libro
	 (autor [Author_558])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "558")
	 (nPag 468)
	 (publicacion 1913)
	 (url "https://www.goodreads.com/book/show/12749.Swann_s_Way")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Swanns Way"))

	([Book_559] of Libro
	 (autor [Author_559])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "559")
	 (nPag 912)
	 (publicacion 1848)
	 (url "https://www.goodreads.com/book/show/5797.Vanity_Fair")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Vanity Fair"))

	([Book_560] of Libro
	 (autor [Author_560])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "560")
	 (nPag 289)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/7437.Naked_Lunch")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Naked Lunch"))

	([Book_561] of Libro
	 (autor [Author_561])
	 (generos
	     [Genres_30]
	     [Genres_0])
	 (idLibro "561")
	 (nPag 403)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/10959.Sophie_s_World")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Sophies World"))

	([Book_562] of Libro
	 (autor [Author_562])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "562")
	 (nPag 1088)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/6759.Infinite_Jest")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Infinite Jest"))

	([Book_563] of Libro
	 (autor [Author_563])
	 (generos
	     [Genres_0]
	     [Genres_24])
	 (idLibro "563")
	 (nPag 342)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/27523.Left_Behind")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Left Behind"))

	([Book_564] of Libro
	 (autor [Author_564])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "564")
	 (nPag 376)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/5168.Where_the_Heart_Is")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Where the Heart Is"))

	([Book_565] of Libro
	 (autor [Author_565])
	 (generos
	     [Genres_6]
	     [Genres_12])
	 (idLibro "565")
	 (nPag 501)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/366522.P_S_I_Love_You")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "PS I Love You"))

	([Book_566] of Libro
	 (autor [Author_566])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "566")
	 (nPag 383)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/137791.Divine_Secrets_of_the_Ya_Ya_Sisterhood")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Divine Secrets of the Ya-Ya Sisterhood"))

	([Book_567] of Libro
	 (autor [Author_567])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "567")
	 (nPag 160)
	 (publicacion 1942)
	 (url "https://www.goodreads.com/book/show/297249.The_Boxcar_Children")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Boxcar Children"))

	([Book_568] of Libro
	 (autor [Author_568])
	 (generos
	     [Genres_0]
	     [Genres_37])
	 (idLibro "568")
	 (nPag 679)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/16735.The_Prince_of_Tides")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Prince of Tides"))

	([Book_569] of Libro
	 (autor [Author_569])
	 (generos
	     [Genres_6]
	     [Genres_12])
	 (idLibro "569")
	 (nPag 284)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7743801-three-daves")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Three Daves"))

	([Book_570] of Libro
	 (autor [Author_570])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "570")
	 (nPag 332)
	 (publicacion 1920)
	 (url "https://www.goodreads.com/book/show/53835.The_Age_of_Innocence")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Age of Innocence"))

	([Book_571] of Libro
	 (autor [Author_571])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "571")
	 (nPag 592)
	 (publicacion 1957)
	 (url "https://www.goodreads.com/book/show/130440.Doctor_Zhivago")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Doctor Zhivago"))

	([Book_572] of Libro
	 (autor [Author_572])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "572")
	 (nPag 119)
	 (publicacion 1908)
	 (url "https://www.goodreads.com/book/show/3087.A_Room_with_a_View")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "A Room with a View"))

	([Book_573] of Libro
	 (autor [Author_573])
	 (generos
	     [Genres_25]
	     [Genres_24])
	 (idLibro "573")
	 (nPag 464)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/11422.Redeeming_Love")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Redeeming Love"))

	([Book_574] of Libro
	 (autor [Author_574])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "574")
	 (nPag 337)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11447921-beautiful-ruins")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Beautiful Ruins"))

	([Book_575] of Libro
	 (autor [Author_575])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "575")
	 (nPag 320)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13227454-the-unlikely-pilgrimage-of-harold-fry")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Unlikely Pilgrimage of Harold Fry"))

	([Book_576] of Libro
	 (autor [Author_576])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "576")
	 (nPag 443)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11529868-the-orphan-master-s-son")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Orphan Masters Son"))

	([Book_577] of Libro
	 (autor [Author_577])
	 (generos
	     [Genres_0]
	     [Genres_3])
	 (idLibro "577")
	 (nPag 360)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12875258-tell-the-wolves-i-m-home")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Tell the Wolves Im Home"))

	([Book_578] of Libro
	 (autor [Author_578])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "578")
	 (nPag 421)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11367726-defending-jacob")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Defending Jacob"))

	([Book_579] of Libro
	 (autor [Author_579])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "579")
	 (nPag 128)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/322351.How_to_Eat_Fried_Worms")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "How to Eat Fried Worms"))

	([Book_580] of Libro
	 (autor [Author_580])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "580")
	 (nPag 144)
	 (publicacion 1947)
	 (url "https://www.goodreads.com/book/show/25051.Mrs_Piggle_Wiggle")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Mrs Piggle-Wiggle"))

	([Book_581] of Libro
	 (autor [Author_581])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "581")
	 (nPag 300)
	 (publicacion 1964)
	 (url "https://www.goodreads.com/book/show/232576.Harriet_the_Spy")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Harriet the Spy"))

	([Book_582] of Libro
	 (autor [Author_582])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "582")
	 (nPag 520)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/13518102-salvage")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Salvage"))

	([Book_583] of Libro
	 (autor [Author_583])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "583")
	 (nPag 382)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/12369550-elusion")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Elusion"))

	([Book_584] of Libro
	 (autor [Author_584])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "584")
	 (nPag 418)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17149396-avalon")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Avalon"))

	([Book_585] of Libro
	 (autor [Author_585])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "585")
	 (nPag 310)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17165932-independent-study")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Independent Study"))

	([Book_586] of Libro
	 (autor [Author_586])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "586")
	 (nPag 400)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/80660.We_Need_to_Talk_About_Kevin")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "We Need to Talk About Kevin"))

	([Book_587] of Libro
	 (autor [Author_587])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "587")
	 (nPag 312)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/227571.Peace_Like_a_River")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Peace Like a River"))

	([Book_588] of Libro
	 (autor [Author_588])
	 (generos
	     [Genres_0]
	     [Genres_38])
	 (idLibro "588")
	 (nPag 204)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/40937505")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo ""))

	([Book_589] of Libro
	 (autor [Author_589])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "589")
	 (nPag 266)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/6948436-little-bee")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Little Bee"))

	([Book_590] of Libro
	 (autor [Author_590])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "590")
	 (nPag 292)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/2153405.Still_Alice")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Still Alice"))

	([Book_591] of Libro
	 (autor [Author_591])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "591")
	 (nPag 299)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11706625-truth")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Truth"))

	([Book_592] of Libro
	 (autor [Author_592])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "592")
	 (nPag 339)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11455096-tempest")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Tempest"))

	([Book_593] of Libro
	 (autor [Author_593])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "593")
	 (nPag 466)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9644151-ashfall")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Ashfall"))

	([Book_594] of Libro
	 (autor [Author_594])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "594")
	 (nPag 252)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/592089.The_Bar_Code_Tattoo")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Bar Code Tattoo"))

	([Book_595] of Libro
	 (autor [Author_595])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "595")
	 (nPag 276)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/71865.Tomorrow_When_the_War_Began")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Tomorrow When the War Began"))

	([Book_596] of Libro
	 (autor [Author_596])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "596")
	 (nPag 320)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/1722717.The_Declaration")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Declaration"))

	([Book_597] of Libro
	 (autor [Author_597])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "597")
	 (nPag 352)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11861062-starters")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Starters"))

	([Book_598] of Libro
	 (autor [Author_598])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "598")
	 (nPag 55)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15759752-because-you-tempt-me")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Because You Tempt Me"))

	([Book_599] of Libro
	 (autor [Author_599])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "599")
	 (nPag 221)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16087848-mine-to-hold")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Mine to Hold"))

	([Book_600] of Libro
	 (autor [Author_600])
	 (generos
	     [Genres_7]
	     [Genres_6])
	 (idLibro "600")
	 (nPag 384)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/793003.Broken")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Broken"))

	([Book_601] of Libro
	 (autor [Author_601])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "601")
	 (nPag 231)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17828418-fixed-on-you")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Fixed on You"))

	([Book_602] of Libro
	 (autor [Author_602])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "602")
	 (nPag 309)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/34453559-strangers")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Strangers"))

	([Book_603] of Libro
	 (autor [Author_603])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "603")
	 (nPag 371)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16099159-claim-me")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Claim Me"))

	([Book_604] of Libro
	 (autor [Author_604])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "604")
	 (nPag 338)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17156015-beauty-from-pain")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Beauty from Pain"))

	([Book_605] of Libro
	 (autor [Author_605])
	 (generos
	     [Genres_0]
	     [Genres_7])
	 (idLibro "605")
	 (nPag 103)
	 (publicacion 1928)
	 (url "https://www.goodreads.com/book/show/436806.Story_of_the_Eye")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Story of the Eye"))

	([Book_606] of Libro
	 (autor [Author_606])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "606")
	 (nPag 335)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/17866.Glasshouse")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Glasshouse"))

	([Book_607] of Libro
	 (autor [Author_607])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "607")
	 (nPag 139)
	 (publicacion 1938)
	 (url "https://www.goodreads.com/book/show/61549.Mr_Popper_s_Penguins")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Mr Poppers Penguins"))

	([Book_608] of Libro
	 (autor [Author_608])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "608")
	 (nPag 350)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/6703145-spellwright")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Spellwright"))

	([Book_609] of Libro
	 (autor [Author_609])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "609")
	 (nPag 613)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/144127.The_Runelords")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Runelords"))

	([Book_610] of Libro
	 (autor [Author_610])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "610")
	 (nPag 398)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16160701-fire-country")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Fire Country"))

	([Book_611] of Libro
	 (autor [Author_611])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "611")
	 (nPag 610)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/35292712-forging-zero")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Forging Zero"))

	([Book_612] of Libro
	 (autor [Author_612])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "612")
	 (nPag 597)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/278280.River_of_Gods")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "River of Gods"))

	([Book_613] of Libro
	 (autor [Author_613])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "613")
	 (nPag 432)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/240297.The_Skinner")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Skinner"))

	([Book_614] of Libro
	 (autor [Author_614])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "614")
	 (nPag 338)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/264950.Calculating_God")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Calculating God"))

	([Book_615] of Libro
	 (autor [Author_615])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "615")
	 (nPag 518)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/22733729-the-long-way-to-a-small-angry-planet")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Long Way to a Small Angry Planet"))

	([Book_616] of Libro
	 (autor [Author_616])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "616")
	 (nPag 746)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/3437328-the-temporal-void")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Temporal Void"))

	([Book_617] of Libro
	 (autor [Author_617])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "617")
	 (nPag 416)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/1137215.Boneshaker")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Boneshaker"))

	([Book_618] of Libro
	 (autor [Author_618])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "618")
	 (nPag 756)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/89184.Absolution_Gap")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Absolution Gap"))

	([Book_619] of Libro
	 (autor [Author_619])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "619")
	 (nPag 460)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13642710-nexus")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Nexus"))

	([Book_620] of Libro
	 (autor [Author_620])
	 (generos
	     [Genres_9]
	     [Genres_4])
	 (idLibro "620")
	 (nPag 372)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15062217-14")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "14"))

	([Book_621] of Libro
	 (autor [Author_621])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "621")
	 (nPag 461)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17235026-the-girl-with-all-the-gifts")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Girl With All the Gifts"))

	([Book_622] of Libro
	 (autor [Author_622])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "622")
	 (nPag 486)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/8488830-freedom")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Freedom"))

	([Book_623] of Libro
	 (autor [Author_623])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "623")
	 (nPag 347)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9634967-robopocalypse")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Robopocalypse"))

	([Book_624] of Libro
	 (autor [Author_624])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "624")
	 (nPag 195)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17934530-annihilation")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Annihilation"))

	([Book_625] of Libro
	 (autor [Author_625])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "625")
	 (nPag 336)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7562764-the-quantum-thief")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Quantum Thief"))

	([Book_626] of Libro
	 (autor [Author_626])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "626")
	 (nPag 345)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9265453-embassytown")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Embassytown"))

	([Book_627] of Libro
	 (autor [Author_627])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "627")
	 (nPag 400)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/20518872-the-three-body-problem")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Three-Body Problem"))

	([Book_628] of Libro
	 (autor [Author_628])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "628")
	 (nPag 384)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/48484.Blindsight")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Blindsight"))

	([Book_629] of Libro
	 (autor [Author_629])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "629")
	 (nPag 464)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/910863.Spin")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Spin"))

	([Book_630] of Libro
	 (autor [Author_630])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "630")
	 (nPag 386)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17333324-ancillary-justice")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Ancillary Justice"))

	([Book_631] of Libro
	 (autor [Author_631])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "631")
	 (nPag 320)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/25354.Bastard_Out_of_Carolina")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Bastard Out of Carolina"))

	([Book_632] of Libro
	 (autor [Author_632])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "632")
	 (nPag 290)
	 (publicacion 1964)
	 (url "https://www.goodreads.com/book/show/50275.Last_Exit_to_Brooklyn")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Last Exit to Brooklyn"))

	([Book_633] of Libro
	 (autor [Author_633])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "633")
	 (nPag 315)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/293101.The_Amityville_Horror")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Amityville Horror"))

	([Book_634] of Libro
	 (autor [Author_634])
	 (generos
	     [Genres_0]
	     [Genres_9])
	 (idLibro "634")
	 (nPag 272)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/75479.The_End_of_Alice")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The End of Alice"))

	([Book_635] of Libro
	 (autor [Author_635])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "635")
	 (nPag 234)
	 (publicacion 1965)
	 (url "https://www.goodreads.com/book/show/18452.The_Painted_Bird")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Painted Bird"))

	([Book_636] of Libro
	 (autor [Author_636])
	 (generos
	     [Genres_0]
	     [Genres_9])
	 (idLibro "636")
	 (nPag 348)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/13872.Geek_Love")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Geek Love"))

	([Book_637] of Libro
	 (autor [Author_637])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "637")
	 (nPag 376)
	 (publicacion 1785)
	 (url "https://www.goodreads.com/book/show/6351885-the-120-days-of-sodom")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The 120 Days of Sodom"))

	([Book_638] of Libro
	 (autor [Author_638])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "638")
	 (nPag 370)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/179735.The_Girl_Next_Door")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Girl Next Door"))

	([Book_639] of Libro
	 (autor [Author_639])
	 (generos
	     [Genres_0]
	     [Genres_9])
	 (idLibro "639")
	 (nPag 192)
	 (publicacion 1984)
	 (url "https://www.goodreads.com/book/show/567678.The_Wasp_Factory")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Wasp Factory"))

	([Book_640] of Libro
	 (autor [Author_640])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "640")
	 (nPag 447)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9581507-don-t-breathe-a-word")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dont Breathe a Word"))

	([Book_641] of Libro
	 (autor [Author_641])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "641")
	 (nPag 346)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9545064-the-story-of-beautiful-girl")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Story of Beautiful Girl"))

	([Book_642] of Libro
	 (autor [Author_642])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "642")
	 (nPag 435)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/6280118-one-day")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "One Day"))

	([Book_643] of Libro
	 (autor [Author_643])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "643")
	 (nPag 314)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/8683812-the-paris-wife")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Paris Wife"))

	([Book_644] of Libro
	 (autor [Author_644])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "644")
	 (nPag 280)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/8100422-timeless")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Timeless"))

	([Book_645] of Libro
	 (autor [Author_645])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "645")
	 (nPag 322)
	 (publicacion 2017)
	 (url "https://www.goodreads.com/book/show/25092254-cold-summer")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Cold Summer"))

	([Book_646] of Libro
	 (autor [Author_646])
	 (generos
	     [Genres_39]
	     [Genres_4])
	 (idLibro "646")
	 (nPag 404)
	 (publicacion 2017)
	 (url "https://www.goodreads.com/book/show/28526192-27-hours")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "27 Hours"))

	([Book_647] of Libro
	 (autor [Author_647])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "647")
	 (nPag 384)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/34857255-the-summer-list")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Summer List"))

	([Book_648] of Libro
	 (autor [Author_648])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "648")
	 (nPag 608)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/301538.The_Darkness_That_Comes_Before")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Darkness That Comes Before"))

	([Book_649] of Libro
	 (autor [Author_649])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "649")
	 (nPag 402)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6101718-the-magicians")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Magicians"))

	([Book_650] of Libro
	 (autor [Author_650])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "650")
	 (nPag 483)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/202769.In_the_Night_Garden")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "In the Night Garden"))

	([Book_651] of Libro
	 (autor [Author_651])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "651")
	 (nPag 468)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/51106.Tam_Lin")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Tam Lin"))

	([Book_652] of Libro
	 (autor [Author_652])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "652")
	 (nPag 339)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/69136.The_Book_of_Lost_Things")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Book of Lost Things"))

	([Book_653] of Libro
	 (autor [Author_653])
	 (generos
	     [Genres_0]
	     [Genres_14])
	 (idLibro "653")
	 (nPag 464)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/13066.Sick_Puppy")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sick Puppy"))

	([Book_654] of Libro
	 (autor [Author_654])
	 (generos
	     [Genres_0]
	     [Genres_14])
	 (idLibro "654")
	 (nPag 286)
	 (publicacion 1938)
	 (url "https://www.goodreads.com/book/show/9858081-the-code-of-the-woosters")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Code of the Woosters"))

	([Book_655] of Libro
	 (autor [Author_655])
	 (generos
	     [Genres_12]
	     [Genres_40])
	 (idLibro "655")
	 (nPag 379)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15855708-diary-of-a-dieting-madhouse")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Diary of a Dieting Madhouse"))

	([Book_656] of Libro
	 (autor [Author_656])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "656")
	 (nPag 260)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15831741-nobody-s-slave")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Nobodys Slave"))

	([Book_657] of Libro
	 (autor [Author_657])
	 (generos
	     [Genres_0]
	     [Genres_38])
	 (idLibro "657")
	 (nPag 212)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/14405931-terra-feliz")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Terra Feliz Vanity"))

	([Book_658] of Libro
	 (autor [Author_658])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "658")
	 (nPag 341)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/15750570-just-add-water")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Just Add Water"))

	([Book_659] of Libro
	 (autor [Author_659])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "659")
	 (nPag 232)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/13818476-heavy-duty-people")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Heavy Duty People"))

	([Book_660] of Libro
	 (autor [Author_660])
	 (generos
	     [Genres_17]
	     [Genres_4])
	 (idLibro "660")
	 (nPag 286)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/13826601-found-money")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Found Money"))

	([Book_661] of Libro
	 (autor [Author_661])
	 (generos
	     [Genres_0]
	     [Genres_14])
	 (idLibro "661")
	 (nPag 194)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/12865922-the-queen-s-envoy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Queens Envoy"))

	([Book_662] of Libro
	 (autor [Author_662])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "662")
	 (nPag 437)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/23258641-van-laven-chronicles")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Van Laven Chronicles Throne of Novoxos"))

	([Book_663] of Libro
	 (autor [Author_663])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "663")
	 (nPag 138)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16091522-southern-mystical-moments")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Southern Mystical Moments"))

	([Book_664] of Libro
	 (autor [Author_664])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "664")
	 (nPag 388)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/19148794-evanescent")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Evanescent"))

	([Book_665] of Libro
	 (autor [Author_665])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "665")
	 (nPag 368)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11115457-time-between-us")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Time Between Us"))

	([Book_666] of Libro
	 (autor [Author_666])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "666")
	 (nPag 254)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12486526-the-sphinx-project")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Sphinx Project"))

	([Book_667] of Libro
	 (autor [Author_667])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "667")
	 (nPag 451)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/10852343-stormdancer")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Stormdancer"))

	([Book_668] of Libro
	 (autor [Author_668])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "668")
	 (nPag 408)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/9277339-innocent-darkness")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Innocent Darkness"))

	([Book_669] of Libro
	 (autor [Author_669])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "669")
	 (nPag 295)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12814540-the-last-princess")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Last Princess"))

	([Book_670] of Libro
	 (autor [Author_670])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "670")
	 (nPag 224)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11647944-destiny-s-fire")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Destinys Fire"))

	([Book_671] of Libro
	 (autor [Author_671])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "671")
	 (nPag 315)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/9554790-the-other-life")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Other Life"))

	([Book_672] of Libro
	 (autor [Author_672])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "672")
	 (nPag 284)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12844575-gravity")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gravity"))

	([Book_673] of Libro
	 (autor [Author_673])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "673")
	 (nPag 411)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12367267-the-glimpse")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Glimpse"))

	([Book_674] of Libro
	 (autor [Author_674])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "674")
	 (nPag 373)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12432229-struck")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Struck"))

	([Book_675] of Libro
	 (autor [Author_675])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "675")
	 (nPag 432)
	 (publicacion 1984)
	 (url "https://www.goodreads.com/book/show/19691.The_Hunt_for_Red_October")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Hunt for Red October"))

	([Book_676] of Libro
	 (autor [Author_676])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "676")
	 (nPag 446)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/14995.Odd_Thomas")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Odd Thomas"))

	([Book_677] of Libro
	 (autor [Author_677])
	 (generos
	     [Genres_14]
	     [Genres_0])
	 (idLibro "677")
	 (nPag 213)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/529701.Side_Effects")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Side Effects"))

	([Book_678] of Libro
	 (autor [Author_678])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "678")
	 (nPag 251)
	 (publicacion 1954)
	 (url "https://www.goodreads.com/book/show/395182.Lucky_Jim")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Lucky Jim"))

	([Book_679] of Libro
	 (autor [Author_679])
	 (generos
	     [Genres_14]
	     [Genres_0])
	 (idLibro "679")
	 (nPag 32)
	 (publicacion 1963)
	 (url "https://www.goodreads.com/book/show/47558.The_Gashlycrumb_Tinies")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Gashlycrumb Tinies"))

	([Book_680] of Libro
	 (autor [Author_680])
	 (generos
	     [Genres_0]
	     [Genres_14])
	 (idLibro "680")
	 (nPag 396)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/36578942-the-hundred-year-old-man-who-climbed-out-of-the-window-and-disappeared")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Hundred-Year-Old Man Who Climbed Out of the Window and Disappeared"))

	([Book_681] of Libro
	 (autor [Author_681])
	 (generos
	     [Genres_0]
	     [Genres_14])
	 (idLibro "681")
	 (nPag 267)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/1802397.Smashed_Squashed_Splattered_Chewed_Chunked_and_Spewed")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Smashed Squashed Splattered Chewed Chunked and Spewed"))

	([Book_682] of Libro
	 (autor [Author_682])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "682")
	 (nPag 233)
	 (publicacion 1932)
	 (url "https://www.goodreads.com/book/show/92780.Cold_Comfort_Farm")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Cold Comfort Farm"))

	([Book_683] of Libro
	 (autor [Author_683])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "683")
	 (nPag 129)
	 (publicacion 1759)
	 (url "https://www.goodreads.com/book/show/19380.Candide")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Candide"))

	([Book_684] of Libro
	 (autor [Author_684])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "684")
	 (nPag 185)
	 (publicacion 1889)
	 (url "https://www.goodreads.com/book/show/4921.Three_Men_in_a_Boat")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Three Men in a Boat"))

	([Book_685] of Libro
	 (autor [Author_685])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "685")
	 (nPag 492)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/6234910-the-iron-thorn")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Iron Thorn"))

	([Book_686] of Libro
	 (autor [Author_686])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "686")
	 (nPag 706)
	 (publicacion 1924)
	 (url "https://www.goodreads.com/book/show/88077.The_Magic_Mountain")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Magic Mountain"))

	([Book_687] of Libro
	 (autor [Author_687])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "687")
	 (nPag 1474)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/50365.A_Suitable_Boy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Suitable Boy"))

	([Book_688] of Libro
	 (autor [Author_688])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "688")
	 (nPag 603)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/5211.A_Fine_Balance")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "A Fine Balance"))

	([Book_689] of Libro
	 (autor [Author_689])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "689")
	 (nPag 904)
	 (publicacion 1871)
	 (url "https://www.goodreads.com/book/show/19089.Middlemarch")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Middlemarch"))

	([Book_690] of Libro
	 (autor [Author_690])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "690")
	 (nPag 484)
	 (publicacion 2016)
	 (url "https://www.goodreads.com/book/show/23909755-city-of-blades")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "City of Blades"))

	([Book_691] of Libro
	 (autor [Author_691])
	 (generos
	     [Genres_0]
	     [Genres_20])
	 (idLibro "691")
	 (nPag 322)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6076387-a-gate-at-the-stairs")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Gate at the Stairs"))

	([Book_692] of Libro
	 (autor [Author_692])
	 (generos
	     [Genres_25]
	     [Genres_0])
	 (idLibro "692")
	 (nPag 322)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/3851380-kiss")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Kiss"))

	([Book_693] of Libro
	 (autor [Author_693])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "693")
	 (nPag 324)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6251222-await-your-reply")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Await Your Reply"))

	([Book_694] of Libro
	 (autor [Author_694])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "694")
	 (nPag 373)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/6335026-the-weight-of-silence")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Weight of Silence"))

	([Book_695] of Libro
	 (autor [Author_695])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "695")
	 (nPag 262)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/4954833-brooklyn")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Brooklyn"))

	([Book_696] of Libro
	 (autor [Author_696])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "696")
	 (nPag 241)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/3525895-the-girl-she-used-to-be")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Girl She Used to Be"))

	([Book_697] of Libro
	 (autor [Author_697])
	 (generos
	     [Genres_0]
	     [Genres_14])
	 (idLibro "697")
	 (nPag 339)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6224935-this-is-where-i-leave-you")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "This is Where I Leave You"))

	([Book_698] of Libro
	 (autor [Author_698])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "698")
	 (nPag 291)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/4929705-a-reliable-wife")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Reliable Wife"))

	([Book_699] of Libro
	 (autor [Author_699])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "699")
	 (nPag 351)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/5941033-let-the-great-world-spin")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Let the Great World Spin"))

	([Book_700] of Libro
	 (autor [Author_700])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "700")
	 (nPag 371)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/4836308-the-physick-book-of-deliverance-dane")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Physick Book of Deliverance Dane"))

	([Book_701] of Libro
	 (autor [Author_701])
	 (generos
	     [Genres_14]
	     [Genres_7])
	 (idLibro "701")
	 (nPag 330)
	 (publicacion 2016)
	 (url "https://www.goodreads.com/book/show/28096757-innuendos")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Innuendos"))

	([Book_702] of Libro
	 (autor [Author_702])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "702")
	 (nPag 272)
	 (publicacion 1809)
	 (url "https://www.goodreads.com/book/show/128837.Elective_Affinities")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Elective Affinities"))

	([Book_703] of Libro
	 (autor [Author_703])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "703")
	 (nPag 244)
	 (publicacion 1862)
	 (url "https://www.goodreads.com/book/show/19117.Fathers_and_Sons")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Fathers and Sons"))

	([Book_704] of Libro
	 (autor [Author_704])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "704")
	 (nPag 370)
	 (publicacion 1835)
	 (url "https://www.goodreads.com/book/show/59145.P_re_Goriot")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Pre Goriot"))

	([Book_705] of Libro
	 (autor [Author_705])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "705")
	 (nPag 134)
	 (publicacion 1890)
	 (url "https://www.goodreads.com/book/show/32585.Hunger")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Hunger"))

	([Book_706] of Libro
	 (autor [Author_706])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "706")
	 (nPag 797)
	 (publicacion 1881)
	 (url "https://www.goodreads.com/book/show/264.The_Portrait_of_a_Lady")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Portrait of a Lady"))

	([Book_707] of Libro
	 (autor [Author_707])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "707")
	 (nPag 512)
	 (publicacion 1842)
	 (url "https://www.goodreads.com/book/show/28381.Dead_Souls")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dead Souls"))

	([Book_708] of Libro
	 (autor [Author_708])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "708")
	 (nPag 608)
	 (publicacion 1830)
	 (url "https://www.goodreads.com/book/show/14662.The_Red_and_the_Black")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Red and the Black"))

	([Book_709] of Libro
	 (autor [Author_709])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "709")
	 (nPag 195)
	 (publicacion 1899)
	 (url "https://www.goodreads.com/book/show/58345.The_Awakening")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Awakening"))

	([Book_710] of Libro
	 (autor [Author_710])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "710")
	 (nPag 542)
	 (publicacion 1848)
	 (url "https://www.goodreads.com/book/show/337113.The_Tenant_of_Wildfell_Hall")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Tenant of Wildfell Hall"))

	([Book_711] of Libro
	 (autor [Author_711])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "711")
	 (nPag 236)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/43191522-book-one")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Sporadic Memories"))

	([Book_712] of Libro
	 (autor [Author_712])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "712")
	 (nPag 434)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/1108884.Maledicte")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Maledicte"))

	([Book_713] of Libro
	 (autor [Author_713])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "713")
	 (nPag 314)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20554522-dragon-dawn")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dragon Dawn"))

	([Book_714] of Libro
	 (autor [Author_714])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "714")
	 (nPag 252)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/30072.The_Brief_History_of_the_Dead")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Brief History of the Dead"))

	([Book_715] of Libro
	 (autor [Author_715])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "715")
	 (nPag 180)
	 (publicacion 1968)
	 (url "https://www.goodreads.com/book/show/458191.Escape_to_Witch_Mountain")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Escape to Witch Mountain"))

	([Book_716] of Libro
	 (autor [Author_716])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "716")
	 (nPag 288)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/395397.Legends_of_the_Fall")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Legends of the Fall"))

	([Book_717] of Libro
	 (autor [Author_717])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "717")
	 (nPag 311)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/215631.Pay_It_Forward")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Pay It Forward"))

	([Book_718] of Libro
	 (autor [Author_718])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "718")
	 (nPag 282)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/38379.Ring")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Ring"))

	([Book_719] of Libro
	 (autor [Author_719])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "719")
	 (nPag 192)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/1230853.Madame_Doubtfire")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Madame Doubtfire"))

	([Book_720] of Libro
	 (autor [Author_720])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "720")
	 (nPag 300)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/39987.Nanny_Mcphee")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Nanny Mcphee The Collected Tales of Nurse Matilda"))

	([Book_721] of Libro
	 (autor [Author_721])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "721")
	 (nPag 166)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/67238.Dead_Poets_Society")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Dead Poets Society"))

	([Book_722] of Libro
	 (autor [Author_722])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "722")
	 (nPag 192)
	 (publicacion 1923)
	 (url "https://www.goodreads.com/book/show/739840.Bambi")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Bambi"))

	([Book_723] of Libro
	 (autor [Author_723])
	 (generos
	     [Genres_12]
	     [Genres_3])
	 (idLibro "723")
	 (nPag 289)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/10031701-a-shore-thing")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Shore Thing"))

	([Book_724] of Libro
	 (autor [Author_724])
	 (generos
	     [Genres_3]
	     [Genres_12])
	 (idLibro "724")
	 (nPag 224)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/22188.Gossip_Girl")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gossip Girl"))

	([Book_725] of Libro
	 (autor [Author_725])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "725")
	 (nPag 583)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/25397924-starshine")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Starshine Aurora Rising Book One"))

	([Book_726] of Libro
	 (autor [Author_726])
	 (generos
	     [Genres_0]
	     [Genres_41])
	 (idLibro "726")
	 (nPag 52)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/4303567-angelica-and-francesca")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Angelica and Francesca"))

	([Book_727] of Libro
	 (autor [Author_727])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "727")
	 (nPag 165)
	 (publicacion 1925)
	 (url "https://www.goodreads.com/book/show/512704.Gentlemen_Prefer_Blondes")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gentlemen Prefer Blondes"))

	([Book_728] of Libro
	 (autor [Author_728])
	 (generos
	     [Genres_0]
	     [Genres_25])
	 (idLibro "728")
	 (nPag 384)
	 (publicacion 2016)
	 (url "https://www.goodreads.com/book/show/25379594-the-feathered-bone")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Feathered Bone"))

	([Book_729] of Libro
	 (autor [Author_729])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "729")
	 (nPag 464)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16160314-trust")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Trust A New Beginning"))

	([Book_730] of Libro
	 (autor [Author_730])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "730")
	 (nPag 472)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17826638-rogue-genesis")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Rogue Genesis"))

	([Book_731] of Libro
	 (autor [Author_731])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "731")
	 (nPag 358)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/3426706-the-jewel-of-medina")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Jewel of Medina"))

	([Book_732] of Libro
	 (autor [Author_732])
	 (generos
	     [Genres_0]
	     [Genres_3])
	 (idLibro "732")
	 (nPag 368)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/21611238-in-leah-s-wake")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "In Leahs Wake"))

	([Book_733] of Libro
	 (autor [Author_733])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "733")
	 (nPag 380)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13579274-some-are-sicker-than-others")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Some Are Sicker Than Others"))

	([Book_734] of Libro
	 (autor [Author_734])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "734")
	 (nPag 208)
	 (publicacion 1974)
	 (url "https://www.goodreads.com/book/show/397867.The_Rats")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Rats"))

	([Book_735] of Libro
	 (autor [Author_735])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "735")
	 (nPag 358)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/103035.Cabal")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Cabal"))

	([Book_736] of Libro
	 (autor [Author_736])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "736")
	 (nPag 427)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/32430.The_Bad_Place")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Bad Place"))

	([Book_737] of Libro
	 (autor [Author_737])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "737")
	 (nPag 401)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/816085.Harvest_Home")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Harvest Home"))

	([Book_738] of Libro
	 (autor [Author_738])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "738")
	 (nPag 138)
	 (publicacion 1983)
	 (url "https://www.goodreads.com/book/show/37034.The_Woman_in_Black")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Woman in Black"))

	([Book_739] of Libro
	 (autor [Author_739])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "739")
	 (nPag 144)
	 (publicacion 1972)
	 (url "https://www.goodreads.com/book/show/52350.The_Stepford_Wives")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Stepford Wives"))

	([Book_740] of Libro
	 (autor [Author_740])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "740")
	 (nPag 272)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/226162.The_Omen")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Omen"))

	([Book_741] of Libro
	 (autor [Author_741])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "741")
	 (nPag 319)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/21726.The_Ruins")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Ruins"))

	([Book_742] of Libro
	 (autor [Author_742])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "742")
	 (nPag 146)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/89724.We_Have_Always_Lived_in_the_Castle")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "We Have Always Lived in the Castle"))

	([Book_743] of Libro
	 (autor [Author_743])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "743")
	 (nPag 208)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/34386617-the-night-masquerade")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Night Masquerade"))

	([Book_744] of Libro
	 (autor [Author_744])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "744")
	 (nPag 227)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/35390279-the-night-child")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Night Child"))

	([Book_745] of Libro
	 (autor [Author_745])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "745")
	 (nPag 320)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/35940516-this-i-know")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "This I Know"))

	([Book_746] of Libro
	 (autor [Author_746])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "746")
	 (nPag 390)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/36163568-a-different-kind-of-fire")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Different Kind of Fire"))

	([Book_747] of Libro
	 (autor [Author_747])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "747")
	 (nPag 422)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/35099058-gunslinger-girl")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gunslinger Girl"))

	([Book_748] of Libro
	 (autor [Author_748])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "748")
	 (nPag 323)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/33026565-rainbirds")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Rainbirds"))

	([Book_749] of Libro
	 (autor [Author_749])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "749")
	 (nPag 348)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/35142025-the-queen-of-hearts")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Queen of Hearts"))

	([Book_750] of Libro
	 (autor [Author_750])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "750")
	 (nPag 312)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20504754-transcendence")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Transcendence"))

	([Book_751] of Libro
	 (autor [Author_751])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "751")
	 (nPag 304)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/142395.Samarkand")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Samarkand"))

	([Book_752] of Libro
	 (autor [Author_752])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "752")
	 (nPag 176)
	 (publicacion 1966)
	 (url "https://www.goodreads.com/book/show/669780.Season_of_Migration_to_the_North")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Season of Migration to the North"))

	([Book_753] of Libro
	 (autor [Author_753])
	 (generos
	     [Genres_7]
	     [Genres_31])
	 (idLibro "753")
	 (nPag 191)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20619926-uncomplicated")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Uncomplicated"))

	([Book_754] of Libro
	 (autor [Author_754])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "754")
	 (nPag 343)
	 (publicacion 1948)
	 (url "https://www.goodreads.com/book/show/31122.I_Capture_the_Castle")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "I Capture the Castle"))

	([Book_755] of Libro
	 (autor [Author_755])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "755")
	 (nPag 376)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/772888.Woman_on_the_Edge_of_Time")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Woman on the Edge of Time"))

	([Book_756] of Libro
	 (autor [Author_756])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "756")
	 (nPag 512)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/16249.Angry_Housewives_Eating_Bon_Bons")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Angry Housewives Eating Bon Bons"))

	([Book_757] of Libro
	 (autor [Author_757])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "757")
	 (nPag 145)
	 (publicacion 1972)
	 (url "https://www.goodreads.com/book/show/331256.Roadside_Picnic")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Roadside Picnic"))

	([Book_758] of Libro
	 (autor [Author_758])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "758")
	 (nPag 210)
	 (publicacion 1963)
	 (url "https://www.goodreads.com/book/show/190999.Way_Station")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Way Station"))

	([Book_759] of Libro
	 (autor [Author_759])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "759")
	 (nPag 186)
	 (publicacion 1912)
	 (url "https://www.goodreads.com/book/show/40395.A_Princess_of_Mars")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Princess of Mars"))

	([Book_760] of Libro
	 (autor [Author_760])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "760")
	 (nPag 335)
	 (publicacion 1906)
	 (url "https://www.goodreads.com/book/show/41681.The_Jungle")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Jungle"))

	([Book_761] of Libro
	 (autor [Author_761])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "761")
	 (nPag 448)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/82748.Sushi_for_Beginners")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sushi for Beginners"))

	([Book_762] of Libro
	 (autor [Author_762])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "762")
	 (nPag 320)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/381704.Bergdorf_Blondes")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Bergdorf Blondes"))

	([Book_763] of Libro
	 (autor [Author_763])
	 (generos
	     [Genres_10]
	     [Genres_12])
	 (idLibro "763")
	 (nPag 308)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/603398.Enchanted_Inc_")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Enchanted Inc"))

	([Book_764] of Libro
	 (autor [Author_764])
	 (generos
	     [Genres_12]
	     [Genres_6])
	 (idLibro "764")
	 (nPag 406)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/137098.The_Little_Lady_Agency")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Little Lady Agency"))

	([Book_765] of Libro
	 (autor [Author_765])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "765")
	 (nPag 368)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/31101.Mr_Maybe")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Mr Maybe"))

	([Book_766] of Libro
	 (autor [Author_766])
	 (generos
	     [Genres_12]
	     [Genres_6])
	 (idLibro "766")
	 (nPag 423)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9712341-a-girl-like-you")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Girl Like You"))

	([Book_767] of Libro
	 (autor [Author_767])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "767")
	 (nPag 214)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/24983185-love-eternally")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Love Eternally"))

	([Book_768] of Libro
	 (autor [Author_768])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "768")
	 (nPag 613)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/9766078-the-map-of-time")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Map of Time"))

	([Book_769] of Libro
	 (autor [Author_769])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "769")
	 (nPag 366)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/18108877-timebound")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Timebound"))

	([Book_770] of Libro
	 (autor [Author_770])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "770")
	 (nPag 520)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/62992.The_Time_Ships")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Time Ships"))

	([Book_771] of Libro
	 (autor [Author_771])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "771")
	 (nPag 360)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/12431807-a-visit-from-voltaire")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Visit from Voltaire"))

	([Book_772] of Libro
	 (autor [Author_772])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "772")
	 (nPag 528)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/101599.The_Guns_of_the_South")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Guns of the South"))

	([Book_773] of Libro
	 (autor [Author_773])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "773")
	 (nPag 765)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/261499.Time_Patrol")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Time Patrol"))

	([Book_774] of Libro
	 (autor [Author_774])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "774")
	 (nPag 174)
	 (publicacion 1941)
	 (url "https://www.goodreads.com/book/show/94715.Lest_Darkness_Fall")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Lest Darkness Fall"))

	([Book_775] of Libro
	 (autor [Author_775])
	 (generos
	     [Genres_0]
	     [Genres_17])
	 (idLibro "775")
	 (nPag 144)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/14376.Einstein_s_Dreams")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Einsteins Dreams"))

	([Book_776] of Libro
	 (autor [Author_776])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "776")
	 (nPag 480)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/29661618-just-one-damned-thing-after-another")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Just One Damned Thing After Another"))

	([Book_777] of Libro
	 (autor [Author_777])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "777")
	 (nPag 356)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18853210-the-fatal-tree")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Fatal Tree"))

	([Book_778] of Libro
	 (autor [Author_778])
	 (generos
	     [Genres_4]
	     [Genres_42])
	 (idLibro "778")
	 (nPag 276)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/216177.The_City_on_the_Edge_of_Forever")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The City on the Edge of Forever The Original Teleplay"))

	([Book_779] of Libro
	 (autor [Author_779])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "779")
	 (nPag 336)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/270490.In_the_Garden_of_Iden")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "In the Garden of Iden"))

	([Book_780] of Libro
	 (autor [Author_780])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "780")
	 (nPag 608)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/99702.Island_in_the_Sea_of_Time")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Island in the Sea of Time"))

	([Book_781] of Libro
	 (autor [Author_781])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "781")
	 (nPag 499)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/778990.Timescape")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Timescape"))

	([Book_782] of Libro
	 (autor [Author_782])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "782")
	 (nPag 597)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/16967.1632")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "1632"))

	([Book_783] of Libro
	 (autor [Author_783])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "783")
	 (nPag 199)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/5310515-when-you-reach-me")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "When You Reach Me"))

	([Book_784] of Libro
	 (autor [Author_784])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "784")
	 (nPag 304)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/72694.From_Time_to_Time")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "From Time to Time"))

	([Book_785] of Libro
	 (autor [Author_785])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "785")
	 (nPag 405)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/35066358-the-first-fifteen-lives-of-harry-august")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The First Fifteen Lives of Harry August"))

	([Book_786] of Libro
	 (autor [Author_786])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "786")
	 (nPag 303)
	 (publicacion 1978)
	 (url "https://www.goodreads.com/book/show/133738.The_Mirror")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Mirror"))

	([Book_787] of Libro
	 (autor [Author_787])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "787")
	 (nPag 311)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/341735.Replay")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Replay"))

	([Book_788] of Libro
	 (autor [Author_788])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "788")
	 (nPag 896)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/73062.Scarlett")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Scarlett"))

	([Book_789] of Libro
	 (autor [Author_789])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "789")
	 (nPag 409)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/11106249-chasing-amanda")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Chasing Amanda"))

	([Book_790] of Libro
	 (autor [Author_790])
	 (generos
	     [Genres_6]
	     [Genres_12])
	 (idLibro "790")
	 (nPag 192)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/32860040-charlie-and-pearl")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Charlie and Pearl"))

	([Book_791] of Libro
	 (autor [Author_791])
	 (generos
	     [Genres_0]
	     [Genres_43])
	 (idLibro "791")
	 (nPag 293)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/13158512-the-lion-the-lamb-the-hunted")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Lion the Lamb the Hunted"))

	([Book_792] of Libro
	 (autor [Author_792])
	 (generos
	     [Genres_29]
	     [Genres_4])
	 (idLibro "792")
	 (nPag 703)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/18998714-may-day")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "May Day"))

	([Book_793] of Libro
	 (autor [Author_793])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "793")
	 (nPag 356)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16177145-enigma-black")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Enigma Black"))

	([Book_794] of Libro
	 (autor [Author_794])
	 (generos
	     [Genres_0]
	     [Genres_35])
	 (idLibro "794")
	 (nPag 275)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/22752404-wood-talc-and-mr-j")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Wood Talc and Mr J"))

	([Book_795] of Libro
	 (autor [Author_795])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "795")
	 (nPag 374)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15774215-clovenhoof")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Clovenhoof"))

	([Book_796] of Libro
	 (autor [Author_796])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "796")
	 (nPag 220)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/12828201-winter-s-awakening")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Winters Awakening The Metahumans Emerge"))

	([Book_797] of Libro
	 (autor [Author_797])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "797")
	 (nPag 396)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17802724-the-husband-s-secret")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Husbands Secret"))

	([Book_798] of Libro
	 (autor [Author_798])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "798")
	 (nPag 692)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/40940631-night-fall")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Night Fall"))

	([Book_799] of Libro
	 (autor [Author_799])
	 (generos
	     [Genres_29]
	     [Genres_0])
	 (idLibro "799")
	 (nPag 226)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/26004546-lips-of-a-mastodon")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Lips of a Mastodon"))

	([Book_800] of Libro
	 (autor [Author_800])
	 (generos
	     [Genres_29]
	     [Genres_0])
	 (idLibro "800")
	 (nPag 422)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12849385-the-innocent")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Innocent"))

	([Book_801] of Libro
	 (autor [Author_801])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "801")
	 (nPag 399)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/187650.Primal_Fear")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Primal Fear"))

	([Book_802] of Libro
	 (autor [Author_802])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "802")
	 (nPag 394)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/35721194-brightly-burning")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Brightly Burning"))

	([Book_803] of Libro
	 (autor [Author_803])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "803")
	 (nPag 324)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/24280082-send-more-idiots")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Send More Idiots"))

	([Book_804] of Libro
	 (autor [Author_804])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "804")
	 (nPag 212)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/10563572-steam-sorcery")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Steam  Sorcery"))

	([Book_805] of Libro
	 (autor [Author_805])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "805")
	 (nPag 292)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6414434-binding-vows")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Binding Vows"))

	([Book_806] of Libro
	 (autor [Author_806])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "806")
	 (nPag 268)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/5168329-highlander-s-challenge")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Highlanders Challenge"))

	([Book_807] of Libro
	 (autor [Author_807])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "807")
	 (nPag 224)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/260014.Both_Sides_of_Time")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Both Sides of Time"))

	([Book_808] of Libro
	 (autor [Author_808])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "808")
	 (nPag 448)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/621460.The_Reluctant_Viking")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Reluctant Viking"))

	([Book_809] of Libro
	 (autor [Author_809])
	 (generos
	     [Genres_4]
	     [Genres_38])
	 (idLibro "809")
	 (nPag 47)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/22802230-the-spirit-path")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Spirit Path"))

	([Book_810] of Libro
	 (autor [Author_810])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "810")
	 (nPag 201)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/9268202-highland-destiny")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Highland Destiny"))

	([Book_811] of Libro
	 (autor [Author_811])
	 (generos
	     [Genres_4]
	     [Genres_13])
	 (idLibro "811")
	 (nPag 544)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/495882.Reflections_in_the_Nile")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Reflections in the Nile"))

	([Book_812] of Libro
	 (autor [Author_812])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "812")
	 (nPag 426)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9645632-awaken-the-highland-warrior")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Awaken the Highland Warrior"))

	([Book_813] of Libro
	 (autor [Author_813])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "813")
	 (nPag 384)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/19444805-forever-his")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Forever His"))

	([Book_814] of Libro
	 (autor [Author_814])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "814")
	 (nPag 309)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/699179.Pirates")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Pirates"))

	([Book_815] of Libro
	 (autor [Author_815])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "815")
	 (nPag 288)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/8698353-dustin-time")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Dustin Time"))

	([Book_816] of Libro
	 (autor [Author_816])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "816")
	 (nPag 399)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9368401-cascade")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Cascade"))

	([Book_817] of Libro
	 (autor [Author_817])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "817")
	 (nPag 360)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/331975.When_There_is_Hope")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "When There is Hope"))

	([Book_818] of Libro
	 (autor [Author_818])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "818")
	 (nPag 294)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/8122928-out-of-time")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Out of Time"))

	([Book_819] of Libro
	 (autor [Author_819])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "819")
	 (nPag 464)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13059477-overseas")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Overseas"))

	([Book_820] of Libro
	 (autor [Author_820])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "820")
	 (nPag 421)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15701608-the-ruby-brooch")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Ruby Brooch"))

	([Book_821] of Libro
	 (autor [Author_821])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "821")
	 (nPag 374)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/609153.Time_After_Time")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Time After Time"))

	([Book_822] of Libro
	 (autor [Author_822])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "822")
	 (nPag 400)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/350678.Breath_of_Magic")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Breath of Magic"))

	([Book_823] of Libro
	 (autor [Author_823])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "823")
	 (nPag 356)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/734191.Thirty_Nights_with_a_Highland_Husband")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Thirty Nights with a Highland Husband"))

	([Book_824] of Libro
	 (autor [Author_824])
	 (generos
	     [Genres_17]
	     [Genres_0])
	 (idLibro "824")
	 (nPag 252)
	 (publicacion 1953)
	 (url "https://www.goodreads.com/book/show/48464.A_Good_Man_is_Hard_to_Find_and_Other_Stories")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Good Man is Hard to Find and Other Stories"))

	([Book_825] of Libro
	 (autor [Author_825])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "825")
	 (nPag 359)
	 (publicacion 1940)
	 (url "https://www.goodreads.com/book/show/37380.The_Heart_Is_a_Lonely_Hunter")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Heart Is a Lonely Hunter"))

	([Book_826] of Libro
	 (autor [Author_826])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "826")
	 (nPag 316)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/37459966-our-dark-stars")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Our Dark Stars"))

	([Book_827] of Libro
	 (autor [Author_827])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "827")
	 (nPag 426)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/170293.The_Unlikely_Ones")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Unlikely Ones"))

	([Book_828] of Libro
	 (autor [Author_828])
	 (generos
	     [Genres_44]
	     [Genres_7])
	 (idLibro "828")
	 (nPag 322)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17615896-escape-from-paradise")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Escape from Paradise"))

	([Book_829] of Libro
	 (autor [Author_829])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "829")
	 (nPag 384)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17402117-branded")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Branded"))

	([Book_830] of Libro
	 (autor [Author_830])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "830")
	 (nPag 308)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/18191815-storm-damages")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Storm Damages"))

	([Book_831] of Libro
	 (autor [Author_831])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "831")
	 (nPag 272)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/20486626-breach")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Breach"))

	([Book_832] of Libro
	 (autor [Author_832])
	 (generos
	     [Genres_29]
	     [Genres_0])
	 (idLibro "832")
	 (nPag 512)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/93794.The_Kill_Artist")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Kill Artist"))

	([Book_833] of Libro
	 (autor [Author_833])
	 (generos
	     [Genres_0]
	     [Genres_29])
	 (idLibro "833")
	 (nPag 480)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/1059.Shibumi")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Shibumi"))

	([Book_834] of Libro
	 (autor [Author_834])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "834")
	 (nPag 320)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/380563.Hit_Man")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hit Man"))

	([Book_835] of Libro
	 (autor [Author_835])
	 (generos
	     [Genres_29]
	     [Genres_0])
	 (idLibro "835")
	 (nPag 363)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/925.A_Clean_Kill_in_Tokyo")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Clean Kill in Tokyo"))

	([Book_836] of Libro
	 (autor [Author_836])
	 (generos
	     [Genres_0]
	     [Genres_9])
	 (idLibro "836")
	 (nPag 259)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/10365343-zone-one")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Zone One"))

	([Book_837] of Libro
	 (autor [Author_837])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "837")
	 (nPag 256)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/15842439-warm-bodies")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Warm Bodies"))

	([Book_838] of Libro
	 (autor [Author_838])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "838")
	 (nPag 304)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12633983-comeback-love")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Comeback Love"))

	([Book_839] of Libro
	 (autor [Author_839])
	 (generos
	     [Genres_11]
	     [Genres_7])
	 (idLibro "839")
	 (nPag 1096)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/26099342-front-row-center")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Front Row Center"))

	([Book_840] of Libro
	 (autor [Author_264])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "840")
	 (nPag 497)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/21353509-the-vanishing-witch")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Vanishing Witch"))

	([Book_841] of Libro
	 (autor [Author_297])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "841")
	 (nPag 1136)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/12658.Hawaii")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Hawaii"))

	([Book_842] of Libro
	 (autor [Author_840])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "842")
	 (nPag 368)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/1920307.Outpassage")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Outpassage"))

	([Book_843] of Libro
	 (autor [Author_841])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "843")
	 (nPag 144)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/306107.A_Gathering_of_Days")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Gathering of Days A New England Girls Journal 1830-32"))

	([Book_844] of Libro
	 (autor [Author_842])
	 (generos
	     [Genres_7]
	     [Genres_38])
	 (idLibro "844")
	 (nPag 42)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18522362-a-dance-for-fools")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Dance for Fools"))

	([Book_845] of Libro
	 (autor [Author_843])
	 (generos
	     [Genres_7]
	     [Genres_29])
	 (idLibro "845")
	 (nPag 212)
	 (publicacion 2017)
	 (url "https://www.goodreads.com/book/show/34325423-concealed-anguish")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Concealed Anguish"))

	([Book_846] of Libro
	 (autor [Author_844])
	 (generos
	     [Genres_7]
	     [Genres_44])
	 (idLibro "846")
	 (nPag 160)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/24901891-hear-me")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hear Me"))

	([Book_847] of Libro
	 (autor [Author_845])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "847")
	 (nPag 166)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/26311787-storm")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Storm"))

	([Book_848] of Libro
	 (autor [Author_846])
	 (generos
	     [Genres_44]
	     [Genres_7])
	 (idLibro "848")
	 (nPag 576)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/7171095-after")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "After"))

	([Book_849] of Libro
	 (autor [Author_847])
	 (generos
	     [Genres_7]
	     [Genres_6])
	 (idLibro "849")
	 (nPag 118)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17258795-beg")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Beg"))

	([Book_850] of Libro
	 (autor [Author_848])
	 (generos
	     [Genres_44]
	     [Genres_7])
	 (idLibro "850")
	 (nPag 296)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/25358242-no-mercy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "No Mercy"))

	([Book_851] of Libro
	 (autor [Author_849])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "851")
	 (nPag 272)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/30842.Riot")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Riot"))

	([Book_852] of Libro
	 (autor [Author_395])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "852")
	 (nPag 211)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/18211118-hell-s-knights")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hells Knights"))

	([Book_853] of Libro
	 (autor [Author_850])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "853")
	 (nPag 195)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15795312-white-heaven-women")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "White Heaven Women"))

	([Book_854] of Libro
	 (autor [Author_851])
	 (generos
	     [Genres_7]
	     [Genres_0])
	 (idLibro "854")
	 (nPag 233)
	 (publicacion 1984)
	 (url "https://www.goodreads.com/book/show/18750.Beauty_s_Punishment")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Beautys Punishment"))

	([Book_855] of Libro
	 (autor [Author_852])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "855")
	 (nPag 306)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17375956-reaper-s-property")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Reapers Property"))

	([Book_856] of Libro
	 (autor [Author_853])
	 (generos
	     [Genres_7]
	     [Genres_43])
	 (idLibro "856")
	 (nPag 302)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/25136702-the-suicide-princess")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Suicide Princess"))

	([Book_857] of Libro
	 (autor [Author_854])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "857")
	 (nPag 603)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/20758105-monsters-of-men")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Monsters of Men"))

	([Book_858] of Libro
	 (autor [Author_93])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "858")
	 (nPag 355)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7719355-blameless")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Blameless"))

	([Book_859] of Libro
	 (autor [Author_471])
	 (generos
	     [Genres_3]
	     [Genres_12])
	 (idLibro "859")
	 (nPag 389)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7091370-the-carrie-diaries")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Carrie Diaries"))

	([Book_860] of Libro
	 (autor [Author_96])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "860")
	 (nPag 447)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/6686092-lies")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Lies"))

	([Book_861] of Libro
	 (autor [Author_164])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "861")
	 (nPag 362)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7631105-the-scorch-trials")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Scorch Trials"))

	([Book_862] of Libro
	 (autor [Author_44])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "862")
	 (nPag 256)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/6393972-this-world-we-live-in")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "This World We Live In"))

	([Book_863] of Libro
	 (autor [Author_855])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "863")
	 (nPag 292)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7880584-dark-song")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dark Song"))

	([Book_864] of Libro
	 (autor [Author_856])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "864")
	 (nPag 416)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/6555517-the-dead-tossed-waves")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Dead-Tossed Waves"))

	([Book_865] of Libro
	 (autor [Author_857])
	 (generos
	     [Genres_0]
	     [Genres_20])
	 (idLibro "865")
	 (nPag 354)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/6642715-the-forty-rules-of-love")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Forty Rules of Love"))

	([Book_866] of Libro
	 (autor [Author_858])
	 (generos
	     [Genres_0]
	     [Genres_45])
	 (idLibro "866")
	 (nPag 256)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/128711.The_Yacoubian_Building")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Yacoubian Building"))

	([Book_867] of Libro
	 (autor [Author_859])
	 (generos
	     [Genres_46]
	     [Genres_0])
	 (idLibro "867")
	 (nPag 216)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17413424-denali-skies")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Denali Skies"))

	([Book_868] of Libro
	 (autor [Author_860])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "868")
	 (nPag 528)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/18149927-beneath-this-man")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Beneath This Man"))

	([Book_869] of Libro
	 (autor [Author_861])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "869")
	 (nPag 345)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16117506-beautiful-stranger")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Beautiful Stranger"))

	([Book_870] of Libro
	 (autor [Author_79])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "870")
	 (nPag 579)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13536860-fifty-shades-freed")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Fifty Shades Freed"))

	([Book_871] of Libro
	 (autor [Author_862])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "871")
	 (nPag 192)
	 (publicacion 1927)
	 (url "https://www.goodreads.com/book/show/207330.Gay_Neck")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gay-Neck The Story of a Pigeon"))

	([Book_872] of Libro
	 (autor [Author_863])
	 (generos
	     [Genres_22]
	     [Genres_21])
	 (idLibro "872")
	 (nPag 320)
	 (publicacion 2017)
	 (url "https://www.goodreads.com/book/show/30653713-hello-universe")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hello Universe"))

	([Book_873] of Libro
	 (autor [Author_864])
	 (generos
	     [Genres_0]
	     [Genres_3])
	 (idLibro "873")
	 (nPag 248)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/556975.Onion_John")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Onion John"))

	([Book_874] of Libro
	 (autor [Author_865])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "874")
	 (nPag 337)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/43475.Criss_Cross")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Criss Cross"))

	([Book_875] of Libro
	 (autor [Author_866])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "875")
	 (nPag 181)
	 (publicacion 1950)
	 (url "https://www.goodreads.com/book/show/254262.Amos_Fortune_Free_Man")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Amos Fortune Free Man"))

	([Book_876] of Libro
	 (autor [Author_867])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "876")
	 (nPag 146)
	 (publicacion 1938)
	 (url "https://www.goodreads.com/book/show/854764.Thimble_Summer")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Thimble Summer"))

	([Book_877] of Libro
	 (autor [Author_868])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "877")
	 (nPag 302)
	 (publicacion 1932)
	 (url "https://www.goodreads.com/book/show/1195367.Young_Fu_of_the_Upper_Yangtze")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Young Fu of the Upper Yangtze"))

	([Book_878] of Libro
	 (autor [Author_869])
	 (generos
	     [Genres_0]
	     [Genres_3])
	 (idLibro "878")
	 (nPag 176)
	 (publicacion 1963)
	 (url "https://www.goodreads.com/book/show/818095.It_s_Like_This_Cat")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Its Like This Cat"))

	([Book_879] of Libro
	 (autor [Author_870])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "879")
	 (nPag 160)
	 (publicacion 1964)
	 (url "https://www.goodreads.com/book/show/1077808.Shadow_of_a_Bull")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Shadow of a Bull"))

	([Book_880] of Libro
	 (autor [Author_871])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "880")
	 (nPag 96)
	 (publicacion 1937)
	 (url "https://www.goodreads.com/book/show/298523.The_White_Stag")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The White Stag"))

	([Book_881] of Libro
	 (autor [Author_70])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "881")
	 (nPag 417)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/493456.Extras")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Extras"))

	([Book_882] of Libro
	 (autor [Author_872])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "882")
	 (nPag 63)
	 (publicacion 1930)
	 (url "https://www.goodreads.com/book/show/200362.The_Cat_Who_Went_to_Heaven")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Cat Who Went to Heaven"))

	([Book_883] of Libro
	 (autor [Author_23])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "883")
	 (nPag 175)
	 (publicacion 1953)
	 (url "https://www.goodreads.com/book/show/13079982-fahrenheit-451")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Fahrenheit 451"))

	([Book_884] of Libro
	 (autor [Author_873])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "884")
	 (nPag 256)
	 (publicacion 1956)
	 (url "https://www.goodreads.com/book/show/826095.Miracles_on_Maple_Hill")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Miracles on Maple Hill"))

	([Book_885] of Libro
	 (autor [Author_874])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "885")
	 (nPag 320)
	 (publicacion 1942)
	 (url "https://www.goodreads.com/book/show/164255.Adam_of_the_Road")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Adam of the Road"))

	([Book_886] of Libro
	 (autor [Author_875])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "886")
	 (nPag 208)
	 (publicacion 1928)
	 (url "https://www.goodreads.com/book/show/825546.The_Trumpeter_of_Krakow")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Trumpeter of Krakow"))

	([Book_887] of Libro
	 (autor [Author_154])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "887")
	 (nPag 331)
	 (publicacion 1911)
	 (url "https://www.goodreads.com/book/show/2998.The_Secret_Garden")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Secret Garden"))

	([Book_888] of Libro
	 (autor [Author_335])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "888")
	 (nPag 1040)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/5451.Sisterhood_of_the_Traveling_Pants_Second_Summer_of_the_Sisterhood_Girls_in_Pants")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Sisterhood of the Traveling Pants  Second Summer of the Sisterhood  Girls in Pants"))

	([Book_889] of Libro
	 (autor [Author_876])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "889")
	 (nPag 144)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/325636.The_Summer_of_the_Swans")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Summer of the Swans"))

	([Book_890] of Libro
	 (autor [Author_877])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "890")
	 (nPag 89)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/403722.Missing_May")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Missing May Scholastic Gold"))

	([Book_891] of Libro
	 (autor [Author_878])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "891")
	 (nPag 127)
	 (publicacion 1944)
	 (url "https://www.goodreads.com/book/show/333735.Rabbit_Hill")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Rabbit Hill"))

	([Book_892] of Libro
	 (autor [Author_338])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "892")
	 (nPag 720)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/227652.Shadow_Children_Boxed_Set_")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Shadow Children Boxed Set Among the Hidden Among the Impostors Among the Betrayed Among the Barons"))

	([Book_893] of Libro
	 (autor [Author_879])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "893")
	 (nPag 192)
	 (publicacion 1965)
	 (url "https://www.goodreads.com/book/show/847581.I_Juan_de_Pareja")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "I Juan de Pareja"))

	([Book_894] of Libro
	 (autor [Author_880])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "894")
	 (nPag 262)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/266904.The_Penderwicks")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Penderwicks A Summer Tale of Four Sisters Two Rabbits and a Very Interesting Boy"))

	([Book_895] of Libro
	 (autor [Author_881])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "895")
	 (nPag 312)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/89755.Tangerine")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Tangerine"))

	([Book_896] of Libro
	 (autor [Author_130])
	 (generos
	     [Genres_14]
	     [Genres_0])
	 (idLibro "896")
	 (nPag 218)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/3293821-the-last-straw")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Last Straw"))

	([Book_897] of Libro
	 (autor [Author_882])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "897")
	 (nPag 256)
	 (publicacion 1929)
	 (url "https://www.goodreads.com/book/show/41457.Hitty_Her_First_Hundred_Years")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hitty Her First Hundred Years"))

	([Book_898] of Libro
	 (autor [Author_883])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "898")
	 (nPag 169)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/12930.Messenger")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Messenger"))

	([Book_899] of Libro
	 (autor [Author_884])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "899")
	 (nPag 128)
	 (publicacion 1940)
	 (url "https://www.goodreads.com/book/show/857528.Call_It_Courage")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Call It Courage"))

	([Book_900] of Libro
	 (autor [Author_885])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "900")
	 (nPag 197)
	 (publicacion 1966)
	 (url "https://www.goodreads.com/book/show/65954.Up_a_Road_Slowly")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Up a Road Slowly"))

	([Book_901] of Libro
	 (autor [Author_886])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "901")
	 (nPag 298)
	 (publicacion 1954)
	 (url "https://www.goodreads.com/book/show/468116.The_Wheel_on_the_School")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Wheel on the School"))

	([Book_902] of Libro
	 (autor [Author_887])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "902")
	 (nPag 120)
	 (publicacion 1949)
	 (url "https://www.goodreads.com/book/show/72543.The_Door_in_the_Wall")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Door in the Wall"))

	([Book_903] of Libro
	 (autor [Author_888])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "903")
	 (nPag 169)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/8953.Freak_the_Mighty")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Freak the Mighty"))

	([Book_904] of Libro
	 (autor [Author_889])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "904")
	 (nPag 251)
	 (publicacion 1955)
	 (url "https://www.goodreads.com/book/show/128048.Carry_On_Mr_Bowditch")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Carry On Mr Bowditch"))

	([Book_905] of Libro
	 (autor [Author_890])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "905")
	 (nPag 359)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/11831.Dicey_s_Song")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Diceys Song"))

	([Book_906] of Libro
	 (autor [Author_165])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "906")
	 (nPag 710)
	 (publicacion 1963)
	 (url "https://www.goodreads.com/book/show/11841.The_Time_Trilogy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Time Trilogy"))

	([Book_907] of Libro
	 (autor [Author_891])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "907")
	 (nPag 96)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/11824.The_Whipping_Boy")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Whipping Boy"))

	([Book_908] of Libro
	 (autor [Author_349])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "908")
	 (nPag 149)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/37732.Are_You_There_God_It_s_Me_Margaret")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Are You There God Its Me Margaret"))

	([Book_909] of Libro
	 (autor [Author_892])
	 (generos
	     [Genres_0]
	     [Genres_22])
	 (idLibro "909")
	 (nPag 180)
	 (publicacion 1947)
	 (url "https://www.goodreads.com/book/show/837501.The_Twenty_One_Balloons")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Twenty-One Balloons"))

	([Book_910] of Libro
	 (autor [Author_893])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "910")
	 (nPag 307)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11594337-the-one-and-only-ivan")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The One and Only Ivan"))

	([Book_911] of Libro
	 (autor [Author_894])
	 (generos
	     [Genres_22]
	     [Genres_0])
	 (idLibro "911")
	 (nPag 134)
	 (publicacion 1983)
	 (url "https://www.goodreads.com/book/show/105999.Dear_Mr_Henshaw")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dear Mr Henshaw"))

	([Book_912] of Libro
	 (autor [Author_411])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "912")
	 (nPag 176)
	 (publicacion 1972)
	 (url "https://www.goodreads.com/book/show/386286.Julie_of_the_Wolves")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Julie of the Wolves"))

	([Book_913] of Libro
	 (autor [Author_63])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "913")
	 (nPag 192)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/139463.Maniac_Magee")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Maniac Magee"))

	([Book_914] of Libro
	 (autor [Author_163])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "914")
	 (nPag 244)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/337058.Jacob_Have_I_Loved")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Jacob Have I Loved"))

	([Book_915] of Libro
	 (autor [Author_895])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "915")
	 (nPag 322)
	 (publicacion 1943)
	 (url "https://www.goodreads.com/book/show/816870.Johnny_Tremain")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Johnny Tremain"))

	([Book_916] of Libro
	 (autor [Author_334])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "916")
	 (nPag 176)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/4538.The_View_from_Saturday")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The View from Saturday"))

	([Book_917] of Libro
	 (autor [Author_401])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "917")
	 (nPag 208)
	 (publicacion 1986)
	 (url "https://www.goodreads.com/book/show/50.Hatchet")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Hatchet"))

	([Book_918] of Libro
	 (autor [Author_351])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "918")
	 (nPag 233)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/38709.Holes")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Holes"))

	([Book_919] of Libro
	 (autor [Author_34])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "919")
	 (nPag 231)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/59921.The_Telling")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Telling"))

	([Book_920] of Libro
	 (autor [Author_111])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "920")
	 (nPag 283)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/34507.Equal_Rites")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Equal Rites"))

	([Book_921] of Libro
	 (autor [Author_202])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "921")
	 (nPag 167)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/15050.Sexing_the_Cherry")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sexing the Cherry"))

	([Book_922] of Libro
	 (autor [Author_49])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "922")
	 (nPag 346)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/47122.Lady_Oracle")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Lady Oracle"))

	([Book_923] of Libro
	 (autor [Author_225])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "923")
	 (nPag 343)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/14250.Pigs_in_Heaven")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Pigs in Heaven"))

	([Book_924] of Libro
	 (autor [Author_896])
	 (generos
	     [Genres_27]
	     [Genres_0])
	 (idLibro "924")
	 (nPag 112)
	 (publicacion 1975)
	 (url "https://www.goodreads.com/book/show/159604.Woman_at_Point_Zero")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Woman at Point Zero"))

	([Book_925] of Libro
	 (autor [Author_172])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "925")
	 (nPag 306)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/47401.Chocolat")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Chocolat"))

	([Book_926] of Libro
	 (autor [Author_897])
	 (generos
	     [Genres_0]
	     [Genres_47])
	 (idLibro "926")
	 (nPag 371)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/41193.A_Thousand_Acres")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Thousand Acres"))

	([Book_927] of Libro
	 (autor [Author_547])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "927")
	 (nPag 433)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/18749.Half_of_a_Yellow_Sun")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Half of a Yellow Sun"))

	([Book_928] of Libro
	 (autor [Author_898])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "928")
	 (nPag 256)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/312435.So_Far_from_God")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "So Far from God"))

	([Book_929] of Libro
	 (autor [Author_899])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "929")
	 (nPag 345)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1629601.The_Disreputable_History_of_Frankie_Landau_Banks")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Disreputable History of Frankie Landau-Banks"))

	([Book_930] of Libro
	 (autor [Author_900])
	 (generos
	     [Genres_0]
	     [Genres_48])
	 (idLibro "930")
	 (nPag 288)
	 (publicacion 1983)
	 (url "https://www.goodreads.com/book/show/219879.The_Piano_Teacher")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Piano Teacher"))

	([Book_931] of Libro
	 (autor [Author_32])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "931")
	 (nPag 746)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/60926.Lilith_s_Brood")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Liliths Brood"))

	([Book_932] of Libro
	 (autor [Author_901])
	 (generos
	     [Genres_0]
	     [Genres_27])
	 (idLibro "932")
	 (nPag 320)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/22749796-dietland")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dietland"))

	([Book_933] of Libro
	 (autor [Author_902])
	 (generos
	     [Genres_0]
	     [Genres_27])
	 (idLibro "933")
	 (nPag 147)
	 (publicacion 1915)
	 (url "https://www.goodreads.com/book/show/531509.Herland")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Herland"))

	([Book_934] of Libro
	 (autor [Author_743])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "934")
	 (nPag 386)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7767021-who-fears-death")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Who Fears Death"))

	([Book_935] of Libro
	 (autor [Author_903])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "935")
	 (nPag 355)
	 (publicacion 1961)
	 (url "https://www.goodreads.com/book/show/48328.Revolutionary_Road")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Revolutionary Road"))

	([Book_936] of Libro
	 (autor [Author_904])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "936")
	 (nPag 279)
	 (publicacion 1813)
	 (url "https://www.goodreads.com/book/show/1885.Pride_and_Prejudice")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Pride and Prejudice"))

	([Book_937] of Libro
	 (autor [Author_124])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "937")
	 (nPag 318)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/5198.Paradise")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Paradise"))

	([Book_938] of Libro
	 (autor [Author_905])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "938")
	 (nPag 393)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/35959740-circe")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Circe"))

	([Book_939] of Libro
	 (autor [Author_570])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "939")
	 (nPag 351)
	 (publicacion 1905)
	 (url "https://www.goodreads.com/book/show/17728.The_House_of_Mirth")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The House of Mirth"))

	([Book_940] of Libro
	 (autor [Author_60])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "940")
	 (nPag 416)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/12557.The_Kitchen_God_s_Wife")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Kitchen Gods Wife"))

	([Book_941] of Libro
	 (autor [Author_906])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "941")
	 (nPag 640)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/24100.The_Golden_Notebook")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Golden Notebook"))

	([Book_942] of Libro
	 (autor [Author_907])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "942")
	 (nPag 160)
	 (publicacion 1966)
	 (url "https://www.goodreads.com/book/show/25622780-wide-sargasso-sea")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Wide Sargasso Sea"))

	([Book_943] of Libro
	 (autor [Author_178])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "943")
	 (nPag 448)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/9328.The_House_of_the_Spirits")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The House of the Spirits"))

	([Book_944] of Libro
	 (autor [Author_185])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "944")
	 (nPag 295)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/11486.The_Color_Purple")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Color Purple"))

	([Book_945] of Libro
	 (autor [Author_908])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "945")
	 (nPag 309)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/49838.Titan")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Titan"))

	([Book_946] of Libro
	 (autor [Author_909])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "946")
	 (nPag 419)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/337048.The_Engines_of_God")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Engines of God"))

	([Book_947] of Libro
	 (autor [Author_910])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "947")
	 (nPag 352)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/185824.Cosmonaut_Keep")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Cosmonaut Keep"))

	([Book_948] of Libro
	 (autor [Author_13])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "948")
	 (nPag 285)
	 (publicacion 1968)
	 (url "https://www.goodreads.com/book/show/100366.Neutron_Star")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Neutron Star"))

	([Book_949] of Libro
	 (autor [Author_911])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "949")
	 (nPag 608)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/141805.Cities_in_Flight")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Cities in Flight"))

	([Book_950] of Libro
	 (autor [Author_912])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "950")
	 (nPag 241)
	 (publicacion 1968)
	 (url "https://www.goodreads.com/book/show/85863.Nova")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Nova"))

	([Book_951] of Libro
	 (autor [Author_618])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "951")
	 (nPag 410)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/89195.The_Prefect")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Prefect"))

	([Book_952] of Libro
	 (autor [Author_913])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "952")
	 (nPag 318)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/77887.Sun_of_Suns")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sun of Suns"))

	([Book_953] of Libro
	 (autor [Author_914])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "953")
	 (nPag 448)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/363059.The_Price_of_the_Stars")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Price of the Stars"))

	([Book_954] of Libro
	 (autor [Author_107])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "954")
	 (nPag 564)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/36162.This_Alien_Shore")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "This Alien Shore"))

	([Book_955] of Libro
	 (autor [Author_915])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "955")
	 (nPag 174)
	 (publicacion 1953)
	 (url "https://www.goodreads.com/book/show/525285.Mission_of_Gravity")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Mission of Gravity"))

	([Book_956] of Libro
	 (autor [Author_916])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "956")
	 (nPag 376)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/9851483-spinward-fringe-broadcast-0")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Spinward Fringe Broadcast 0 Origins"))

	([Book_957] of Libro
	 (autor [Author_917])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "957")
	 (nPag 352)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/739986.Expendable")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Expendable"))

	([Book_958] of Libro
	 (autor [Author_9])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "958")
	 (nPag 253)
	 (publicacion 1952)
	 (url "https://www.goodreads.com/book/show/50848.The_Rolling_Stones")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Rolling Stones"))

	([Book_959] of Libro
	 (autor [Author_918])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "959")
	 (nPag 608)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/25320.March_Upcountry")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "March Upcountry"))

	([Book_960] of Libro
	 (autor [Author_373])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "960")
	 (nPag 304)
	 (publicacion 1951)
	 (url "https://www.goodreads.com/book/show/41822.The_Stars_Like_Dust")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Stars Like Dust"))

	([Book_961] of Libro
	 (autor [Author_616])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "961")
	 (nPag 592)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/761154.The_Reality_Dysfunction_1")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Reality Dysfunction 1 Emergence"))

	([Book_962] of Libro
	 (autor [Author_919])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "962")
	 (nPag 243)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/676237.Space_Viking")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Space Viking"))

	([Book_963] of Libro
	 (autor [Author_920])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "963")
	 (nPag 416)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/207410.The_Golden_Age")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Golden Age"))

	([Book_964] of Libro
	 (autor [Author_46])
	 (generos
	     [Genres_5]
	     [Genres_4])
	 (idLibro "964")
	 (nPag 192)
	 (publicacion 1895)
	 (url "https://www.goodreads.com/book/show/8909.The_War_of_the_Worlds")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The War of the Worlds"))

	([Book_965] of Libro
	 (autor [Author_921])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "965")
	 (nPag 352)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/288756.Crystal_Soldier")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Crystal Soldier"))

	([Book_966] of Libro
	 (autor [Author_922])
	 (generos
	     [Genres_4]
	     [Genres_14])
	 (idLibro "966")
	 (nPag 232)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/505064.Phule_s_Company")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Phules Company"))

	([Book_967] of Libro
	 (autor [Author_923])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "967")
	 (nPag 436)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/686344.Coyote")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Coyote"))

	([Book_968] of Libro
	 (autor [Author_924])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "968")
	 (nPag 526)
	 (publicacion 1981)
	 (url "https://www.goodreads.com/book/show/57045.Downbelow_Station")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Downbelow Station"))

	([Book_969] of Libro
	 (autor [Author_925])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "969")
	 (nPag 426)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/6130052-a-galaxy-unknown")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Galaxy Unknown"))

	([Book_970] of Libro
	 (autor [Author_606])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "970")
	 (nPag 389)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/81992.Singularity_Sky")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Singularity Sky"))

	([Book_971] of Libro
	 (autor [Author_926])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "971")
	 (nPag 684)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/99219.The_Butlerian_Jihad")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Butlerian Jihad"))

	([Book_972] of Libro
	 (autor [Author_927])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "972")
	 (nPag 320)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15790894-fortune-s-pawn")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Fortunes Pawn"))

	([Book_973] of Libro
	 (autor [Author_928])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "973")
	 (nPag 400)
	 (publicacion 1966)
	 (url "https://www.goodreads.com/book/show/317621.The_Witches_of_Karres")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Witches of Karres"))

	([Book_974] of Libro
	 (autor [Author_929])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "974")
	 (nPag 448)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/85653.The_Praxis")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Praxis"))

	([Book_975] of Libro
	 (autor [Author_930])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "975")
	 (nPag 352)
	 (publicacion 2017)
	 (url "https://www.goodreads.com/book/show/41955494-tyche-s-flight")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Tyches Flight"))

	([Book_976] of Libro
	 (autor [Author_931])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "976")
	 (nPag 571)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/629068.Deathstalker")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Deathstalker"))

	([Book_977] of Libro
	 (autor [Author_932])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "977")
	 (nPag 391)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/1053783.Midshipman_s_Hope")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Midshipmans Hope"))

	([Book_978] of Libro
	 (autor [Author_933])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "978")
	 (nPag 384)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/365672.Primary_Inversion")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Primary Inversion"))

	([Book_979] of Libro
	 (autor [Author_155])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "979")
	 (nPag 336)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/61938.The_Rowan")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Rowan"))

	([Book_980] of Libro
	 (autor [Author_492])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "980")
	 (nPag 241)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/427353.The_Gap_Into_Conflict")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Gap Into Conflict The Real Story"))

	([Book_981] of Libro
	 (autor [Author_934])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "981")
	 (nPag 280)
	 (publicacion 1960)
	 (url "https://www.goodreads.com/book/show/263111.Dorsai_")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Dorsai"))

	([Book_982] of Libro
	 (autor [Author_613])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "982")
	 (nPag 423)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/98046.Gridlinked")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gridlinked"))

	([Book_983] of Libro
	 (autor [Author_935])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "983")
	 (nPag 394)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/664642.Stardoc")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Stardoc"))

	([Book_984] of Libro
	 (autor [Author_936])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "984")
	 (nPag 389)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/129582.Mutineer")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Mutineer"))

	([Book_985] of Libro
	 (autor [Author_937])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "985")
	 (nPag 336)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/286445.With_the_Lightnings")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "With the Lightnings"))

	([Book_986] of Libro
	 (autor [Author_938])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "986")
	 (nPag 654)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/898232.Hidden_Empire")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hidden Empire"))

	([Book_987] of Libro
	 (autor [Author_939])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "987")
	 (nPag 287)
	 (publicacion 1934)
	 (url "https://www.goodreads.com/book/show/444944.Triplanetary")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Triplanetary"))

	([Book_988] of Libro
	 (autor [Author_450])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "988")
	 (nPag 320)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13055592-redshirts")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Redshirts"))

	([Book_989] of Libro
	 (autor [Author_940])
	 (generos
	     [Genres_42]
	     [Genres_4])
	 (idLibro "989")
	 (nPag 705)
	 (publicacion 1976)
	 (url "https://www.goodreads.com/book/show/35434.The_Star_Wars_Trilogy")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Star Wars Trilogy"))

	([Book_990] of Libro
	 (autor [Author_308])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "990")
	 (nPag 1376)
	 (publicacion 1981)
	 (url "https://www.goodreads.com/book/show/390711.Noble_House")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Noble House"))

	([Book_991] of Libro
	 (autor [Author_375])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "991")
	 (nPag 979)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/234184.Stone_of_Tears")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Stone of Tears"))

	([Book_992] of Libro
	 (autor [Author_31])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "992")
	 (nPag 312)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/1828067.Grimspace")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Grimspace"))

	([Book_993] of Libro
	 (autor [Author_941])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "993")
	 (nPag 416)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/772606.Valor_s_Choice")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Valors Choice"))

	([Book_994] of Libro
	 (autor [Author_16])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "994")
	 (nPag 790)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/107291.Needful_Things")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Needful Things"))

	([Book_995] of Libro
	 (autor [Author_942])
	 (generos
	     [Genres_4]
	     [Genres_26])
	 (idLibro "995")
	 (nPag 467)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/528362.A_Hymn_Before_Battle")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Hymn Before Battle"))

	([Book_996] of Libro
	 (autor [Author_439])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "996")
	 (nPag 434)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/12009.The_Algebraist")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Algebraist"))

	([Book_997] of Libro
	 (autor [Author_943])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "997")
	 (nPag 1424)
	 (publicacion 1978)
	 (url "https://www.goodreads.com/book/show/264778.Sacajawea")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Sacajawea"))

	([Book_998] of Libro
	 (autor [Author_27])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "998")
	 (nPag 340)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/96472.Sundiver")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sundiver"))

	([Book_999] of Libro
	 (autor [Author_159])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "999")
	 (nPag 1011)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/35231.Lord_of_Chaos")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Lord of Chaos"))

	([Book_1000] of Libro
	 (autor [Author_161])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1000")
	 (nPag 994)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/1215032.The_Wise_Man_s_Fear")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Wise Mans Fear"))

	([Book_1001] of Libro
	 (autor [Author_944])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1001")
	 (nPag 1050)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/769658.Battlefield_Earth")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Battlefield Earth A Saga of the Year 3000"))

	([Book_1002] of Libro
	 (autor [Author_945])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1002")
	 (nPag 1125)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/10664113-a-dance-with-dragons")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "A Dance with Dragons"))

	([Book_1003] of Libro
	 (autor [Author_303])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1003")
	 (nPag 912)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/1853145.Sarum")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Sarum The Novel of England"))

	([Book_1004] of Libro
	 (autor [Author_946])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1004")
	 (nPag 482)
	 (publicacion 1989)
	 (url "https://www.goodreads.com/book/show/77566.Hyperion")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Hyperion"))

	([Book_1005] of Libro
	 (autor [Author_343])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1005")
	 (nPag 896)
	 (publicacion 1971)
	 (url "https://www.goodreads.com/book/show/21484.The_Winds_of_War")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Winds of War"))

	([Book_1006] of Libro
	 (autor [Author_947])
	 (generos
	     [Genres_42]
	     [Genres_4])
	 (idLibro "1006")
	 (nPag 404)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/40604754-heir-to-the-empire")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Heir to the Empire"))

	([Book_1007] of Libro
	 (autor [Author_948])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1007")
	 (nPag 1184)
	 (publicacion 1982)
	 (url "https://www.goodreads.com/book/show/576666._And_Ladies_of_the_Club")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "And Ladies of the Club"))

	([Book_1008] of Libro
	 (autor [Author_949])
	 (generos
	     [Genres_4]
	     [Genres_32])
	 (idLibro "1008")
	 (nPag 304)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/112292.Dauntless")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Dauntless"))

	([Book_1009] of Libro
	 (autor [Author_19])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1009")
	 (nPag 927)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/823.Quicksilver")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Quicksilver"))

	([Book_1010] of Libro
	 (autor [Author_239])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1010")
	 (nPag 667)
	 (publicacion 1869)
	 (url "https://www.goodreads.com/book/show/12505.The_Idiot")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Idiot"))

	([Book_1011] of Libro
	 (autor [Author_686])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1011")
	 (nPag 672)
	 (publicacion 1947)
	 (url "https://www.goodreads.com/book/show/34440.Doctor_Faustus")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Doktor Faustus"))

	([Book_1012] of Libro
	 (autor [Author_950])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1012")
	 (nPag 240)
	 (publicacion 1981)
	 (url "https://www.goodreads.com/book/show/46087.The_White_Hotel")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The White Hotel"))

	([Book_1013] of Libro
	 (autor [Author_951])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1013")
	 (nPag 304)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/15836.Fugitive_Pieces")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Fugitive Pieces"))

	([Book_1014] of Libro
	 (autor [Author_952])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1014")
	 (nPag 368)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/11010251-the-lost-wife")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Lost Wife"))

	([Book_1015] of Libro
	 (autor [Author_953])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1015")
	 (nPag 1534)
	 (publicacion 1748)
	 (url "https://www.goodreads.com/book/show/529243.Clarissa_or_the_History_of_a_Young_Lady")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Clarissa or the History of a Young Lady"))

	([Book_1016] of Libro
	 (autor [Author_558])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1016")
	 (nPag 4211)
	 (publicacion 1927)
	 (url "https://www.goodreads.com/book/show/18796.In_Search_of_Lost_Time")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "In Search of Lost Time"))

	([Book_1017] of Libro
	 (autor [Author_219])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1017")
	 (nPag 882)
	 (publicacion 1849)
	 (url "https://www.goodreads.com/book/show/58696.David_Copperfield")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "David Copperfield"))

	([Book_1018] of Libro
	 (autor [Author_307])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1018")
	 (nPag 692)
	 (publicacion 1977)
	 (url "https://www.goodreads.com/book/show/3412.The_Thorn_Birds")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Thorn Birds"))

	([Book_1019] of Libro
	 (autor [Author_954])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1019")
	 (nPag 764)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7274337-the-invisible-bridge")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Invisible Bridge"))

	([Book_1020] of Libro
	 (autor [Author_318])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1020")
	 (nPag 432)
	 (publicacion 1970)
	 (url "https://www.goodreads.com/book/show/426825.QB_VII")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "QB VII"))

	([Book_1021] of Libro
	 (autor [Author_265])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1021")
	 (nPag 536)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/119073.The_Name_of_the_Rose")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Name of the Rose"))

	([Book_1022] of Libro
	 (autor [Author_955])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1022")
	 (nPag 1007)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/7235533-the-way-of-kings")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Way of Kings"))

	([Book_1023] of Libro
	 (autor [Author_137])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "1023")
	 (nPag 897)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/227711.I_Know_This_Much_Is_True")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "I Know This Much Is True"))

	([Book_1024] of Libro
	 (autor [Author_956])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1024")
	 (nPag 262)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/318335.Fatelessness")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Fatelessness"))

	([Book_1025] of Libro
	 (autor [Author_957])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1025")
	 (nPag 1182)
	 (publicacion 1008)
	 (url "https://www.goodreads.com/book/show/7042.The_Tale_of_Genji")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Tale of Genji"))

	([Book_1026] of Libro
	 (autor [Author_227])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1026")
	 (nPag 601)
	 (publicacion 1952)
	 (url "https://www.goodreads.com/book/show/4406.East_of_Eden")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "East of Eden"))

	([Book_1027] of Libro
	 (autor [Author_38])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1027")
	 (nPag 704)
	 (publicacion 1943)
	 (url "https://www.goodreads.com/book/show/2122.The_Fountainhead")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Fountainhead"))

	([Book_1028] of Libro
	 (autor [Author_958])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1028")
	 (nPag 543)
	 (publicacion 1947)
	 (url "https://www.goodreads.com/book/show/3344411-every-man-dies-alone")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Every Man Dies Alone"))

	([Book_1029] of Libro
	 (autor [Author_959])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1029")
	 (nPag 525)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/77163.Stones_from_the_River")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Stones from the River"))

	([Book_1030] of Libro
	 (autor [Author_960])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1030")
	 (nPag 191)
	 (publicacion 1971)
	 (url "https://www.goodreads.com/book/show/54283.When_Hitler_Stole_Pink_Rabbit")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "When Hitler Stole Pink Rabbit"))

	([Book_1031] of Libro
	 (autor [Author_473])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1031")
	 (nPag 783)
	 (publicacion 1922)
	 (url "https://www.goodreads.com/book/show/338798.Ulysses")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Ulysses"))

	([Book_1032] of Libro
	 (autor [Author_961])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1032")
	 (nPag 320)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/216408.The_True_Story_of_Hansel_and_Gretel")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The True Story of Hansel and Gretel"))

	([Book_1033] of Libro
	 (autor [Author_329])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1033")
	 (nPag 964)
	 (publicacion 1877)
	 (url "https://www.goodreads.com/book/show/15823480-anna-karenina")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Anna Karenina"))

	([Book_1034] of Libro
	 (autor [Author_962])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1034")
	 (nPag 431)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/43944.Suite_Fran_aise")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Suite Franaise"))

	([Book_1035] of Libro
	 (autor [Author_963])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1035")
	 (nPag 479)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/49465.Those_Who_Save_Us")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Those Who Save Us"))

	([Book_1036] of Libro
	 (autor [Author_964])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1036")
	 (nPag 384)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18773488-juliet-s-nurse")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Juliets Nurse"))

	([Book_1037] of Libro
	 (autor [Author_819])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1037")
	 (nPag 432)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18667976-the-secret-life-of-violet-grant")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Secret Life of Violet Grant"))

	([Book_1038] of Libro
	 (autor [Author_965])
	 (generos
	     [Genres_13]
	     [Genres_25])
	 (idLibro "1038")
	 (nPag 437)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18312044-mark-of-distinction")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Mark of Distinction"))

	([Book_1039] of Libro
	 (autor [Author_966])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1039")
	 (nPag 320)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20729810-the-may-bride")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The May Bride"))

	([Book_1040] of Libro
	 (autor [Author_967])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1040")
	 (nPag 523)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18050175-the-quick")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Quick"))

	([Book_1041] of Libro
	 (autor [Author_968])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1041")
	 (nPag 722)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18799339-the-prince-s-doom")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Princes Doom"))

	([Book_1042] of Libro
	 (autor [Author_969])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1042")
	 (nPag 610)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17333455-somerset")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Somerset"))

	([Book_1043] of Libro
	 (autor [Author_970])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1043")
	 (nPag 322)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18114165-mrs-hemingway")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Mrs Hemingway"))

	([Book_1044] of Libro
	 (autor [Author_971])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1044")
	 (nPag 432)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/22291586-the-marriage-game")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Marriage Game"))

	([Book_1045] of Libro
	 (autor [Author_972])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1045")
	 (nPag 320)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17571569-revolutionary")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Revolutionary"))

	([Book_1046] of Libro
	 (autor [Author_973])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1046")
	 (nPag 319)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18695272-the-care-and-management-of-lies")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Care and Management of Lies"))

	([Book_1047] of Libro
	 (autor [Author_974])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1047")
	 (nPag 390)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/20874139-i-am-livia")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "I Am Livia"))

	([Book_1048] of Libro
	 (autor [Author_975])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1048")
	 (nPag 435)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18498569-the-miniaturist")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Miniaturist"))

	([Book_1049] of Libro
	 (autor [Author_976])
	 (generos
	     [Genres_13]
	     [Genres_25])
	 (idLibro "1049")
	 (nPag 336)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18850688-the-butterfly-and-the-violin")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Butterfly and the Violin"))

	([Book_1050] of Libro
	 (autor [Author_977])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1050")
	 (nPag 304)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/20026466-i-shall-be-near-to-you")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "I Shall be Near to You"))

	([Book_1051] of Libro
	 (autor [Author_275])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "1051")
	 (nPag 310)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/41017660-the-dead-in-their-vaulted-arches")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Dead in Their Vaulted Arches"))

	([Book_1052] of Libro
	 (autor [Author_978])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1052")
	 (nPag 368)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18693612-flight-of-the-sparrow")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Flight of the Sparrow"))

	([Book_1053] of Libro
	 (autor [Author_979])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1053")
	 (nPag 343)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18114101-i-always-loved-you")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "I Always Loved You"))

	([Book_1054] of Libro
	 (autor [Author_980])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1054")
	 (nPag 608)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17934498-my-name-is-resolute")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "My Name Is Resolute"))

	([Book_1055] of Libro
	 (autor [Author_981])
	 (generos
	     [Genres_13]
	     [Genres_25])
	 (idLibro "1055")
	 (nPag 430)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18008080-for-such-a-time")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "For Such a Time"))

	([Book_1056] of Libro
	 (autor [Author_291])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1056")
	 (nPag 376)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18404427-china-dolls")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "China Dolls"))

	([Book_1057] of Libro
	 (autor [Author_982])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1057")
	 (nPag 585)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18077814-the-lost-sisterhood")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Lost Sisterhood"))

	([Book_1058] of Libro
	 (autor [Author_983])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1058")
	 (nPag 384)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17934404-the-queen-s-dwarf")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Queens Dwarf"))

	([Book_1059] of Libro
	 (autor [Author_984])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1059")
	 (nPag 416)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18231545-the-boleyn-reckoning")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Boleyn Reckoning"))

	([Book_1060] of Libro
	 (autor [Author_985])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1060")
	 (nPag 496)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18143995-the-traitor-s-wife")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Traitors Wife"))

	([Book_1061] of Libro
	 (autor [Author_986])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1061")
	 (nPag 287)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/17974995-the-daring-ladies-of-lowell")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Daring Ladies of Lowell"))

	([Book_1062] of Libro
	 (autor [Author_148])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1062")
	 (nPag 416)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18295858-frog-music")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Frog Music"))

	([Book_1063] of Libro
	 (autor [Author_987])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1063")
	 (nPag 432)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18079837-mrs-lincoln-s-rival")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Mrs Lincolns Rival"))

	([Book_1064] of Libro
	 (autor [Author_988])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1064")
	 (nPag 458)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18079482-the-swan-gondola")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Swan Gondola"))

	([Book_1065] of Libro
	 (autor [Author_175])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1065")
	 (nPag 368)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18144053-the-museum-of-extraordinary-things")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Museum of Extraordinary Things"))

	([Book_1066] of Libro
	 (autor [Author_989])
	 (generos
	     [Genres_13]
	     [Genres_25])
	 (idLibro "1066")
	 (nPag 320)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18128119-butterfly-palace")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Butterfly Palace"))

	([Book_1067] of Libro
	 (autor [Author_990])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1067")
	 (nPag 336)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18209338-the-shadow-queen")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Shadow Queen"))

	([Book_1068] of Libro
	 (autor [Author_230])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1068")
	 (nPag 14)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18079776-the-invention-of-wings")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Invention of Wings"))

	([Book_1069] of Libro
	 (autor [Author_67])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1069")
	 (nPag 592)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/15849910-the-king-s-curse")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Kings Curse"))

	([Book_1070] of Libro
	 (autor [Author_991])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1070")
	 (nPag 685)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18079806-a-king-s-ransom")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Kings Ransom"))

	([Book_1071] of Libro
	 (autor [Author_603])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1071")
	 (nPag 345)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15799166-release-me")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Release Me"))

	([Book_1072] of Libro
	 (autor [Author_599])
	 (generos
	     [Genres_7]
	     [Genres_6])
	 (idLibro "1072")
	 (nPag 341)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/16087857-wicked-ties")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Wicked Ties"))

	([Book_1073] of Libro
	 (autor [Author_992])
	 (generos
	     [Genres_14]
	     [Genres_12])
	 (idLibro "1073")
	 (nPag 234)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/21446945-milk-turkey-and-neurosis")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Milk Turkey and Neurosis Or How Mother Almost Ruined My Life"))

	([Book_1074] of Libro
	 (autor [Author_993])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1074")
	 (nPag 284)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/40044302-throttle-me")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Throttle Me"))

	([Book_1075] of Libro
	 (autor [Author_496])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1075")
	 (nPag 240)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16001443-all-in")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "All In"))

	([Book_1076] of Libro
	 (autor [Author_518])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1076")
	 (nPag 270)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/20646604-night-owl")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Night Owl"))

	([Book_1077] of Libro
	 (autor [Author_413])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1077")
	 (nPag 448)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/9442157-rock-hard")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Rock Hard"))

	([Book_1078] of Libro
	 (autor [Author_685])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "1078")
	 (nPag 417)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11387447-the-nightmare-garden")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Nightmare Garden"))

	([Book_1079] of Libro
	 (autor [Author_994])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1079")
	 (nPag 309)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/8573632-the-way-we-fall")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Way We Fall"))

	([Book_1080] of Libro
	 (autor [Author_995])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1080")
	 (nPag 253)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/12797906-extranormal")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "ExtraNormal"))

	([Book_1081] of Libro
	 (autor [Author_86])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "1081")
	 (nPag 362)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/10677277-article-5")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Article 5"))

	([Book_1082] of Libro
	 (autor [Author_996])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "1082")
	 (nPag 313)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11870085-the-fault-in-our-stars")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Fault in Our Stars"))

	([Book_1083] of Libro
	 (autor [Author_997])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1083")
	 (nPag 278)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15818107-orphan-train")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Orphan Train"))

	([Book_1084] of Libro
	 (autor [Author_99])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1084")
	 (nPag 374)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/11594257-under-the-never-sky")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Under the Never Sky"))

	([Book_1085] of Libro
	 (autor [Author_98])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "1085")
	 (nPag 341)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11112619-fever")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Fever"))

	([Book_1086] of Libro
	 (autor [Author_298])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1086")
	 (nPag 384)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/68528.The_Pale_Horseman")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Pale Horseman"))

	([Book_1087] of Libro
	 (autor [Author_36])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1087")
	 (nPag 386)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/10345927-a-million-suns")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Million Suns"))

	([Book_1088] of Libro
	 (autor [Author_998])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1088")
	 (nPag 489)
	 (publicacion 2007)
	 (url "https://www.goodreads.com/book/show/23316548-the-book-of-negroes")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Someone Knows My Name"))

	([Book_1089] of Libro
	 (autor [Author_999])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1089")
	 (nPag 229)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/95141.The_Kitchen_Boy")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Kitchen Boy A Novel of the Last Tsar"))

	([Book_1090] of Libro
	 (autor [Author_1000])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1090")
	 (nPag 436)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/71622.The_Widow_of_the_South")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Widow of the South"))

	([Book_1091] of Libro
	 (autor [Author_147])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1091")
	 (nPag 404)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16115612-and-the-mountains-echoed")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "And the Mountains Echoed"))

	([Book_1092] of Libro
	 (autor [Author_1001])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1092")
	 (nPag 84)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/40063283-a-hundred-fires-in-cuba")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Hundred Fires in Cuba"))

	([Book_1093] of Libro
	 (autor [Author_312])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1093")
	 (nPag 412)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13507212-bring-up-the-bodies")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Bring Up the Bodies"))

	([Book_1094] of Libro
	 (autor [Author_448])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1094")
	 (nPag 442)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/16047.A_Thread_of_Grace")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "A Thread of Grace"))

	([Book_1095] of Libro
	 (autor [Author_1002])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1095")
	 (nPag 522)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/5167.Cane_River")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Cane River"))

	([Book_1096] of Libro
	 (autor [Author_53])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1096")
	 (nPag 460)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15753740-the-storyteller")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Storyteller"))

	([Book_1097] of Libro
	 (autor [Author_142])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1097")
	 (nPag 280)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/13529.March")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "March"))

	([Book_1098] of Libro
	 (autor [Author_112])
	 (generos
	     [Genres_14]
	     [Genres_0])
	 (idLibro "1098")
	 (nPag 444)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/28881.Lamb")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Lamb The Gospel According to Biff Christs Childhood Pal"))

	([Book_1099] of Libro
	 (autor [Author_116])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1099")
	 (nPag 440)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/21853621-the-nightingale")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Nightingale"))

	([Book_1100] of Libro
	 (autor [Author_196])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1100")
	 (nPag 487)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/1232.The_Shadow_of_the_Wind")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Shadow of the Wind"))

	([Book_1101] of Libro
	 (autor [Author_1003])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1101")
	 (nPag 448)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/514811.The_Secret_Magdalene")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Secret Magdalene"))

	([Book_1102] of Libro
	 (autor [Author_1004])
	 (generos
	     [Genres_6]
	     [Genres_12])
	 (idLibro "1102")
	 (nPag 234)
	 (publicacion 2009)
	 (url "https://www.goodreads.com/book/show/7286942-right-fit-wrong-shoe")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Right Fit Wrong Shoe"))

	([Book_1103] of Libro
	 (autor [Author_1005])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1103")
	 (nPag 183)
	 (publicacion 1980)
	 (url "https://www.goodreads.com/book/show/35997.Clear_Light_of_Day")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Clear Light of Day"))

	([Book_1104] of Libro
	 (autor [Author_1006])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1104")
	 (nPag 316)
	 (publicacion 1929)
	 (url "https://www.goodreads.com/book/show/617097.Pather_Panchali")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Pather Panchali Song of the Road"))

	([Book_1105] of Libro
	 (autor [Author_1007])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "1105")
	 (nPag 169)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/4525896-gently-falls-the-bakula")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gently Falls the Bakula"))

	([Book_1106] of Libro
	 (autor [Author_1008])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1106")
	 (nPag 282)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/354501.Difficult_Daughters")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Difficult Daughters"))

	([Book_1107] of Libro
	 (autor [Author_1009])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1107")
	 (nPag 609)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/109326.Cuckold")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Cuckold"))

	([Book_1108] of Libro
	 (autor [Author_1010])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1108")
	 (nPag 240)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13601144-em-and-the-big-hoom")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Em and The Big Hoom"))

	([Book_1109] of Libro
	 (autor [Author_1011])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1109")
	 (nPag 448)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/10098912-chanakya-s-chant")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Chanakyas Chant"))

	([Book_1110] of Libro
	 (autor [Author_1012])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1110")
	 (nPag 224)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/109335.Hullabaloo_in_the_Guava_Orchard")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hullabaloo in the Guava Orchard"))

	([Book_1111] of Libro
	 (autor [Author_1013])
	 (generos
	     [Genres_0]
	     [Genres_49])
	 (idLibro "1111")
	 (nPag 144)
	 (publicacion 1967)
	 (url "https://www.goodreads.com/book/show/113126.The_Vendor_of_Sweets")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Vendor of Sweets"))

	([Book_1112] of Libro
	 (autor [Author_1014])
	 (generos
	     [Genres_6]
	     [Genres_12])
	 (idLibro "1112")
	 (nPag 511)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/3840329-the-zoya-factor")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Zoya Factor"))

	([Book_1113] of Libro
	 (autor [Author_1015])
	 (generos
	     [Genres_0]
	     [Genres_10])
	 (idLibro "1113")
	 (nPag 575)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/12820793-the-oath-of-the-vayuputras")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Oath of the Vayuputras"))

	([Book_1114] of Libro
	 (autor [Author_1016])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1114")
	 (nPag 380)
	 (publicacion 2002)
	 (url "https://www.goodreads.com/book/show/27298.The_Twentieth_Wife")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Twentieth Wife"))

	([Book_1115] of Libro
	 (autor [Author_1017])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1115")
	 (nPag 190)
	 (publicacion 1975)
	 (url "https://www.goodreads.com/book/show/3853.Heat_and_Dust")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Heat and Dust"))

	([Book_1116] of Libro
	 (autor [Author_1018])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1116")
	 (nPag 213)
	 (publicacion 1916)
	 (url "https://www.goodreads.com/book/show/174216.The_Home_and_the_World")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Home and the World"))

	([Book_1117] of Libro
	 (autor [Author_1019])
	 (generos
	     [Genres_0]
	     [Genres_49])
	 (idLibro "1117")
	 (nPag 254)
	 (publicacion 2016)
	 (url "https://www.goodreads.com/book/show/29856080-destiny-of-shattered-dreams")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Destiny of Shattered Dreams"))

	([Book_1118] of Libro
	 (autor [Author_1020])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1118")
	 (nPag 432)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/18723.Brick_Lane")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Brick Lane"))

	([Book_1119] of Libro
	 (autor [Author_1021])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1119")
	 (nPag 344)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/256280.The_Siege_of_Krishnapur")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Siege of Krishnapur"))

	([Book_1120] of Libro
	 (autor [Author_1022])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1120")
	 (nPag 224)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/37447.The_Inscrutable_Americans")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Inscrutable Americans"))

	([Book_1121] of Libro
	 (autor [Author_1023])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1121")
	 (nPag 301)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/13707714-the-death-of-vishnu")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Death of Vishnu"))

	([Book_1122] of Libro
	 (autor [Author_188])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1122")
	 (nPag 152)
	 (publicacion 1922)
	 (url "https://www.goodreads.com/book/show/52036.Siddhartha")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Siddhartha"))

	([Book_1123] of Libro
	 (autor [Author_1024])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1123")
	 (nPag 152)
	 (publicacion 1956)
	 (url "https://www.goodreads.com/book/show/475235.The_Room_on_the_Roof")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Room on the Roof"))

	([Book_1124] of Libro
	 (autor [Author_1025])
	 (generos
	     [Genres_15]
	     [Genres_0])
	 (idLibro "1124")
	 (nPag 160)
	 (publicacion 1935)
	 (url "https://www.goodreads.com/book/show/162.Untouchable")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Untouchable"))

	([Book_1125] of Libro
	 (autor [Author_688])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1125")
	 (nPag 408)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/19660.Such_a_Long_Journey")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Such a Long Journey"))

	([Book_1126] of Libro
	 (autor [Author_1026])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1126")
	 (nPag 623)
	 (publicacion 1961)
	 (url "https://www.goodreads.com/book/show/5849.A_House_for_Mr_Biswas")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A House for Mr Biswas"))

	([Book_1127] of Libro
	 (autor [Author_1027])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1127")
	 (nPag 321)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/218357.The_Space_Between_Us")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Space Between Us"))

	([Book_1128] of Libro
	 (autor [Author_1028])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1128")
	 (nPag 916)
	 (publicacion 2006)
	 (url "https://www.goodreads.com/book/show/40090.Sacred_Games")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sacred Games"))

	([Book_1129] of Libro
	 (autor [Author_1029])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1129")
	 (nPag 326)
	 (publicacion 1988)
	 (url "https://www.goodreads.com/book/show/75703.English_August")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "English August An Indian Story"))

	([Book_1130] of Libro
	 (autor [Author_1030])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1130")
	 (nPag 352)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13529957-tell-a-thousand-lies")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Tell a Thousand Lies"))

	([Book_1131] of Libro
	 (autor [Author_1031])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1131")
	 (nPag 192)
	 (publicacion 1956)
	 (url "https://www.goodreads.com/book/show/785454.Train_to_Pakistan")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Train to Pakistan"))

	([Book_1132] of Libro
	 (autor [Author_1032])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "1132")
	 (nPag 326)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/17288156-the-smoky-mirror")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Smoky Mirror"))

	([Book_1133] of Libro
	 (autor [Author_77])
	 (generos
	     [Genres_6]
	     [Genres_0])
	 (idLibro "1133")
	 (nPag 390)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/6400090-the-last-song")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Last Song"))

	([Book_1134] of Libro
	 (autor [Author_1033])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "1134")
	 (nPag 245)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/12831355-the-coffee-shop")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Coffee Shop"))

	([Book_1135] of Libro
	 (autor [Author_1034])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1135")
	 (nPag 400)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/11882499-virtues-of-war")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Virtues of War"))

	([Book_1136] of Libro
	 (autor [Author_1035])
	 (generos
	     [Genres_4]
	     [Genres_38])
	 (idLibro "1136")
	 (nPag 430)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/13629983-devastation")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Devastation"))

	([Book_1137] of Libro
	 (autor [Author_1036])
	 (generos
	     [Genres_10]
	     [Genres_7])
	 (idLibro "1137")
	 (nPag 422)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/9555442-lovers-and-beloveds")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Lovers and Beloveds"))

	([Book_1138] of Libro
	 (autor [Author_1037])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "1138")
	 (nPag 326)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/9804652-the-empire")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Empire"))

	([Book_1139] of Libro
	 (autor [Author_1038])
	 (generos
	     [Genres_4]
	     [Genres_1])
	 (idLibro "1139")
	 (nPag 378)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13421993-atlas")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Atlas"))

	([Book_1140] of Libro
	 (autor [Author_1039])
	 (generos
	     [Genres_50]
	     [Genres_38])
	 (idLibro "1140")
	 (nPag 188)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/16182349-lifetime-of-moratoriums")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Lifetime of Moratoriums"))

	([Book_1141] of Libro
	 (autor [Author_1040])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "1141")
	 (nPag 208)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/25534273-the-corridor")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Corridor"))

	([Book_1142] of Libro
	 (autor [Author_1041])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "1142")
	 (nPag 368)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/25914930-chameleon")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Chameleon"))

	([Book_1143] of Libro
	 (autor [Author_1042])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1143")
	 (nPag 359)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23281943-deadly-design")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Deadly Design"))

	([Book_1144] of Libro
	 (autor [Author_1043])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "1144")
	 (nPag 360)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/20320562-zeroboxer")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Zeroboxer"))

	([Book_1145] of Libro
	 (autor [Author_1044])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1145")
	 (nPag 384)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/22811807-this-monstrous-thing")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "This Monstrous Thing"))

	([Book_1146] of Libro
	 (autor [Author_1045])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1146")
	 (nPag 400)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/18883256-mindwalker")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Mindwalker"))

	([Book_1147] of Libro
	 (autor [Author_1046])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1147")
	 (nPag 336)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/24804505-forget-tomorrow")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Forget Tomorrow"))

	([Book_1148] of Libro
	 (autor [Author_1047])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1148")
	 (nPag 329)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/21416690-the-invisible-library")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Invisible Library"))

	([Book_1149] of Libro
	 (autor [Author_1048])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "1149")
	 (nPag 352)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/18398627-conviction")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Conviction"))

	([Book_1150] of Libro
	 (autor [Author_1049])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1150")
	 (nPag 256)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/19237391-duplicity")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Duplicity"))

	([Book_1151] of Libro
	 (autor [Author_1050])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1151")
	 (nPag 393)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23281932-tracked")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Tracked"))

	([Book_1152] of Libro
	 (autor [Author_1051])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1152")
	 (nPag 244)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/18588998-5-to-1")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "5 to 1"))

	([Book_1153] of Libro
	 (autor [Author_1052])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1153")
	 (nPag 280)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/24340711-the-institute")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Institute"))

	([Book_1154] of Libro
	 (autor [Author_1053])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1154")
	 (nPag 152)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/27391037-cowboy-heat")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Cowboy Heat"))

	([Book_1155] of Libro
	 (autor [Author_1054])
	 (generos
	     [Genres_14]
	     [Genres_0])
	 (idLibro "1155")
	 (nPag 296)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/21222015-calico-jack-in-your-garden")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Calico Jack in your Garden"))

	([Book_1156] of Libro
	 (autor [Author_12])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1156")
	 (nPag 303)
	 (publicacion 1973)
	 (url "https://www.goodreads.com/book/show/4980.Breakfast_of_Champions")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Breakfast of Champions"))

	([Book_1157] of Libro
	 (autor [Author_235])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1157")
	 (nPag 189)
	 (publicacion 1926)
	 (url "https://www.goodreads.com/book/show/3876.The_Sun_Also_Rises")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Sun Also Rises"))

	([Book_1158] of Libro
	 (autor [Author_35])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1158")
	 (nPag 201)
	 (publicacion 1915)
	 (url "https://www.goodreads.com/book/show/485894.The_Metamorphosis")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Metamorphosis"))

	([Book_1159] of Libro
	 (autor [Author_1055])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1159")
	 (nPag 142)
	 (publicacion 1958)
	 (url "https://www.goodreads.com/book/show/251688.Breakfast_at_Tiffany_s")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Breakfast at Tiffanys"))

	([Book_1160] of Libro
	 (autor [Author_191])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1160")
	 (nPag 348)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/9712.Love_in_the_Time_of_Cholera")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Love in the Time of Cholera"))

	([Book_1161] of Libro
	 (autor [Author_1056])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "1161")
	 (nPag 368)
	 (publicacion 2016)
	 (url "https://www.goodreads.com/book/show/29492025-a-portrait-of-emily-price")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Portrait of Emily Price"))

	([Book_1162] of Libro
	 (autor [Author_1057])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "1162")
	 (nPag 394)
	 (publicacion 1992)
	 (url "https://www.goodreads.com/book/show/445593.Booked_To_Die")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Booked To Die"))

	([Book_1163] of Libro
	 (autor [Author_3])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1163")
	 (nPag 288)
	 (publicacion 1932)
	 (url "https://www.goodreads.com/book/show/5129.Brave_New_World")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Brave New World"))

	([Book_1164] of Libro
	 (autor [Author_1058])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "1164")
	 (nPag 260)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18293427-the-storied-life-of-a-j-fikry")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Storied Life of AJ Fikry"))

	([Book_1165] of Libro
	 (autor [Author_301])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1165")
	 (nPag 610)
	 (publicacion 1978)
	 (url "https://www.goodreads.com/book/show/7069.The_World_According_to_Garp")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The World According to Garp"))

	([Book_1166] of Libro
	 (autor [Author_1059])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1166")
	 (nPag 461)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/62031.The_City_of_Dreaming_Books")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The City of Dreaming Books"))

	([Book_1167] of Libro
	 (autor [Author_59])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1167")
	 (nPag 193)
	 (publicacion 1979)
	 (url "https://www.goodreads.com/book/show/386162.The_Hitchhiker_s_Guide_to_the_Galaxy")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Hitchhikers Guide to the Galaxy"))

	([Book_1168] of Libro
	 (autor [Author_1060])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1168")
	 (nPag 364)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/17054826-knight-s-mistress")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Knights Mistress"))

	([Book_1169] of Libro
	 (autor [Author_1061])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1169")
	 (nPag 331)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17260132-satisfaction")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Satisfaction"))

	([Book_1170] of Libro
	 (autor [Author_601])
	 (generos
	     [Genres_6]
	     [Genres_7])
	 (idLibro "1170")
	 (nPag 387)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18138755-forever-with-you")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Forever with You"))

	([Book_1171] of Libro
	 (autor [Author_1062])
	 (generos
	     [Genres_3]
	     [Genres_0])
	 (idLibro "1171")
	 (nPag 266)
	 (publicacion 2018)
	 (url "https://www.goodreads.com/book/show/38495676-notice-me")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Notice Me"))

	([Book_1172] of Libro
	 (autor [Author_1063])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "1172")
	 (nPag 360)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/14568987-the-art-forger")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Art Forger"))

	([Book_1173] of Libro
	 (autor [Author_590])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "1173")
	 (nPag 324)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/8492768-left-neglected")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Left Neglected"))

	([Book_1174] of Libro
	 (autor [Author_1064])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1174")
	 (nPag 485)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15803161-the-chalice")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Chalice"))

	([Book_1175] of Libro
	 (autor [Author_1065])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1175")
	 (nPag 416)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/13642950-the-aviator-s-wife")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Aviators Wife"))

	([Book_1176] of Libro
	 (autor [Author_1066])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1176")
	 (nPag 426)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/13540215-the-orchardist")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Orchardist"))

	([Book_1177] of Libro
	 (autor [Author_65])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "1177")
	 (nPag 736)
	 (publicacion 2000)
	 (url "https://www.goodreads.com/book/show/960.Angels_Demons")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Angels  Demons"))

	([Book_1178] of Libro
	 (autor [Author_1067])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "1178")
	 (nPag 359)
	 (publicacion 2010)
	 (url "https://www.goodreads.com/book/show/6643090-major-pettigrew-s-last-stand")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Major Pettigrews Last Stand"))

	([Book_1179] of Libro
	 (autor [Author_1068])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1179")
	 (nPag 335)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/10054335-rules-of-civility")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Rules of Civility"))

	([Book_1180] of Libro
	 (autor [Author_1069])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1180")
	 (nPag 336)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11797364-glow")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Glow"))

	([Book_1181] of Libro
	 (autor [Author_1070])
	 (generos
	     [Genres_0]
	     [Genres_6])
	 (idLibro "1181")
	 (nPag 530)
	 (publicacion 1987)
	 (url "https://www.goodreads.com/book/show/37095.The_Shell_Seekers")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Shell Seekers"))

	([Book_1182] of Libro
	 (autor [Author_1071])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1182")
	 (nPag 584)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/11559200-shadow-of-night")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Shadow of Night"))

	([Book_1183] of Libro
	 (autor [Author_117])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1183")
	 (nPag 531)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15790842-life-after-life")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Life After Life"))

	([Book_1184] of Libro
	 (autor [Author_1072])
	 (generos
	     [Genres_0]
	     [Genres_12])
	 (idLibro "1184")
	 (nPag 323)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15015228-the-comfort-of-lies")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Comfort of Lies"))

	([Book_1185] of Libro
	 (autor [Author_466])
	 (generos
	     [Genres_0]
	     [Genres_17])
	 (idLibro "1185")
	 (nPag 55)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/1627.Brokeback_Mountain")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Brokeback Mountain"))

	([Book_1186] of Libro
	 (autor [Author_1073])
	 (generos
	     [Genres_3]
	     [Genres_21])
	 (idLibro "1186")
	 (nPag 220)
	 (publicacion 2004)
	 (url "https://www.goodreads.com/book/show/890143.The_Clique")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Clique"))

	([Book_1187] of Libro
	 (autor [Author_52])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "1187")
	 (nPag 320)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/6853.One_for_the_Money")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "One for the Money"))

	([Book_1188] of Libro
	 (autor [Author_1074])
	 (generos
	     [Genres_4]
	     [Genres_6])
	 (idLibro "1188")
	 (nPag 260)
	 (publicacion 2011)
	 (url "https://www.goodreads.com/book/show/18365852-kiera-s-moon")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Kieras Moon"))

	([Book_1189] of Libro
	 (autor [Author_1075])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "1189")
	 (nPag 311)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/328854.Motherless_Brooklyn")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Motherless Brooklyn"))

	([Book_1190] of Libro
	 (autor [Author_1076])
	 (generos
	     [Genres_6]
	     [Genres_4])
	 (idLibro "1190")
	 (nPag 396)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/112754.Kiss_of_the_Highlander")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Kiss of the Highlander"))

	([Book_1191] of Libro
	 (autor [Author_1077])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "1191")
	 (nPag 208)
	 (publicacion 1985)
	 (url "https://www.goodreads.com/book/show/9915.Less_Than_Zero")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Less Than Zero"))

	([Book_1192] of Libro
	 (autor [Author_508])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "1192")
	 (nPag 305)
	 (publicacion 2001)
	 (url "https://www.goodreads.com/book/show/4268.How_to_Be_Good")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "How to Be Good"))

	([Book_1193] of Libro
	 (autor [Author_131])
	 (generos
	     [Genres_0]
	     [Genres_3])
	 (idLibro "1193")
	 (nPag 420)
	 (publicacion 2005)
	 (url "https://www.goodreads.com/book/show/9844.Prep")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Prep"))

	([Book_1194] of Libro
	 (autor [Author_1078])
	 (generos
	     [Genres_0]
	     [Genres_51])
	 (idLibro "1194")
	 (nPag 247)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/13103.The_Celestine_Prophecy")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Celestine Prophecy"))

	([Book_1195] of Libro
	 (autor [Author_511])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "1195")
	 (nPag 564)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/32418.Hannibal")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Hannibal"))

	([Book_1196] of Libro
	 (autor [Author_120])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "1196")
	 (nPag 432)
	 (publicacion 2003)
	 (url "https://www.goodreads.com/book/show/5139.The_Devil_Wears_Prada")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Devil Wears Prada"))

	([Book_1197] of Libro
	 (autor [Author_536])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "1197")
	 (nPag 483)
	 (publicacion 1993)
	 (url "https://www.goodreads.com/book/show/5359.The_Client")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The Client"))

	([Book_1198] of Libro
	 (autor [Author_1079])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "1198")
	 (nPag 454)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/5204.We_Were_the_Mulvaneys")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "We Were the Mulvaneys"))

	([Book_1199] of Libro
	 (autor [Author_1080])
	 (generos
	     [Genres_13]
	     [Genres_0])
	 (idLibro "1199")
	 (nPag 256)
	 (publicacion 1991)
	 (url "https://www.goodreads.com/book/show/5872.Regeneration")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Regeneration"))

	([Book_1200] of Libro
	 (autor [Author_71])
	 (generos
	     [Genres_12]
	     [Genres_0])
	 (idLibro "1200")
	 (nPag 352)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/363752.Bridget_Jones")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Bridget Jones The Edge of Reason"))

	([Book_1201] of Libro
	 (autor [Author_1081])
	 (generos
	     [Genres_0]
	     [Genres_46])
	 (idLibro "1201")
	 (nPag 436)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/607639.The_Beach")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Beach"))

	([Book_1202] of Libro
	 (autor [Author_368])
	 (generos
	     [Genres_0]
	     [Genres_4])
	 (idLibro "1202")
	 (nPag 489)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/7669.Timeline")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "Timeline"))

	([Book_1203] of Libro
	 (autor [Author_1082])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "1203")
	 (nPag 496)
	 (publicacion 1990)
	 (url "https://www.goodreads.com/book/show/57727.L_A_Confidential")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "LA Confidential"))

	([Book_1204] of Libro
	 (autor [Author_1083])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1204")
	 (nPag 432)
	 (publicacion 1997)
	 (url "https://www.goodreads.com/book/show/11650.American_Pastoral")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "American Pastoral"))

	([Book_1205] of Libro
	 (autor [Author_177])
	 (generos
	     [Genres_0]
	     [Genres_13])
	 (idLibro "1205")
	 (nPag 437)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/3388.Corelli_s_Mandolin")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Corellis Mandolin"))

	([Book_1206] of Libro
	 (autor [Author_1084])
	 (generos
	     [Genres_0]
	     [Genres_15])
	 (idLibro "1206")
	 (nPag 220)
	 (publicacion 1999)
	 (url "https://www.goodreads.com/book/show/6192.Disgrace")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Disgrace"))

	([Book_1207] of Libro
	 (autor [Author_127])
	 (generos
	     [Genres_1]
	     [Genres_0])
	 (idLibro "1207")
	 (nPag 235)
	 (publicacion 1998)
	 (url "https://www.goodreads.com/book/show/7061.The_No_1_Ladies_Detective_Agency")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "The No 1 Ladies Detective Agency"))

	([Book_1208] of Libro
	 (autor [Author_179])
	 (generos
	     [Genres_0]
	     [Genres_2])
	 (idLibro "1208")
	 (nPag 607)
	 (publicacion 1994)
	 (url "https://www.goodreads.com/book/show/11275.The_Wind_Up_Bird_Chronicle")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "The Wind-Up Bird Chronicle"))

	([Book_1209] of Libro
	 (autor [Author_122])
	 (generos
	     [Genres_0]
	     [Genres_11])
	 (idLibro "1209")
	 (nPag 218)
	 (publicacion 1996)
	 (url "https://www.goodreads.com/book/show/36236124-fight-club")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Fight Club"))

	([Book_1210] of Libro
	 (autor [Author_438])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1210")
	 (nPag 488)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/13486172-the-dark-defiles")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Dark Defiles"))

	([Book_1211] of Libro
	 (autor [Author_1085])
	 (generos
	     [Genres_3]
	     [Genres_4])
	 (idLibro "1211")
	 (nPag 393)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16718816-control")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Control"))

	([Book_1212] of Libro
	 (autor [Author_491])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1212")
	 (nPag 460)
	 (publicacion 1995)
	 (url "https://www.goodreads.com/book/show/77197.Assassin_s_Apprentice")
	 (goodReview TRUE)
	 (hasManyReviews TRUE)
	 (titulo "Assassins Apprentice"))

	([Book_1213] of Libro
	 (autor [Author_1086])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "1213")
	 (nPag 300)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/16052411-the-magic-wakes")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Magic Wakes"))

	([Book_1214] of Libro
	 (autor [Author_1087])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "1214")
	 (nPag 492)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15763857-the-ace-of-skulls")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Ace of Skulls"))

	([Book_1215] of Libro
	 (autor [Author_481])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1215")
	 (nPag 347)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17163514-the-rose-and-the-thorn")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Rose and the Thorn"))

	([Book_1216] of Libro
	 (autor [Author_1088])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "1216")
	 (nPag 304)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15985910-liberty")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Liberty"))

	([Book_1217] of Libro
	 (autor [Author_1089])
	 (generos
	     [Genres_0]
	     [Genres_1])
	 (idLibro "1217")
	 (nPag 308)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/14739231-gun-machine")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Gun Machine"))

	([Book_1218] of Libro
	 (autor [Author_1090])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1218")
	 (nPag 528)
	 (publicacion 2012)
	 (url "https://www.goodreads.com/book/show/15793154-blood-s-pride")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Bloods Pride"))

	([Book_1219] of Libro
	 (autor [Author_47])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1219")
	 (nPag 416)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17855756-dust")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Dust"))

	([Book_1220] of Libro
	 (autor [Author_1091])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1220")
	 (nPag 545)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15790883-promise-of-blood")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Promise of Blood"))

	([Book_1221] of Libro
	 (autor [Author_483])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1221")
	 (nPag 638)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/13502958-magician-s-end")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Magicians End"))

	([Book_1222] of Libro
	 (autor [Author_1092])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1222")
	 (nPag 268)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/17670532-cassastorm")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "CassaStorm"))

	([Book_1223] of Libro
	 (autor [Author_1093])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1223")
	 (nPag 432)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/12395241-sworn-in-steel")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Sworn in Steel"))

	([Book_1224] of Libro
	 (autor [Author_485])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1224")
	 (nPag 592)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/15985373-emperor-of-thorns")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Emperor of Thorns"))

	([Book_1225] of Libro
	 (autor [Author_495])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1225")
	 (nPag 650)
	 (publicacion 2013)
	 (url "https://www.goodreads.com/book/show/2890090-the-republic-of-thieves")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Republic of Thieves"))

	([Book_1226] of Libro
	 (autor [Author_22])
	 (generos
	     [Genres_9]
	     [Genres_0])
	 (idLibro "1226")
	 (nPag 320)
	 (publicacion 1981)
	 (url "https://www.goodreads.com/book/show/10577.Roadwork")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Roadwork"))

	([Book_1227] of Libro
	 (autor [Author_346])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1227")
	 (nPag 300)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/18710920-the-darkling-child")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Darkling Child"))

	([Book_1228] of Libro
	 (autor [Author_1094])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1228")
	 (nPag 371)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23943137-sorcerer-to-the-crown")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Sorcerer to the Crown"))

	([Book_1229] of Libro
	 (autor [Author_1095])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "1229")
	 (nPag 658)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23524779-guns-of-the-dawn")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Guns of the Dawn"))

	([Book_1230] of Libro
	 (autor [Author_1096])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1230")
	 (nPag 320)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/22545439-love-in-the-age-of-mechanical-reproduction")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Love in the Age of Mechanical Reproduction"))

	([Book_1231] of Libro
	 (autor [Author_1097])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1231")
	 (nPag 646)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/22875083-a-crown-for-cold-silver")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "A Crown for Cold Silver"))

	([Book_1232] of Libro
	 (autor [Author_1098])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1232")
	 (nPag 399)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23444482-the-traitor-baru-cormorant")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Traitor Baru Cormorant"))

	([Book_1233] of Libro
	 (autor [Author_444])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1233")
	 (nPag 466)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23197269-aurora")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Aurora"))

	([Book_1234] of Libro
	 (autor [Author_1099])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "1234")
	 (nPag 440)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/20980667-the-mechanical")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Mechanical"))

	([Book_1235] of Libro
	 (autor [Author_174])
	 (generos
	     [Genres_10]
	     [Genres_4])
	 (idLibro "1235")
	 (nPag 369)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/22055276-the-just-city")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Just City"))

	([Book_1236] of Libro
	 (autor [Author_1100])
	 (generos
	     [Genres_4]
	     [Genres_4])
	 (idLibro "1236")
	 (nPag 380)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23168818-time-salvager")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Time Salvager"))

	([Book_1237] of Libro
	 (autor [Author_627])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1237")
	 (nPag 512)
	 (publicacion 2008)
	 (url "https://www.goodreads.com/book/show/23168817-the-dark-forest")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Dark Forest"))

	([Book_1238] of Libro
	 (autor [Author_10])
	 (generos
	     [Genres_4]
	     [Genres_0])
	 (idLibro "1238")
	 (nPag 371)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/23209924-the-water-knife")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Water Knife"))

	([Book_1239] of Libro
	 (autor [Author_1101])
	 (generos
	     [Genres_4]
	     [Genres_10])
	 (idLibro "1239")
	 (nPag 352)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/22238181-karen-memory")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "Karen Memory"))

	([Book_1240] of Libro
	 (autor [Author_1102])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1240")
	 (nPag 450)
	 (publicacion 2014)
	 (url "https://www.goodreads.com/book/show/18114110-sword-of-the-north")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "Sword of the North"))

	([Book_1241] of Libro
	 (autor [Author_1103])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1241")
	 (nPag 445)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/19000898-the-dinosaur-lords")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Dinosaur Lords"))

	([Book_1242] of Libro
	 (autor [Author_1104])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1242")
	 (nPag 623)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/18952341-the-grace-of-kings")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Grace of Kings"))

	([Book_1243] of Libro
	 (autor [Author_1105])
	 (generos
	     [Genres_4]
	     [Genres_3])
	 (idLibro "1243")
	 (nPag 432)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/24727083-the-beast-of-cretacea")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "The Beast of Cretacea"))

	([Book_1244] of Libro
	 (autor [Author_455])
	 (generos
	     [Genres_10]
	     [Genres_0])
	 (idLibro "1244")
	 (nPag 468)
	 (publicacion 2015)
	 (url "https://www.goodreads.com/book/show/19161852-the-fifth-season")
	 (goodReview TRUE)
	 (hasManyReviews FALSE)
	 (titulo "The Fifth Season"))

	([Book_1245] of Libro
	 (autor [Author_1106])
	 (generos
	     [Genres_0]
	     [Genres_5])
	 (idLibro "1245")
	 (nPag 182)
	 (publicacion 1962)
	 (url "https://www.goodreads.com/book/show/17125.One_Day_in_the_Life_of_Ivan_Denisovich")
	 (goodReview FALSE)
	 (hasManyReviews FALSE)
	 (titulo "One Day in the Life of Ivan Denisovich"))

	([Book_1246] of Libro
	 (autor [Author_1107])
	 (generos
	     [Genres_5]
	     [Genres_0])
	 (idLibro "1246")
	 (nPag 208)
	 (publicacion 1959)
	 (url "https://www.goodreads.com/book/show/5148.A_Separate_Peace")
	 (goodReview FALSE)
	 (hasManyReviews TRUE)
	 (titulo "A Separate Peace"))

	([Author_0] of Autor
	 (idAutor "0")
	 (nombreAutor "Stieg Larsson")
	 (autoresSimilares
	     [Author_16]
	     [Author_1023]
	     [Author_364]
	     [Author_1075]
	     [Author_853]
	     [Author_404]
	     [Author_120]
	     [Author_898]
	     [Author_971]
	     [Author_347]
	     [Author_1016]
	     [Author_466]
	     [Author_10]
	     [Author_462]
	     [Author_750]
	     [Author_913]
	     [Author_231]
	     [Author_461]
	     [Author753])
	 (sexo male))

	([Author_1] of Autor
	 (idAutor "1")
	 (nombreAutor "Jos Donoso")
	 (autoresSimilares
	     [Author_581]
	     [Author_725]
	     [Author_959]
	     [Author_816]
	     [Author_176]
	     [Author_10]
	     [Author_858]
	     [Author_248]
	     [Author_333]
	     [Author_1099]
	     [Author_586]
	     [Author_979]
	     [Author_149]
	     [Author_576]
	     [Author_114]
	     [Author853])
	 (sexo male))

	([Author_2] of Autor
	 (idAutor "2")
	 (nombreAutor "Suzanne Collins")
	 (autoresSimilares
	     [Author_939]
	     [Author_456]
	     [Author_1097]
	     [Author_827]
	     [Author_186]
	     [Author_632]
	     [Author_136]
	     [Author_251]
	     [Author_807]
	     [Author_552]
	     [Author_908]
	     [Author_1001]
	     [Author_916]
	     [Author393])
	 (sexo female))

	([Author_3] of Autor
	 (idAutor "3")
	 (nombreAutor "Aldous Huxley")
	 (autoresSimilares
	     [Author_60]
	     [Author_402]
	     [Author_473]
	     [Author_164]
	     [Author_42]
	     [Author_1036]
	     [Author_38]
	     [Author_547]
	     [Author_876]
	     [Author_718]
	     [Author_412]
	     [Author_1064]
	     [Author_255]
	     [Author_1101]
	     [Author_675]
	     [Author_1088]
	     [Author_545]
	     [Author6])
	 (sexo male))

	([Author_4] of Autor
	 (idAutor "4")
	 (nombreAutor "Ais")
	 (autoresSimilares
	     [Author_1076]
	     [Author_108]
	     [Author_908]
	     [Author_1058]
	     [Author_104]
	     [Author_738]
	     [Author_610]
	     [Author_177]
	     [Author_985]
	     [Author_454]
	     [Author_934]
	     [Author_76]
	     [Author_884]
	     [Author_486]
	     [Author_754]
	     [Author_859]
	     [Author_939]
	     [Author664])
	 (sexo male))

	([Author_5] of Autor
	 (idAutor "5")
	 (nombreAutor "Jordan Castillo Price")
	 (autoresSimilares
	     [Author467])
	 (sexo female))

	([Author_6] of Autor
	 (idAutor "6")
	 (nombreAutor "Nicole Edwards")
	 (autoresSimilares
	     [Author_958]
	     [Author_964]
	     [Author_740]
	     [Author_13]
	     [Author_682]
	     [Author_848]
	     [Author_999]
	     [Author_1032]
	     [Author_325]
	     [Author_291]
	     [Author_1081]
	     [Author_370]
	     [Author_129]
	     [Author_799]
	     [Author_1011]
	     [Author_539]
	     [Author_174]
	     [Author_543]
	     [Author234])
	 (sexo female))

	([Author_7] of Autor
	 (idAutor "7")
	 (nombreAutor "Maria V Snyder")
	 (autoresSimilares
	     [Author_109]
	     [Author_388]
	     [Author_278]
	     [Author_213]
	     [Author_821]
	     [Author_669]
	     [Author_600]
	     [Author_830]
	     [Author_576]
	     [Author953])
	 (sexo female))

	([Author_8] of Autor
	 (idAutor "8")
	 (nombreAutor "Sheri S Tepper")
	 (autoresSimilares
	     [Author_1076]
	     [Author593])
	 (sexo female))

	([Author_9] of Autor
	 (idAutor "9")
	 (nombreAutor "Robert A Heinlein")
	 (autoresSimilares
	     [Author_207]
	     [Author_698]
	     [Author_358]
	     [Author_581]
	     [Author_837]
	     [Author_219]
	     [Author_511]
	     [Author_883]
	     [Author_444]
	     [Author_870]
	     [Author_583]
	     [Author_162]
	     [Author_221]
	     [Author_919]
	     [Author445])
	 (sexo male))

	([Author_10] of Autor
	 (idAutor "10")
	 (nombreAutor "Paolo Bacigalupi")
	 (autoresSimilares
	     [Author_259]
	     [Author_460]
	     [Author_823]
	     [Author_908]
	     [Author_210]
	     [Author_433]
	     [Author_1058]
	     [Author_45]
	     [Author_669]
	     [Author992])
	 (sexo male))

	([Author_11] of Autor
	 (idAutor "11")
	 (nombreAutor "William F Nolan")
	 (autoresSimilares
	     [Author_624]
	     [Author_801]
	     [Author155])
	 (sexo male))

	([Author_12] of Autor
	 (idAutor "12")
	 (nombreAutor "Kurt Vonnegut")
	 (autoresSimilares
	     [Author_675]
	     [Author_1098]
	     [Author_1101]
	     [Author_633]
	     [Author_576]
	     [Author_345]
	     [Author_560]
	     [Author_615]
	     [Author_932]
	     [Author_117]
	     [Author_201]
	     [Author_474]
	     [Author_349]
	     [Author_1102]
	     [Author_508]
	     [Author_922]
	     [Author1089])
	 (sexo male))

	([Author_13] of Autor
	 (idAutor "13")
	 (nombreAutor "Larry Niven")
	 (autoresSimilares
	     [Author_178]
	     [Author_547]
	     [Author_285]
	     [Author_464]
	     [Author_171]
	     [Author_1053]
	     [Author501])
	 (sexo male))

	([Author_14] of Autor
	 (idAutor "14")
	 (nombreAutor "George R Stewart")
	 (autoresSimilares
	     [Author_30]
	     [Author_484]
	     [Author_885]
	     [Author_217]
	     [Author_202]
	     [Author_965]
	     [Author_720]
	     [Author_1097]
	     [Author_1016]
	     [Author_951]
	     [Author4])
	 (sexo male))

	([Author_15] of Autor
	 (idAutor "15")
	 (nombreAutor "Pierre Boulle")
	 (autoresSimilares
	     [Author_202]
	     [Author_759]
	     [Author_666]
	     [Author_899]
	     [Author637])
	 (sexo male))

	([Author_16] of Autor
	 (idAutor "16")
	 (nombreAutor "Stephen King")
	 (autoresSimilares
	     [Author_28]
	     [Author_224]
	     [Author_774]
	     [Author_60]
	     [Author_1084]
	     [Author_45]
	     [Author_524]
	     [Author_629]
	     [Author87])
	 (sexo male))

	([Author_17] of Autor
	 (idAutor "17")
	 (nombreAutor "Philip K Dick")
	 (autoresSimilares
	     [Author_864]
	     [Author_373]
	     [Author_923]
	     [Author_719]
	     [Author_837]
	     [Author_697]
	     [Author_904]
	     [Author_1005]
	     [Author_366]
	     [Author_260]
	     [Author1100])
	 (sexo male))

	([Author_18] of Autor
	 (idAutor "18")
	 (nombreAutor "Jasper Fforde")
	 (autoresSimilares
	     [Author_327]
	     [Author_337]
	     [Author771])
	 (sexo male))

	([Author_19] of Autor
	 (idAutor "19")
	 (nombreAutor "Neal Stephenson")
	 (autoresSimilares
	     [Author_104]
	     [Author_305]
	     [Author284])
	 (sexo male))

	([Author_20] of Autor
	 (idAutor "20")
	 (nombreAutor "Alexandra Bracken")
	 (autoresSimilares
	     [Author_190]
	     [Author_186]
	     [Author_276]
	     [Author_907]
	     [Author_756]
	     [Author_411]
	     [Author_452]
	     [Author_157]
	     [Author_885]
	     [Author316])
	 (sexo male))

	([Author_21] of Autor
	 (idAutor "21")
	 (nombreAutor "Pierce Brown")
	 (autoresSimilares
	     [Author_380]
	     [Author_1084]
	     [Author_370]
	     [Author_267]
	     [Author_992]
	     [Author_651]
	     [Author_842]
	     [Author_606]
	     [Author_346]
	     [Author_174]
	     [Author_533]
	     [Author_409]
	     [Author_448]
	     [Author_236]
	     [Author_253]
	     [Author_424]
	     [Author_161]
	     [Author_162]
	     [Author_1035]
	     [Author1018])
	 (sexo male))

	([Author_22] of Autor
	 (idAutor "22")
	 (nombreAutor "Richard Bachman")
	 (autoresSimilares
	     [Author_1014]
	     [Author_630]
	     [Author_176]
	     [Author_193]
	     [Author_716]
	     [Author_256]
	     [Author_315]
	     [Author_705]
	     [Author_726]
	     [Author_862]
	     [Author_653]
	     [Author_1021]
	     [Author_676]
	     [Author_419]
	     [Author_652]
	     [Author_651]
	     [Author90])
	 (sexo male))

	([Author_23] of Autor
	 (idAutor "23")
	 (nombreAutor "Ray Bradbury")
	 (autoresSimilares
	     [Author_177]
	     [Author_315]
	     [Author_685]
	     [Author_927]
	     [Author_996]
	     [Author_815]
	     [Author_566]
	     [Author_323]
	     [Author_97]
	     [Author_217]
	     [Author_273]
	     [Author_1019]
	     [Author_87]
	     [Author_686]
	     [Author_224]
	     [Author_872]
	     [Author_201]
	     [Author_1079]
	     [Author28])
	 (sexo male))

	([Author_24] of Autor
	 (idAutor "24")
	 (nombreAutor "Joe Haldeman")
	 (autoresSimilares
	     [Author732])
	 (sexo male))

	([Author_25] of Autor
	 (idAutor "25")
	 (nombreAutor "Robert R McCammon")
	 (autoresSimilares
	     [Author_196]
	     [Author_67]
	     [Author_574]
	     [Author_754]
	     [Author_785]
	     [Author_621]
	     [Author_241]
	     [Author_150]
	     [Author_1081]
	     [Author_501]
	     [Author349])
	 (sexo male))

	([Author_26] of Autor
	 (idAutor "26")
	 (nombreAutor "Nevil Shute")
	 (autoresSimilares
	     [Author_410]
	     [Author_293]
	     [Author_527]
	     [Author_528]
	     [Author_365]
	     [Author_122]
	     [Author_280]
	     [Author_163]
	     [Author_155]
	     [Author_419]
	     [Author_535]
	     [Author378])
	 (sexo male))

	([Author_27] of Autor
	 (idAutor "27")
	 (nombreAutor "David Brin")
	 (autoresSimilares
	     [Author_163]
	     [Author_1026]
	     [Author_1033]
	     [Author_332]
	     [Author_429]
	     [Author_1077]
	     [Author_463]
	     [Author_841]
	     [Author_238]
	     [Author_934]
	     [Author587])
	 (sexo male))

	([Author_28] of Autor
	 (idAutor "28")
	 (nombreAutor "Emily St John Mandel")
	 (autoresSimilares
	     [Author1077])
	 (sexo female))

	([Author_29] of Autor
	 (idAutor "29")
	 (nombreAutor "Pat Frank")
	 (autoresSimilares
	     [Author_770]
	     [Author_490]
	     [Author_722]
	     [Author_1082]
	     [Author_569]
	     [Author_293]
	     [Author398])
	 (sexo male))

	([Author_30] of Autor
	 (idAutor "30")
	 (nombreAutor "John Wyndham")
	 (autoresSimilares
	     [Author_280]
	     [Author_1089]
	     [Author_559]
	     [Author354])
	 (sexo male))

	([Author_31] of Autor
	 (idAutor "31")
	 (nombreAutor "Ann Aguirre")
	 (autoresSimilares
	     [Author_882]
	     [Author_214]
	     [Author_333]
	     [Author_442]
	     [Author_127]
	     [Author_905]
	     [Author_764]
	     [Author_252]
	     [Author_751]
	     [Author_838]
	     [Author_870]
	     [Author_627]
	     [Author_709]
	     [Author_24]
	     [Author_308]
	     [Author_222]
	     [Author_91]
	     [Author_313]
	     [Author_393]
	     [Author102])
	 (sexo female))

	([Author_32] of Autor
	 (idAutor "32")
	 (nombreAutor "Octavia E Butler")
	 (autoresSimilares
	     [Author_432]
	     [Author_851]
	     [Author_381]
	     [Author_945]
	     [Author_80]
	     [Author_407]
	     [Author_578]
	     [Author_106]
	     [Author_975]
	     [Author362])
	 (sexo female))

	([Author_33] of Autor
	 (idAutor "33")
	 (nombreAutor "MT Anderson")
	 (autoresSimilares
	     [Author_333]
	     [Author_379]
	     [Author_868]
	     [Author_1003]
	     [Author_543]
	     [Author_96]
	     [Author_497]
	     [Author_725]
	     [Author_587]
	     [Author_12]
	     [Author_701]
	     [Author_821]
	     [Author_715]
	     [Author145])
	 (sexo male))

	([Author_34] of Autor
	 (idAutor "34")
	 (nombreAutor "Ursula K Le Guin")
	 (autoresSimilares
	     [Author_922]
	     [Author_590]
	     [Author_806]
	     [Author_212]
	     [Author_298]
	     [Author192])
	 (sexo female))

	([Author_35] of Autor
	 (idAutor "35")
	 (nombreAutor "Franz Kafka")
	 (autoresSimilares
	     [Author_844]
	     [Author_303]
	     [Author_1057]
	     [Author_849]
	     [Author_1035]
	     [Author_546]
	     [Author_1103]
	     [Author375])
	 (sexo male))

	([Author_36] of Autor
	 (idAutor "36")
	 (nombreAutor "Beth Revis")
	 (autoresSimilares
	     [Author_420]
	     [Author_60]
	     [Author_1045]
	     [Author_118]
	     [Author_245]
	     [Author_160]
	     [Author1035])
	 (sexo female))

	([Author_37] of Autor
	 (idAutor "37")
	 (nombreAutor "Nancy Farmer")
	 (autoresSimilares
	     [Author_853]
	     [Author_439]
	     [Author_749]
	     [Author_923]
	     [Author_50]
	     [Author_858]
	     [Author_752]
	     [Author_852]
	     [Author_793]
	     [Author_10]
	     [Author_973]
	     [Author_270]
	     [Author_841]
	     [Author_836]
	     [Author1011])
	 (sexo female))

	([Author_38] of Autor
	 (idAutor "38")
	 (nombreAutor "Ayn Rand")
	 (autoresSimilares
	     [Author_885]
	     [Author_840]
	     [Author9])
	 (sexo female))

	([Author_39] of Autor
	 (idAutor "39")
	 (nombreAutor "PD James")
	 (autoresSimilares
	     [Author_839]
	     [Author_33]
	     [Author_340]
	     [Author_322]
	     [Author_336]
	     [Author803])
	 (sexo female))

	([Author_40] of Autor
	 (idAutor "40")
	 (nombreAutor "William Gibson")
	 (autoresSimilares
	     [Author_113]
	     [Author_886]
	     [Author_165]
	     [Author_85]
	     [Author_323]
	     [Author_727]
	     [Author_415]
	     [Author_77]
	     [Author_540]
	     [Author_93]
	     [Author_1105]
	     [Author_28]
	     [Author_820]
	     [Author_493]
	     [Author_923]
	     [Author_846]
	     [Author_472]
	     [Author1006])
	 (sexo male))

	([Author_41] of Autor
	 (idAutor "41")
	 (nombreAutor "Walter M Miller Jr")
	 (autoresSimilares
	     [Author_374]
	     [Author_111]
	     [Author_935]
	     [Author_306]
	     [Author305])
	 (sexo male))

	([Author_42] of Autor
	 (idAutor "42")
	 (nombreAutor "Jos Saramago")
	 (autoresSimilares
	     [Author_16]
	     [Author_396]
	     [Author_1106]
	     [Author_290]
	     [Author_1035]
	     [Author_394]
	     [Author_229]
	     [Author_955]
	     [Author_980]
	     [Author_598]
	     [Author_843]
	     [Author946])
	 (sexo male))

	([Author_43] of Autor
	 (idAutor "43")
	 (nombreAutor "Yevgeny Zamyatin")
	 (autoresSimilares
	     [Author_510]
	     [Author_622]
	     [Author_170]
	     [Author_580]
	     [Author917])
	 (sexo male))

	([Author_44] of Autor
	 (idAutor "44")
	 (nombreAutor "Susan Beth Pfeffer")
	 (autoresSimilares
	     [Author_1005]
	     [Author402])
	 (sexo female))

	([Author_45] of Autor
	 (idAutor "45")
	 (nombreAutor "Koushun Takami")
	 (autoresSimilares
	     [Author_843]
	     [Author_278]
	     [Author_7]
	     [Author_1034]
	     [Author_873]
	     [Author_678]
	     [Author_591]
	     [Author_967]
	     [Author_711]
	     [Author_568]
	     [Author_667]
	     [Author_1093]
	     [Author_1065]
	     [Author_224]
	     [Author_332]
	     [Author428])
	 (sexo male))

	([Author_46] of Autor
	 (idAutor "46")
	 (nombreAutor "HG Wells")
	 (autoresSimilares
	     [Author_43]
	     [Author_792]
	     [Author_102]
	     [Author_166]
	     [Author_1013]
	     [Author_230]
	     [Author_413]
	     [Author_570]
	     [Author_642]
	     [Author_355]
	     [Author_497]
	     [Author_160]
	     [Author_998]
	     [Author_956]
	     [Author_292]
	     [Author_92]
	     [Author_607]
	     [Author_214]
	     [Author_976]
	     [Author997])
	 (sexo male))

	([Author_47] of Autor
	 (idAutor "47")
	 (nombreAutor "Hugh Howey")
	 (autoresSimilares
	     [Author_163]
	     [Author_872]
	     [Author_56]
	     [Author_717]
	     [Author_542]
	     [Author_1029]
	     [Author_713]
	     [Author174])
	 (sexo male))

	([Author_48] of Autor
	 (idAutor "48")
	 (nombreAutor "Max Brooks")
	 (autoresSimilares
	     [Author_542]
	     [Author_898]
	     [Author_8]
	     [Author_397]
	     [Author_832]
	     [Author_201]
	     [Author_1055]
	     [Author_406]
	     [Author_646]
	     [Author_978]
	     [Author_180]
	     [Author_827]
	     [Author_963]
	     [Author_897]
	     [Author_1018]
	     [Author_808]
	     [Author575])
	 (sexo male))

	([Author_49] of Autor
	 (idAutor "49")
	 (nombreAutor "Margaret Atwood")
	 (autoresSimilares
	     [Author_1100]
	     [Author_169]
	     [Author_615]
	     [Author_796]
	     [Author_74]
	     [Author_663]
	     [Author_146]
	     [Author_160]
	     [Author_754]
	     [Author_377]
	     [Author_762]
	     [Author_881]
	     [Author_806]
	     [Author_739]
	     [Author_803]
	     [Author667])
	 (sexo female))

	([Author_50] of Autor
	 (idAutor "50")
	 (nombreAutor "Kazuo Ishiguro")
	 (autoresSimilares
	     [Author_654]
	     [Author_525]
	     [Author_33]
	     [Author_964]
	     [Author137])
	 (sexo male))

	([Author_51] of Autor
	 (idAutor "51")
	 (nombreAutor "Daphne du Maurier")
	 (autoresSimilares
	     [Author_1021]
	     [Author_724]
	     [Author_990]
	     [Author_873]
	     [Author_668]
	     [Author798])
	 (sexo female))

	([Author_52] of Autor
	 (idAutor "52")
	 (nombreAutor "Janet Evanovich")
	 (autoresSimilares
	     [Author_1049]
	     [Author_1009]
	     [Author_32]
	     [Author_631]
	     [Author10])
	 (sexo male))

	([Author_53] of Autor
	 (idAutor "53")
	 (nombreAutor "Jodi Picoult")
	 (autoresSimilares
	     [Author_580]
	     [Author_1017]
	     [Author_948]
	     [Author_1067]
	     [Author_219]
	     [Author_766]
	     [Author_290]
	     [Author_546]
	     [Author_525]
	     [Author_755]
	     [Author_201]
	     [Author_564]
	     [Author_573]
	     [Author_1029]
	     [Author_870]
	     [Author_919]
	     [Author_256]
	     [Author164])
	 (sexo female))

	([Author_54] of Autor
	 (idAutor "54")
	 (nombreAutor "Kate Jacobs")
	 (autoresSimilares
	     [Author_825]
	     [Author_193]
	     [Author_437]
	     [Author_912]
	     [Author_806]
	     [Author_439]
	     [Author_450]
	     [Author_745]
	     [Author_16]
	     [Author_466]
	     [Author_923]
	     [Author_448]
	     [Author_1105]
	     [Author_796]
	     [Author_863]
	     [Author_602]
	     [Author_772]
	     [Author_162]
	     [Author443])
	 (sexo female))

	([Author_55] of Autor
	 (idAutor "55")
	 (nombreAutor "Louisa May Alcott")
	 (autoresSimilares
	     [Author_299]
	     [Author_501]
	     [Author_811]
	     [Author_1069]
	     [Author_382]
	     [Author_56]
	     [Author_1065]
	     [Author_346]
	     [Author968])
	 (sexo female))

	([Author_56] of Autor
	 (idAutor "56")
	 (nombreAutor "Tatiana de Rosnay")
	 (autoresSimilares
	     [Author_762]
	     [Author_328]
	     [Author_551]
	     [Author_795]
	     [Author_504]
	     [Author_161]
	     [Author_419]
	     [Author_82]
	     [Author_713]
	     [Author_666]
	     [Author_201]
	     [Author755])
	 (sexo female))

	([Author_57] of Autor
	 (idAutor "57")
	 (nombreAutor "Betty  Smith")
	 (autoresSimilares
	     [Author_835]
	     [Author_339]
	     [Author_444]
	     [Author_683]
	     [Author_466]
	     [Author_692]
	     [Author_167]
	     [Author_1100]
	     [Author_962]
	     [Author_474]
	     [Author_869]
	     [Author_535]
	     [Author_61]
	     [Author_1050]
	     [Author_203]
	     [Author526])
	 (sexo female))

	([Author_58] of Autor
	 (idAutor "58")
	 (nombreAutor "Sylvia Plath")
	 (autoresSimilares
	     [Author_456]
	     [Author_502]
	     [Author902])
	 (sexo female))

	([Author_59] of Autor
	 (idAutor "59")
	 (nombreAutor "Douglas Adams")
	 (autoresSimilares
	     [Author_766]
	     [Author_97]
	     [Author_273]
	     [Author_378]
	     [Author_293]
	     [Author_485]
	     [Author_957]
	     [Author_538]
	     [Author_602]
	     [Author_177]
	     [Author_235]
	     [Author_603]
	     [Author_255]
	     [Author149])
	 (sexo male))

	([Author_60] of Autor
	 (idAutor "60")
	 (nombreAutor "Amy Tan")
	 (autoresSimilares
	     [Author_645]
	     [Author_522]
	     [Author_900]
	     [Author_208]
	     [Author_128]
	     [Author_401]
	     [Author_817]
	     [Author_761]
	     [Author_230]
	     [Author_1025]
	     [Author_720]
	     [Author_1057]
	     [Author_983]
	     [Author_157]
	     [Author_945]
	     [Author211])
	 (sexo female))

	([Author_61] of Autor
	 (idAutor "61")
	 (nombreAutor "Bernhard Schlink")
	 (autoresSimilares
	     [Author_603]
	     [Author_26]
	     [Author_159]
	     [Author_366]
	     [Author_206]
	     [Author_313]
	     [Author_343]
	     [Author_241]
	     [Author_955]
	     [Author490])
	 (sexo male))

	([Author_62] of Autor
	 (idAutor "62")
	 (nombreAutor "Cormac McCarthy")
	 (autoresSimilares
	     [Author_930]
	     [Author_727]
	     [Author_305]
	     [Author_1061]
	     [Author_897]
	     [Author_116]
	     [Author_954]
	     [Author_887]
	     [Author_524]
	     [Author_906]
	     [Author_213]
	     [Author_205]
	     [Author_562]
	     [Author_798]
	     [Author_129]
	     [Author_7]
	     [Author_941]
	     [Author712])
	 (sexo male))

	([Author_63] of Autor
	 (idAutor "63")
	 (nombreAutor "Jerry Spinelli")
	 (autoresSimilares
	     [Author_94]
	     [Author_572]
	     [Author_828]
	     [Author_394]
	     [Author_700]
	     [Author_1011]
	     [Author_955]
	     [Author_246]
	     [Author_707]
	     [Author911])
	 (sexo male))

	([Author_64] of Autor
	 (idAutor "64")
	 (nombreAutor "JRR Tolkien")
	 (autoresSimilares
	     [Author_472]
	     [Author_559]
	     [Author_304]
	     [Author_921]
	     [Author_664]
	     [Author_1048]
	     [Author_226]
	     [Author_803]
	     [Author_520]
	     [Author_698]
	     [Author_837]
	     [Author_319]
	     [Author_426]
	     [Author835])
	 (sexo male))

	([Author_65] of Autor
	 (idAutor "65")
	 (nombreAutor "Dan Brown")
	 (autoresSimilares
	     [Author_597]
	     [Author_992]
	     [Author_790]
	     [Author_266]
	     [Author_1039]
	     [Author_469]
	     [Author_7]
	     [Author_31]
	     [Author_676]
	     [Author_586]
	     [Author_155]
	     [Author_168]
	     [Author_882]
	     [Author_836]
	     [Author362])
	 (sexo male))

	([Author_66] of Autor
	 (idAutor "66")
	 (nombreAutor "Ken Follett")
	 (autoresSimilares
	     [Author_101]
	     [Author_476]
	     [Author_824]
	     [Author726])
	 (sexo male))

	([Author_67] of Autor
	 (idAutor "67")
	 (nombreAutor "Philippa Gregory")
	 (autoresSimilares
	     [Author_130]
	     [Author_356]
	     [Author_1027]
	     [Author_83]
	     [Author_30]
	     [Author_42]
	     [Author_558]
	     [Author_683]
	     [Author_770]
	     [Author_303]
	     [Author_900]
	     [Author_238]
	     [Author_516]
	     [Author40])
	 (sexo female))

	([Author_68] of Autor
	 (idAutor "68")
	 (nombreAutor "Seth Grahame-Smith")
	 (autoresSimilares
	     [Author_530]
	     [Author_188]
	     [Author_219]
	     [Author_76]
	     [Author_603]
	     [Author_458]
	     [Author_299]
	     [Author_867]
	     [Author_207]
	     [Author363])
	 (sexo male))

	([Author_69] of Autor
	 (idAutor "69")
	 (nombreAutor "Kim Edwards")
	 (autoresSimilares
	     [Author_958]
	     [Author_945]
	     [Author_822]
	     [Author_24]
	     [Author_389]
	     [Author_1008]
	     [Author_0]
	     [Author_61]
	     [Author_536]
	     [Author_539]
	     [Author_588]
	     [Author_58]
	     [Author32])
	 (sexo female))

	([Author_70] of Autor
	 (idAutor "70")
	 (nombreAutor "Scott Westerfeld")
	 (autoresSimilares
	     [Author_1107]
	     [Author_1045]
	     [Author_274]
	     [Author_1100]
	     [Author_969]
	     [Author_739]
	     [Author_1020]
	     [Author_82]
	     [Author_144]
	     [Author_452]
	     [Author_945]
	     [Author_1010]
	     [Author_142]
	     [Author_1106]
	     [Author_647]
	     [Author748])
	 (sexo male))

	([Author_71] of Autor
	 (idAutor "71")
	 (nombreAutor "Helen Fielding")
	 (autoresSimilares
	     [Author_429]
	     [Author_984]
	     [Author_900]
	     [Author994])
	 (sexo male))

	([Author_72] of Autor
	 (idAutor "72")
	 (nombreAutor "Jennifer Crusie")
	 (autoresSimilares
	     [Author_205]
	     [Author_227]
	     [Author_845]
	     [Author_268]
	     [Author957])
	 (sexo female))

	([Author_73] of Autor
	 (idAutor "73")
	 (nombreAutor "Sophie Kinsella")
	 (autoresSimilares
	     [Author_942]
	     [Author_809]
	     [Author_691]
	     [Author_926]
	     [Author_1102]
	     [Author_375]
	     [Author_1009]
	     [Author_864]
	     [Author_705]
	     [Author_875]
	     [Author_407]
	     [Author_860]
	     [Author_627]
	     [Author196])
	 (sexo female))

	([Author_74] of Autor
	 (idAutor "74")
	 (nombreAutor "Tahereh Mafi")
	 (autoresSimilares
	     [Author_750]
	     [Author_473]
	     [Author_58]
	     [Author_111]
	     [Author_1057]
	     [Author_70]
	     [Author_7]
	     [Author_978]
	     [Author_744]
	     [Author_13]
	     [Author_392]
	     [Author544])
	 (sexo female))

	([Author_75] of Autor
	 (idAutor "75")
	 (nombreAutor "Ally Condie")
	 (autoresSimilares
	     [Author_649]
	     [Author_24]
	     [Author_968]
	     [Author_274]
	     [Author_867]
	     [Author_550]
	     [Author_405]
	     [Author_136]
	     [Author_57]
	     [Author_326]
	     [Author795])
	 (sexo female))

	([Author_76] of Autor
	 (idAutor "76")
	 (nombreAutor "Arthur Golden")
	 (autoresSimilares
	     [Author_867]
	     [Author_749]
	     [Author_416]
	     [Author_282]
	     [Author_495]
	     [Author_314]
	     [Author_370]
	     [Author_501]
	     [Author_342]
	     [Author_591]
	     [Author_1087]
	     [Author_245]
	     [Author_850]
	     [Author_499]
	     [Author_828]
	     [Author_7]
	     [Author524])
	 (sexo male))

	([Author_77] of Autor
	 (idAutor "77")
	 (nombreAutor "Nicholas Sparks")
	 (autoresSimilares
	     [Author_992]
	     [Author_619]
	     [Author_15]
	     [Author_670]
	     [Author_989]
	     [Author87])
	 (sexo male))

	([Author_78] of Autor
	 (idAutor "78")
	 (nombreAutor "Sylvia Day")
	 (autoresSimilares
	     [Author_357]
	     [Author_881]
	     [Author_722]
	     [Author_107]
	     [Author_51]
	     [Author_849]
	     [Author_149]
	     [Author_1007]
	     [Author_531]
	     [Author_858]
	     [Author_325]
	     [Author_13]
	     [Author_314]
	     [Author_432]
	     [Author_477]
	     [Author_629]
	     [Author_235]
	     [Author_750]
	     [Author866])
	 (sexo female))

	([Author_79] of Autor
	 (idAutor "79")
	 (nombreAutor "EL James")
	 (autoresSimilares
	     [Author_687]
	     [Author_1098]
	     [Author_1050]
	     [Author_643]
	     [Author_215]
	     [Author_440]
	     [Author_234]
	     [Author503])
	 (sexo male))

	([Author_80] of Autor
	 (idAutor "80")
	 (nombreAutor "Margaret Stohl")
	 (autoresSimilares
	     [Author805])
	 (sexo female))

	([Author_81] of Autor
	 (idAutor "81")
	 (nombreAutor "Michelle K Pickett")
	 (autoresSimilares
	     [Author_539]
	     [Author_950]
	     [Author_1007]
	     [Author_968]
	     [Author_643]
	     [Author_990]
	     [Author_648]
	     [Author1015])
	 (sexo female))

	([Author_82] of Autor
	 (idAutor "82")
	 (nombreAutor "Jessica Brody")
	 (autoresSimilares
	     [Author_150]
	     [Author_994]
	     [Author_248]
	     [Author_492]
	     [Author_115]
	     [Author_112]
	     [Author_449]
	     [Author_743]
	     [Author_696]
	     [Author_915]
	     [Author_145]
	     [Author_828]
	     [Author646])
	 (sexo female))

	([Author_83] of Autor
	 (idAutor "83")
	 (nombreAutor "Mindy McGinnis")
	 (autoresSimilares
	     [Author_732]
	     [Author_2]
	     [Author_868]
	     [Author_106]
	     [Author_210]
	     [Author_616]
	     [Author_61]
	     [Author_776]
	     [Author_171]
	     [Author_503]
	     [Author_997]
	     [Author771])
	 (sexo male))

	([Author_84] of Autor
	 (idAutor "84")
	 (nombreAutor "Jennifer Rush")
	 (autoresSimilares
	     [Author_640]
	     [Author_827]
	     [Author_1]
	     [Author_1079]
	     [Author_106]
	     [Author_1047]
	     [Author_933]
	     [Author_438]
	     [Author_649]
	     [Author_58]
	     [Author_454]
	     [Author_953]
	     [Author_678]
	     [Author_327]
	     [Author_490]
	     [Author_684]
	     [Author_902]
	     [Author24])
	 (sexo female))

	([Author_85] of Autor
	 (idAutor "85")
	 (nombreAutor "Elsie Chapman")
	 (autoresSimilares
	     [Author859])
	 (sexo male))

	([Author_86] of Autor
	 (idAutor "86")
	 (nombreAutor "Kristen Simmons")
	 (autoresSimilares
	     [Author_492]
	     [Author_311]
	     [Author_957]
	     [Author_250]
	     [Author_55]
	     [Author_275]
	     [Author_608]
	     [Author_1005]
	     [Author_926]
	     [Author_1086]
	     [Author_893]
	     [Author_736]
	     [Author_440]
	     [Author_358]
	     [Author290])
	 (sexo female))

	([Author_87] of Autor
	 (idAutor "87")
	 (nombreAutor "Elizabeth Norris")
	 (autoresSimilares
	     [Author_376]
	     [Author_330]
	     [Author_665]
	     [Author_977]
	     [Author_434]
	     [Author_930]
	     [Author_956]
	     [Author_428]
	     [Author_660]
	     [Author_111]
	     [Author_284]
	     [Author_120]
	     [Author_280]
	     [Author_909]
	     [Author_1102]
	     [Author982])
	 (sexo female))

	([Author_88] of Autor
	 (idAutor "88")
	 (nombreAutor "Amie Kaufman")
	 (autoresSimilares
	     [Author_274]
	     [Author_756]
	     [Author_779]
	     [Author_1048]
	     [Author_509]
	     [Author_364]
	     [Author_392]
	     [Author_304]
	     [Author_842]
	     [Author_1047]
	     [Author_867]
	     [Author_708]
	     [Author_169]
	     [Author_296]
	     [Author803])
	 (sexo female))

	([Author_89] of Autor
	 (idAutor "89")
	 (nombreAutor "Erin Bowman")
	 (autoresSimilares
	     [Author_157]
	     [Author_62]
	     [Author_467]
	     [Author_473]
	     [Author_1095]
	     [Author_777]
	     [Author_194]
	     [Author841])
	 (sexo female))

	([Author_90] of Autor
	 (idAutor "90")
	 (nombreAutor "Debra Driza")
	 (autoresSimilares
	     [Author_68]
	     [Author_662]
	     [Author_148]
	     [Author628])
	 (sexo male))

	([Author_91] of Autor
	 (idAutor "91")
	 (nombreAutor "Rick Yancey")
	 (autoresSimilares
	     [Author_729]
	     [Author674])
	 (sexo male))

	([Author_92] of Autor
	 (idAutor "92")
	 (nombreAutor "Marie Lu")
	 (autoresSimilares
	     [Author_96]
	     [Author_66]
	     [Author_1002]
	     [Author_449]
	     [Author_758]
	     [Author_1051]
	     [Author_819]
	     [Author_591]
	     [Author_0]
	     [Author_982]
	     [Author_541]
	     [Author_226]
	     [Author_459]
	     [Author_361]
	     [Author_679]
	     [Author_174]
	     [Author324])
	 (sexo male))

	([Author_93] of Autor
	 (idAutor "93")
	 (nombreAutor "Gail Carriger")
	 (autoresSimilares
	     [Author_88]
	     [Author_246]
	     [Author1026])
	 (sexo male))

	([Author_94] of Autor
	 (idAutor "94")
	 (nombreAutor "Kimberly Derting")
	 (autoresSimilares
	     [Author_911]
	     [Author_586]
	     [Author_74]
	     [Author_415]
	     [Author_192]
	     [Author_953]
	     [Author_933]
	     [Author_363]
	     [Author_997]
	     [Author_312]
	     [Author_568]
	     [Author309])
	 (sexo female))

	([Author_95] of Autor
	 (idAutor "95")
	 (nombreAutor "Suzanne Young")
	 (autoresSimilares
	     [Author_149]
	     [Author_106]
	     [Author_105]
	     [Author_869]
	     [Author_409]
	     [Author_843]
	     [Author_179]
	     [Author_490]
	     [Author_135]
	     [Author_137]
	     [Author_404]
	     [Author_1093]
	     [Author_676]
	     [Author_657]
	     [Author_733]
	     [Author547])
	 (sexo female))

	([Author_96] of Autor
	 (idAutor "96")
	 (nombreAutor "Michael  Grant")
	 (autoresSimilares
	     [Author_523]
	     [Author_534]
	     [Author_626]
	     [Author623])
	 (sexo male))

	([Author_97] of Autor
	 (idAutor "97")
	 (nombreAutor "Lauren Oliver")
	 (autoresSimilares
	     [Author_1029]
	     [Author_879]
	     [Author_798]
	     [Author_60]
	     [Author_975]
	     [Author_584]
	     [Author_824]
	     [Author_154]
	     [Author_906]
	     [Author_869]
	     [Author_898]
	     [Author_833]
	     [Author_544]
	     [Author_772]
	     [Author_1106]
	     [Author371])
	 (sexo female))

	([Author_98] of Autor
	 (idAutor "98")
	 (nombreAutor "Lauren DeStefano")
	 (autoresSimilares
	     [Author_767]
	     [Author_317]
	     [Author_845]
	     [Author_313]
	     [Author_768]
	     [Author_25]
	     [Author_654]
	     [Author_792]
	     [Author_141]
	     [Author_12]
	     [Author_568]
	     [Author501])
	 (sexo male))

	([Author_99] of Autor
	 (idAutor "99")
	 (nombreAutor "Veronica Rossi")
	 (autoresSimilares
	     [Author946])
	 (sexo male))

	([Author_100] of Autor
	 (idAutor "100")
	 (nombreAutor "Veronica Roth")
	 (autoresSimilares
	     [Author_134]
	     [Author_1049]
	     [Author_690]
	     [Author_840]
	     [Author401])
	 (sexo female))

	([Author_101] of Autor
	 (idAutor "101")
	 (nombreAutor "Betsy Cornwell")
	 (autoresSimilares
	     [Author_617]
	     [Author_381]
	     [Author_238]
	     [Author_404]
	     [Author_180]
	     [Author_126]
	     [Author_823]
	     [Author_221]
	     [Author_493]
	     [Author_282]
	     [Author_343]
	     [Author_549]
	     [Author_778]
	     [Author_952]
	     [Author_960]
	     [Author_1054]
	     [Author_941]
	     [Author_547]
	     [Author82])
	 (sexo female))

	([Author_102] of Autor
	 (idAutor "102")
	 (nombreAutor "Sharon Cameron")
	 (autoresSimilares
	     [Author479])
	 (sexo female))

	([Author_103] of Autor
	 (idAutor "103")
	 (nombreAutor "Melissa Landers")
	 (autoresSimilares
	     [Author_899]
	     [Author_480]
	     [Author_1084]
	     [Author_708]
	     [Author_816]
	     [Author_529]
	     [Author_616]
	     [Author_609]
	     [Author_693]
	     [Author_1069]
	     [Author_21]
	     [Author_724]
	     [Author100])
	 (sexo male))

	([Author_104] of Autor
	 (idAutor "104")
	 (nombreAutor "Gillian Flynn")
	 (autoresSimilares
	     [Author_663]
	     [Author_151]
	     [Author_560]
	     [Author_563]
	     [Author_797]
	     [Author_367]
	     [Author_106]
	     [Author_892]
	     [Author_500]
	     [Author_434]
	     [Author1050])
	 (sexo female))

	([Author_105] of Autor
	 (idAutor "105")
	 (nombreAutor "Caragh M OBrien")
	 (autoresSimilares
	     [Author_1104]
	     [Author_659]
	     [Author_813]
	     [Author_878]
	     [Author_818]
	     [Author_795]
	     [Author_695]
	     [Author_926]
	     [Author_168]
	     [Author_227]
	     [Author_543]
	     [Author_501]
	     [Author_378]
	     [Author_945]
	     [Author_786]
	     [Author_409]
	     [Author_899]
	     [Author_643]
	     [Author148])
	 (sexo female))

	([Author_106] of Autor
	 (idAutor "106")
	 (nombreAutor "Theodore Sturgeon")
	 (autoresSimilares
	     [Author_849]
	     [Author_594]
	     [Author_644]
	     [Author_984]
	     [Author742])
	 (sexo male))

	([Author_107] of Autor
	 (idAutor "107")
	 (nombreAutor "CS Friedman")
	 (autoresSimilares
	     [Author_661]
	     [Author_1101]
	     [Author868])
	 (sexo male))

	([Author_108] of Autor
	 (idAutor "108")
	 (nombreAutor "Richard Matheson")
	 (autoresSimilares
	     [Author_1022]
	     [Author649])
	 (sexo male))

	([Author_109] of Autor
	 (idAutor "109")
	 (nombreAutor "Justin Cronin")
	 (autoresSimilares
	     [Author542])
	 (sexo male))

	([Author_110] of Autor
	 (idAutor "110")
	 (nombreAutor "F Paul Wilson")
	 (autoresSimilares
	     [Author_423]
	     [Author_480]
	     [Author_487]
	     [Author_697]
	     [Author_668]
	     [Author_1005]
	     [Author_167]
	     [Author_403]
	     [Author_959]
	     [Author_642]
	     [Author_886]
	     [Author_296]
	     [Author_136]
	     [Author_566]
	     [Author_690]
	     [Author_427]
	     [Author1041])
	 (sexo male))

	([Author_111] of Autor
	 (idAutor "111")
	 (nombreAutor "Terry Pratchett")
	 (autoresSimilares
	     [Author_210]
	     [Author_376]
	     [Author_702]
	     [Author975])
	 (sexo male))

	([Author_112] of Autor
	 (idAutor "112")
	 (nombreAutor "Christopher Moore")
	 (autoresSimilares
	     [Author_57]
	     [Author_794]
	     [Author_878]
	     [Author_832]
	     [Author_884]
	     [Author_622]
	     [Author_927]
	     [Author_562]
	     [Author_204]
	     [Author_297]
	     [Author_528]
	     [Author_450]
	     [Author_623]
	     [Author_448]
	     [Author_941]
	     [Author_576]
	     [Author_1042]
	     [Author1035])
	 (sexo male))

	([Author_113] of Autor
	 (idAutor "113")
	 (nombreAutor "Guillermo del Toro")
	 (autoresSimilares
	     [Author_527]
	     [Author_1051]
	     [Author_734]
	     [Author_387]
	     [Author571])
	 (sexo male))

	([Author_114] of Autor
	 (idAutor "114")
	 (nombreAutor "John Ajvide Lindqvist")
	 (autoresSimilares
	     [Author_450]
	     [Author_402]
	     [Author_691]
	     [Author_377]
	     [Author_133]
	     [Author_8]
	     [Author_816]
	     [Author_2]
	     [Author_1099]
	     [Author_924]
	     [Author_531]
	     [Author_995]
	     [Author_179]
	     [Author_893]
	     [Author_549]
	     [Author_928]
	     [Author_567]
	     [Author447])
	 (sexo male))

	([Author_115] of Autor
	 (idAutor "115")
	 (nombreAutor "Louise Erdrich")
	 (autoresSimilares
	     [Author_88]
	     [Author_824]
	     [Author_759]
	     [Author_588]
	     [Author_202]
	     [Author_748]
	     [Author_441]
	     [Author_1043]
	     [Author_877]
	     [Author_1057]
	     [Author_119]
	     [Author_227]
	     [Author_73]
	     [Author_573]
	     [Author_194]
	     [Author_704]
	     [Author_142]
	     [Author_5]
	     [Author397])
	 (sexo male))

	([Author_116] of Autor
	 (idAutor "116")
	 (nombreAutor "Kristin Hannah")
	 (autoresSimilares
	     [Author_611]
	     [Author_980]
	     [Author_703]
	     [Author_551]
	     [Author_406]
	     [Author_991]
	     [Author_335]
	     [Author_566]
	     [Author_496]
	     [Author_354]
	     [Author_731]
	     [Author_156]
	     [Author_825]
	     [Author_181]
	     [Author_784]
	     [Author_557]
	     [Author_890]
	     [Author823])
	 (sexo male))

	([Author_117] of Autor
	 (idAutor "117")
	 (nombreAutor "Kate Atkinson")
	 (autoresSimilares
	     [Author_952]
	     [Author_944]
	     [Author_995]
	     [Author107])
	 (sexo female))

	([Author_118] of Autor
	 (idAutor "118")
	 (nombreAutor "Chris Bohjalian")
	 (autoresSimilares
	     [Author_921]
	     [Author_723]
	     [Author_193]
	     [Author_895]
	     [Author_357]
	     [Author_105]
	     [Author568])
	 (sexo male))

	([Author_119] of Autor
	 (idAutor "119")
	 (nombreAutor "Steve Toltz")
	 (autoresSimilares
	     [Author671])
	 (sexo male))

	([Author_120] of Autor
	 (idAutor "120")
	 (nombreAutor "Lauren Weisberger")
	 (autoresSimilares
	     [Author_895]
	     [Author_448]
	     [Author_523]
	     [Author_693]
	     [Author_641]
	     [Author_632]
	     [Author_1088]
	     [Author215])
	 (sexo female))

	([Author_121] of Autor
	 (idAutor "121")
	 (nombreAutor "Roberto Bolao")
	 (autoresSimilares
	     [Author_832]
	     [Author_21]
	     [Author_336]
	     [Author_124]
	     [Author_790]
	     [Author_956]
	     [Author_916]
	     [Author_548]
	     [Author_426]
	     [Author_314]
	     [Author_84]
	     [Author_192]
	     [Author_448]
	     [Author_684]
	     [Author_834]
	     [Author_323]
	     [Author908])
	 (sexo male))

	([Author_122] of Autor
	 (idAutor "122")
	 (nombreAutor "Chuck Palahniuk")
	 (autoresSimilares
	     [Author_415]
	     [Author_578]
	     [Author535])
	 (sexo male))

	([Author_123] of Autor
	 (idAutor "123")
	 (nombreAutor "PJ Haarsma")
	 (autoresSimilares
	     [Author905])
	 (sexo male))

	([Author_124] of Autor
	 (idAutor "124")
	 (nombreAutor "Toni Morrison")
	 (autoresSimilares
	     [Author_531]
	     [Author_100]
	     [Author_763]
	     [Author_817]
	     [Author_721]
	     [Author_250]
	     [Author_310]
	     [Author_123]
	     [Author_91]
	     [Author_1008]
	     [Author_724]
	     [Author411])
	 (sexo female))

	([Author_125] of Autor
	 (idAutor "125")
	 (nombreAutor "Kathleen Kent")
	 (autoresSimilares
	     [Author_738]
	     [Author_401]
	     [Author_643]
	     [Author_654]
	     [Author_4]
	     [Author_655]
	     [Author_560]
	     [Author_1017]
	     [Author_204]
	     [Author391])
	 (sexo male))

	([Author_126] of Autor
	 (idAutor "126")
	 (nombreAutor "Daniel Grandbois")
	 (autoresSimilares
	     [Author_856]
	     [Author_424]
	     [Author_442]
	     [Author_903]
	     [Author_81]
	     [Author_510]
	     [Author_636]
	     [Author545])
	 (sexo male))

	([Author_127] of Autor
	 (idAutor "127")
	 (nombreAutor "Alexander McCall Smith")
	 (autoresSimilares
	     [Author_214]
	     [Author_999]
	     [Author_110]
	     [Author_593]
	     [Author_324]
	     [Author_488]
	     [Author_426]
	     [Author_456]
	     [Author_176]
	     [Author_826]
	     [Author_230]
	     [Author_1067]
	     [Author772])
	 (sexo male))

	([Author_128] of Autor
	 (idAutor "128")
	 (nombreAutor "Harlan Coben")
	 (autoresSimilares
	     [Author_452]
	     [Author_56]
	     [Author_365]
	     [Author_626]
	     [Author_871]
	     [Author_459]
	     [Author_737]
	     [Author_543]
	     [Author_791]
	     [Author_411]
	     [Author966])
	 (sexo male))

	([Author_129] of Autor
	 (idAutor "129")
	 (nombreAutor "Jennifer Weiner")
	 (autoresSimilares
	     [Author_935]
	     [Author_1032]
	     [Author_229]
	     [Author_210]
	     [Author_625]
	     [Author_98]
	     [Author237])
	 (sexo female))

	([Author_130] of Autor
	 (idAutor "130")
	 (nombreAutor "Jeff Kinney")
	 (autoresSimilares
	     [Author_446]
	     [Author_1067]
	     [Author_748]
	     [Author_705]
	     [Author_629]
	     [Author_970]
	     [Author_945]
	     [Author_619]
	     [Author_136]
	     [Author833])
	 (sexo male))

	([Author_131] of Autor
	 (idAutor "131")
	 (nombreAutor "Curtis Sittenfeld")
	 (autoresSimilares
	     [Author_32]
	     [Author_991]
	     [Author_554]
	     [Author_194]
	     [Author_905]
	     [Author_249]
	     [Author_514]
	     [Author_106]
	     [Author_867]
	     [Author_159]
	     [Author_818]
	     [Author_857]
	     [Author_475]
	     [Author917])
	 (sexo female))

	([Author_132] of Autor
	 (idAutor "132")
	 (nombreAutor "Tana French")
	 (autoresSimilares
	     [Author_1002]
	     [Author_901]
	     [Author_719]
	     [Author_937]
	     [Author38])
	 (sexo female))

	([Author_133] of Autor
	 (idAutor "133")
	 (nombreAutor "Joseph ONeill")
	 (autoresSimilares
	     [Author_734]
	     [Author_652]
	     [Author_397]
	     [Author_577]
	     [Author_823]
	     [Author_561]
	     [Author_54]
	     [Author523])
	 (sexo male))

	([Author_134] of Autor
	 (idAutor "134")
	 (nombreAutor "Hillary Jordan")
	 (autoresSimilares
	     [Author_634]
	     [Author_1100]
	     [Author_788]
	     [Author_381]
	     [Author_185]
	     [Author_420]
	     [Author_747]
	     [Author_1031]
	     [Author_274]
	     [Author_863]
	     [Author_1042]
	     [Author_742]
	     [Author_341]
	     [Author_682]
	     [Author_754]
	     [Author_917]
	     [Author_956]
	     [Author_167]
	     [Author_408]
	     [Author746])
	 (sexo female))

	([Author_135] of Autor
	 (idAutor "135")
	 (nombreAutor "Emily Giffin")
	 (autoresSimilares
	     [Author_833]
	     [Author_170]
	     [Author_254]
	     [Author_368]
	     [Author1071])
	 (sexo female))

	([Author_136] of Autor
	 (idAutor "136")
	 (nombreAutor "Lauren Groff")
	 (autoresSimilares
	     [Author_483]
	     [Author_612]
	     [Author_1063]
	     [Author_789]
	     [Author_478]
	     [Author_145]
	     [Author_688]
	     [Author_996]
	     [Author_205]
	     [Author_650]
	     [Author_127]
	     [Author_358]
	     [Author443])
	 (sexo female))

	([Author_137] of Autor
	 (idAutor "137")
	 (nombreAutor "Wally Lamb")
	 (autoresSimilares
	     [Author_34]
	     [Author_426]
	     [Author_680]
	     [Author707])
	 (sexo male))

	([Author_138] of Autor
	 (idAutor "138")
	 (nombreAutor "Elizabeth Strout")
	 (autoresSimilares
	     [Author_393]
	     [Author_627]
	     [Author_425]
	     [Author_160]
	     [Author_358]
	     [Author_573]
	     [Author_593]
	     [Author_1077]
	     [Author_503]
	     [Author_640]
	     [Author_392]
	     [Author5])
	 (sexo female))

	([Author_139] of Autor
	 (idAutor "139")
	 (nombreAutor "Marisa de los Santos")
	 (autoresSimilares
	     [Author_669]
	     [Author_541]
	     [Author_48]
	     [Author_194]
	     [Author729])
	 (sexo female))

	([Author_140] of Autor
	 (idAutor "140")
	 (nombreAutor "David Benioff")
	 (autoresSimilares
	     [Author_670]
	     [Author_291]
	     [Author_1000]
	     [Author_896]
	     [Author_105]
	     [Author_53]
	     [Author_329]
	     [Author_256]
	     [Author_705]
	     [Author_759]
	     [Author_424]
	     [Author_1003]
	     [Author_665]
	     [Author_766]
	     [Author_471]
	     [Author_401]
	     [Author939])
	 (sexo male))

	([Author_141] of Autor
	 (idAutor "141")
	 (nombreAutor "Cory Doctorow")
	 (autoresSimilares
	     [Author_151]
	     [Author_738]
	     [Author_254]
	     [Author_645]
	     [Author_680]
	     [Author_945]
	     [Author_952]
	     [Author573])
	 (sexo male))

	([Author_142] of Autor
	 (idAutor "142")
	 (nombreAutor "Geraldine Brooks")
	 (autoresSimilares
	     [Author1070])
	 (sexo female))

	([Author_143] of Autor
	 (idAutor "143")
	 (nombreAutor "David Wroblewski")
	 (autoresSimilares
	     [Author_234]
	     [Author_855]
	     [Author_458]
	     [Author_772]
	     [Author_894]
	     [Author_131]
	     [Author_417]
	     [Author_1002]
	     [Author_361]
	     [Author_66]
	     [Author_6]
	     [Author_695]
	     [Author_187]
	     [Author_1040]
	     [Author_1000]
	     [Author_802]
	     [Author_221]
	     [Author_161]
	     [Author_1067]
	     [Author964])
	 (sexo male))

	([Author_144] of Autor
	 (idAutor "144")
	 (nombreAutor "Ken Puddicombe")
	 (autoresSimilares
	     [Author_948]
	     [Author362])
	 (sexo male))

	([Author_145] of Autor
	 (idAutor "145")
	 (nombreAutor "Cherrie Lynn")
	 (autoresSimilares
	     [Author_58]
	     [Author_735]
	     [Author_17]
	     [Author_1071]
	     [Author_185]
	     [Author_1070]
	     [Author_960]
	     [Author_645]
	     [Author_964]
	     [Author271])
	 (sexo female))

	([Author_146] of Autor
	 (idAutor "146")
	 (nombreAutor "Jenny B Jones")
	 (autoresSimilares
	     [Author_649]
	     [Author_38]
	     [Author_6]
	     [Author_307]
	     [Author_621]
	     [Author_896]
	     [Author_220]
	     [Author_1082]
	     [Author_126]
	     [Author_1054]
	     [Author_619]
	     [Author_661]
	     [Author_550]
	     [Author_1077]
	     [Author804])
	 (sexo female))

	([Author_147] of Autor
	 (idAutor "147")
	 (nombreAutor "Khaled Hosseini")
	 (autoresSimilares
	     [Author_1101]
	     [Author_390]
	     [Author_287]
	     [Author_194]
	     [Author_59]
	     [Author_1090]
	     [Author_1009]
	     [Author_1081]
	     [Author_554]
	     [Author_689]
	     [Author_552]
	     [Author_645]
	     [Author_1073]
	     [Author490])
	 (sexo male))

	([Author_148] of Autor
	 (idAutor "148")
	 (nombreAutor "Emma Donoghue")
	 (autoresSimilares
	     [Author_96]
	     [Author_158]
	     [Author_977]
	     [Author_221]
	     [Author_1020]
	     [Author_794]
	     [Author_39]
	     [Author_1100]
	     [Author_185]
	     [Author_568]
	     [Author_932]
	     [Author_408]
	     [Author_431]
	     [Author_562]
	     [Author_87]
	     [Author_386]
	     [Author719])
	 (sexo female))

	([Author_149] of Autor
	 (idAutor "149")
	 (nombreAutor "Jojo Moyes")
	 (autoresSimilares
	     [Author_700]
	     [Author_806]
	     [Author_887]
	     [Author_131]
	     [Author_459]
	     [Author_420]
	     [Author_737]
	     [Author341])
	 (sexo female))

	([Author_150] of Autor
	 (idAutor "150")
	 (nombreAutor "Brian Selznick")
	 (autoresSimilares
	     [Author_1091]
	     [Author_379]
	     [Author_992]
	     [Author_468]
	     [Author_521]
	     [Author_261]
	     [Author_845]
	     [Author_653]
	     [Author_218]
	     [Author_702]
	     [Author_370]
	     [Author_165]
	     [Author730])
	 (sexo male))

	([Author_151] of Autor
	 (idAutor "151")
	 (nombreAutor "Malcolm McCoard")
	 (autoresSimilares
	     [Author_70]
	     [Author_325]
	     [Author_423]
	     [Author_22]
	     [Author_242]
	     [Author_693]
	     [Author_616]
	     [Author_32]
	     [Author_695]
	     [Author_981]
	     [Author_155]
	     [Author_663]
	     [Author_1107]
	     [Author270])
	 (sexo male))

	([Author_152] of Autor
	 (idAutor "152")
	 (nombreAutor "Marion Zimmer Bradley")
	 (autoresSimilares
	     [Author_664]
	     [Author_901]
	     [Author_479]
	     [Author_993]
	     [Author_1001]
	     [Author_26]
	     [Author_1019]
	     [Author_385]
	     [Author_907]
	     [Author_315]
	     [Author_1049]
	     [Author_513]
	     [Author_921]
	     [Author_126]
	     [Author_557]
	     [Author193])
	 (sexo female))

	([Author_153] of Autor
	 (idAutor "153")
	 (nombreAutor "Mary  Stewart")
	 (autoresSimilares
	     [Author_340]
	     [Author_688]
	     [Author_213]
	     [Author_400]
	     [Author_718]
	     [Author_402]
	     [Author_558]
	     [Author_999]
	     [Author_129]
	     [Author_511]
	     [Author_73]
	     [Author_922]
	     [Author_961]
	     [Author_651]
	     [Author_784]
	     [Author_253]
	     [Author_875]
	     [Author990])
	 (sexo female))

	([Author_154] of Autor
	 (idAutor "154")
	 (nombreAutor "Frances Hodgson Burnett")
	 (autoresSimilares
	     [Author_317]
	     [Author_670]
	     [Author_387]
	     [Author_486]
	     [Author_1025]
	     [Author_94]
	     [Author_393]
	     [Author_631]
	     [Author_603]
	     [Author_390]
	     [Author_873]
	     [Author_48]
	     [Author_384]
	     [Author_379]
	     [Author1029])
	 (sexo female))

	([Author_155] of Autor
	 (idAutor "155")
	 (nombreAutor "Anne McCaffrey")
	 (autoresSimilares
	     [Author588])
	 (sexo female))

	([Author_156] of Autor
	 (idAutor "156")
	 (nombreAutor "Lemony Snicket")
	 (autoresSimilares
	     [Author_944]
	     [Author_404]
	     [Author_765]
	     [Author_192]
	     [Author_1025]
	     [Author_470]
	     [Author_423]
	     [Author_112]
	     [Author_726]
	     [Author_1093]
	     [Author_898]
	     [Author_626]
	     [Author_550]
	     [Author_907]
	     [Author_607]
	     [Author_58]
	     [Author_985]
	     [Author133])
	 (sexo male))

	([Author_157] of Autor
	 (idAutor "157")
	 (nombreAutor "David Eddings")
	 (autoresSimilares
	     [Author_859]
	     [Author_700]
	     [Author_660]
	     [Author_439]
	     [Author_845]
	     [Author_960]
	     [Author_324]
	     [Author_619]
	     [Author_944]
	     [Author_218]
	     [Author_926]
	     [Author_1026]
	     [Author972])
	 (sexo male))

	([Author_158] of Autor
	 (idAutor "158")
	 (nombreAutor "Roald Dahl")
	 (autoresSimilares
	     [Author_414]
	     [Author_46]
	     [Author_7]
	     [Author_1086]
	     [Author_878]
	     [Author_364]
	     [Author_159]
	     [Author761])
	 (sexo male))

	([Author_159] of Autor
	 (idAutor "159")
	 (nombreAutor "Robert Jordan")
	 (autoresSimilares
	     [Author_37]
	     [Author_841]
	     [Author_935]
	     [Author_369]
	     [Author_870]
	     [Author_1029]
	     [Author890])
	 (sexo male))

	([Author_160] of Autor
	 (idAutor "160")
	 (nombreAutor "Obert Skye")
	 (autoresSimilares
	     [Author1011])
	 (sexo male))

	([Author_161] of Autor
	 (idAutor "161")
	 (nombreAutor "Patrick Rothfuss")
	 (autoresSimilares
	     [Author_629]
	     [Author_803]
	     [Author_604]
	     [Author_790]
	     [Author_371]
	     [Author_910]
	     [Author_77]
	     [Author_546]
	     [Author_731]
	     [Author_871]
	     [Author_88]
	     [Author_145]
	     [Author_561]
	     [Author_823]
	     [Author_66]
	     [Author_541]
	     [Author329])
	 (sexo male))

	([Author_162] of Autor
	 (idAutor "162")
	 (nombreAutor "William Goldman")
	 (autoresSimilares
	     [Author_220]
	     [Author_627]
	     [Author_937]
	     [Author_386]
	     [Author_946]
	     [Author_60]
	     [Author_727]
	     [Author_908]
	     [Author_935]
	     [Author_564]
	     [Author_1082]
	     [Author_7]
	     [Author_143]
	     [Author_360]
	     [Author_200]
	     [Author_516]
	     [Author_713]
	     [Author_361]
	     [Author941])
	 (sexo male))

	([Author_163] of Autor
	 (idAutor "163")
	 (nombreAutor "Katherine Paterson")
	 (autoresSimilares
	     [Author_666]
	     [Author_203]
	     [Author_369]
	     [Author_1040]
	     [Author_764]
	     [Author_719]
	     [Author_672]
	     [Author_371]
	     [Author_14]
	     [Author_500]
	     [Author_770]
	     [Author_715]
	     [Author_462]
	     [Author_475]
	     [Author_470]
	     [Author_129]
	     [Author842])
	 (sexo female))

	([Author_164] of Autor
	 (idAutor "164")
	 (nombreAutor "James Dashner")
	 (autoresSimilares
	     [Author_897]
	     [Author_436]
	     [Author_283]
	     [Author_79]
	     [Author_1081]
	     [Author_770]
	     [Author_209]
	     [Author_293]
	     [Author_139]
	     [Author_358]
	     [Author_994]
	     [Author_834]
	     [Author_914]
	     [Author_741]
	     [Author_803]
	     [Author_225]
	     [Author_995]
	     [Author_576]
	     [Author980])
	 (sexo male))

	([Author_165] of Autor
	 (idAutor "165")
	 (nombreAutor "Madeleine LEngle")
	 (autoresSimilares
	     [Author_459]
	     [Author_130]
	     [Author_1084]
	     [Author_1093]
	     [Author_249]
	     [Author_353]
	     [Author_585]
	     [Author_727]
	     [Author_735]
	     [Author_327]
	     [Author_372]
	     [Author_79]
	     [Author_770]
	     [Author_990]
	     [Author_602]
	     [Author_80]
	     [Author658])
	 (sexo female))

	([Author_166] of Autor
	 (idAutor "166")
	 (nombreAutor "Carol Plum-Ucci")
	 (autoresSimilares
	     [Author_84]
	     [Author_108]
	     [Author_304]
	     [Author_324]
	     [Author_465]
	     [Author_1037]
	     [Author_218]
	     [Author_727]
	     [Author_811]
	     [Author_582]
	     [Author_1105]
	     [Author_1028]
	     [Author_740]
	     [Author_905]
	     [Author276])
	 (sexo female))

	([Author_167] of Autor
	 (idAutor "167")
	 (nombreAutor "Ellen Wittlinger")
	 (autoresSimilares
	     [Author914])
	 (sexo female))

	([Author_168] of Autor
	 (idAutor "168")
	 (nombreAutor "Peter Cameron")
	 (autoresSimilares
	     [Author337])
	 (sexo male))

	([Author_169] of Autor
	 (idAutor "169")
	 (nombreAutor "Francesca Lia Block")
	 (autoresSimilares
	     [Author_1084]
	     [Author_370]
	     [Author_482]
	     [Author_612]
	     [Author_103]
	     [Author_307]
	     [Author_161]
	     [Author_888]
	     [Author_466]
	     [Author_1077]
	     [Author_742]
	     [Author_28]
	     [Author_298]
	     [Author_625]
	     [Author_1089]
	     [Author_39]
	     [Author_405]
	     [Author_940]
	     [Author810])
	 (sexo female))

	([Author_170] of Autor
	 (idAutor "170")
	 (nombreAutor "Steve Kluger")
	 (autoresSimilares
	     [Author_45]
	     [Author_872]
	     [Author_432]
	     [Author487])
	 (sexo male))

	([Author_171] of Autor
	 (idAutor "171")
	 (nombreAutor "Alex London")
	 (autoresSimilares
	     [Author_14]
	     [Author_749]
	     [Author_913]
	     [Author_697]
	     [Author_484]
	     [Author_465]
	     [Author_58]
	     [Author_564]
	     [Author_124]
	     [Author_353]
	     [Author_196]
	     [Author1095])
	 (sexo male))

	([Author_172] of Autor
	 (idAutor "172")
	 (nombreAutor "Joanne Harris")
	 (autoresSimilares
	     [Author_1076]
	     [Author_253]
	     [Author_124]
	     [Author_201]
	     [Author_511]
	     [Author_799]
	     [Author_408]
	     [Author_233]
	     [Author_485]
	     [Author_117]
	     [Author850])
	 (sexo female))

	([Author_173] of Autor
	 (idAutor "173")
	 (nombreAutor "Salman Rushdie")
	 (autoresSimilares
	     [Author1050])
	 (sexo male))

	([Author_174] of Autor
	 (idAutor "174")
	 (nombreAutor "Jo Walton")
	 (autoresSimilares
	     [Author_250]
	     [Author_475]
	     [Author_22]
	     [Author_980]
	     [Author_660]
	     [Author725])
	 (sexo female))

	([Author_175] of Autor
	 (idAutor "175")
	 (nombreAutor "Alice Hoffman")
	 (autoresSimilares
	     [Author_1079]
	     [Author_831]
	     [Author_98]
	     [Author_922]
	     [Author_379]
	     [Author_219]
	     [Author_976]
	     [Author_29]
	     [Author742])
	 (sexo male))

	([Author_176] of Autor
	 (idAutor "176")
	 (nombreAutor "Nicholas Christopher")
	 (autoresSimilares
	     [Author_754]
	     [Author_307]
	     [Author776])
	 (sexo male))

	([Author_177] of Autor
	 (idAutor "177")
	 (nombreAutor "Louis de Bernires")
	 (autoresSimilares
	     [Author_440]
	     [Author_378]
	     [Author_766]
	     [Author_85]
	     [Author_600]
	     [Author_353]
	     [Author_951]
	     [Author_752]
	     [Author_265]
	     [Author_800]
	     [Author921])
	 (sexo male))

	([Author_178] of Autor
	 (idAutor "178")
	 (nombreAutor "Isabel Allende")
	 (autoresSimilares
	     [Author_573]
	     [Author_55]
	     [Author_1075]
	     [Author_387]
	     [Author_125]
	     [Author_205]
	     [Author_1069]
	     [Author_771]
	     [Author_350]
	     [Author_1080]
	     [Author_428]
	     [Author_237]
	     [Author_309]
	     [Author_929]
	     [Author_74]
	     [Author_953]
	     [Author_889]
	     [Author_144]
	     [Author_778]
	     [Author221])
	 (sexo female))

	([Author_179] of Autor
	 (idAutor "179")
	 (nombreAutor "Haruki Murakami")
	 (autoresSimilares
	     [Author_766]
	     [Author_733]
	     [Author_854]
	     [Author_779]
	     [Author_573]
	     [Author940])
	 (sexo male))

	([Author_180] of Autor
	 (idAutor "180")
	 (nombreAutor "Julio Cortzar")
	 (autoresSimilares
	     [Author_88]
	     [Author_953]
	     [Author_343]
	     [Author_160]
	     [Author_149]
	     [Author_148]
	     [Author_798]
	     [Author_191]
	     [Author335])
	 (sexo male))

	([Author_181] of Autor
	 (idAutor "181")
	 (nombreAutor "Angela Carter")
	 (autoresSimilares
	     [Author_1077]
	     [Author_416]
	     [Author_563]
	     [Author_592]
	     [Author_582]
	     [Author_117]
	     [Author107])
	 (sexo female))

	([Author_182] of Autor
	 (idAutor "182")
	 (nombreAutor "Robin Sloan")
	 (autoresSimilares
	     [Author_663]
	     [Author_22]
	     [Author_9]
	     [Author_151]
	     [Author_557]
	     [Author_827]
	     [Author_903]
	     [Author_173]
	     [Author812])
	 (sexo male))

	([Author_183] of Autor
	 (idAutor "183")
	 (nombreAutor "Karen Russell")
	 (autoresSimilares
	     [Author_38]
	     [Author_112]
	     [Author_480]
	     [Author_1099]
	     [Author_499]
	     [Author_1101]
	     [Author_407]
	     [Author_933]
	     [Author_992]
	     [Author_614]
	     [Author_216]
	     [Author_211]
	     [Author_762]
	     [Author_348]
	     [Author_281]
	     [Author_561]
	     [Author_506]
	     [Author598])
	 (sexo female))

	([Author_184] of Autor
	 (idAutor "184")
	 (nombreAutor "Erick Setiawan")
	 (autoresSimilares
	     [Author_343]
	     [Author_843]
	     [Author_806]
	     [Author_785]
	     [Author_947]
	     [Author_654]
	     [Author_366]
	     [Author_1017]
	     [Author_316]
	     [Author_564]
	     [Author_32]
	     [Author_102]
	     [Author_365]
	     [Author_818]
	     [Author707])
	 (sexo male))

	([Author_185] of Autor
	 (idAutor "185")
	 (nombreAutor "Alice Walker")
	 (autoresSimilares
	     [Author_413]
	     [Author_1066]
	     [Author_218]
	     [Author_44]
	     [Author_673]
	     [Author_686]
	     [Author_662]
	     [Author_751]
	     [Author_939]
	     [Author_174]
	     [Author_7]
	     [Author_280]
	     [Author_974]
	     [Author_969]
	     [Author_410]
	     [Author_615]
	     [Author_766]
	     [Author856])
	 (sexo female))

	([Author_186] of Autor
	 (idAutor "186")
	 (nombreAutor "Gloria Naylor")
	 (autoresSimilares
	     [Author_827]
	     [Author_165]
	     [Author_567]
	     [Author_671]
	     [Author_285]
	     [Author_87]
	     [Author_343]
	     [Author_197]
	     [Author_355]
	     [Author_801]
	     [Author482])
	 (sexo female))

	([Author_187] of Autor
	 (idAutor "187")
	 (nombreAutor "Chitra Banerjee Divakaruni")
	 (autoresSimilares
	     [Author_575]
	     [Author_776]
	     [Author_677]
	     [Author_502]
	     [Author_309]
	     [Author_770]
	     [Author_702]
	     [Author_917]
	     [Author_38]
	     [Author_980]
	     [Author_518]
	     [Author_367]
	     [Author_296]
	     [Author_1006]
	     [Author_165]
	     [Author_376]
	     [Author_800]
	     [Author_834]
	     [Author303])
	 (sexo female))

	([Author_188] of Autor
	 (idAutor "188")
	 (nombreAutor "Hermann Hesse")
	 (autoresSimilares
	     [Author_822]
	     [Author_144]
	     [Author_473]
	     [Author_154]
	     [Author_137]
	     [Author_640]
	     [Author_775]
	     [Author_65]
	     [Author_1013]
	     [Author_1106]
	     [Author_152]
	     [Author767])
	 (sexo male))

	([Author_189] of Autor
	 (idAutor "189")
	 (nombreAutor "Ta Obreht")
	 (autoresSimilares
	     [Author_694]
	     [Author_982]
	     [Author_849]
	     [Author_134]
	     [Author_283]
	     [Author_865]
	     [Author_536]
	     [Author_777]
	     [Author_457]
	     [Author_563]
	     [Author617])
	 (sexo female))

	([Author_190] of Autor
	 (idAutor "190")
	 (nombreAutor "WP Kinsella")
	 (autoresSimilares
	     [Author_250]
	     [Author_741]
	     [Author_479]
	     [Author_255]
	     [Author_10]
	     [Author_69]
	     [Author_772]
	     [Author_162]
	     [Author_270]
	     [Author_825]
	     [Author1075])
	 (sexo male))

	([Author_191] of Autor
	 (idAutor "191")
	 (nombreAutor "Gabriel Garca Mrquez")
	 (autoresSimilares
	     [Author_82]
	     [Author_1023]
	     [Author_421]
	     [Author_580]
	     [Author_129]
	     [Author_722]
	     [Author_84]
	     [Author_153]
	     [Author_994]
	     [Author_652]
	     [Author_344]
	     [Author_252]
	     [Author_5]
	     [Author_454]
	     [Author_508]
	     [Author_613]
	     [Author_213]
	     [Author894])
	 (sexo male))

	([Author_192] of Autor
	 (idAutor "192")
	 (nombreAutor "Jorge Amado")
	 (autoresSimilares
	     [Author_580]
	     [Author_545]
	     [Author_1078]
	     [Author_950]
	     [Author_257]
	     [Author_172]
	     [Author_1093]
	     [Author_1067]
	     [Author_167]
	     [Author_995]
	     [Author_1010]
	     [Author_211]
	     [Author_107]
	     [Author_389]
	     [Author_634]
	     [Author_187]
	     [Author447])
	 (sexo male))

	([Author_193] of Autor
	 (idAutor "193")
	 (nombreAutor "Daniel Wallace")
	 (autoresSimilares
	     [Author_683]
	     [Author1008])
	 (sexo male))

	([Author_194] of Autor
	 (idAutor "194")
	 (nombreAutor "Luis Alberto Urrea")
	 (autoresSimilares
	     [Author_659]
	     [Author_335]
	     [Author_333]
	     [Author_465]
	     [Author72])
	 (sexo male))

	([Author_195] of Autor
	 (idAutor "195")
	 (nombreAutor "John     Nichols")
	 (autoresSimilares
	     [Author_83]
	     [Author_634]
	     [Author_468]
	     [Author705])
	 (sexo male))

	([Author_196] of Autor
	 (idAutor "196")
	 (nombreAutor "Carlos Ruiz Zafn")
	 (autoresSimilares
	     [Author626])
	 (sexo male))

	([Author_197] of Autor
	 (idAutor "197")
	 (nombreAutor "Gnter Grass")
	 (autoresSimilares
	     [Author_1044]
	     [Author_728]
	     [Author_543]
	     [Author_380]
	     [Author_444]
	     [Author_931]
	     [Author_501]
	     [Author_702]
	     [Author_563]
	     [Author_772]
	     [Author_438]
	     [Author_170]
	     [Author_104]
	     [Author_567]
	     [Author_248]
	     [Author_484]
	     [Author_331]
	     [Author_607]
	     [Author105])
	 (sexo male))

	([Author_198] of Autor
	 (idAutor "198")
	 (nombreAutor "Juan Rulfo")
	 (autoresSimilares
	     [Author_1012]
	     [Author_52]
	     [Author_758]
	     [Author_918]
	     [Author_904]
	     [Author_494]
	     [Author_208]
	     [Author_238]
	     [Author_589]
	     [Author_815]
	     [Author_646]
	     [Author_611]
	     [Author_330]
	     [Author_978]
	     [Author_284]
	     [Author997])
	 (sexo male))

	([Author_199] of Autor
	 (idAutor "199")
	 (nombreAutor "Eowyn Ivey")
	 (autoresSimilares
	     [Author_596]
	     [Author_412]
	     [Author_564]
	     [Author_511]
	     [Author_183]
	     [Author_178]
	     [Author_813]
	     [Author_1038]
	     [Author_877]
	     [Author_377]
	     [Author_55]
	     [Author520])
	 (sexo female))

	([Author_200] of Autor
	 (idAutor "200")
	 (nombreAutor "Tom Robbins")
	 (autoresSimilares
	     [Author_478]
	     [Author_795]
	     [Author_778]
	     [Author_105]
	     [Author_364]
	     [Author_305]
	     [Author_303]
	     [Author_524]
	     [Author_742]
	     [Author_831]
	     [Author_15]
	     [Author308])
	 (sexo male))

	([Author_201] of Autor
	 (idAutor "201")
	 (nombreAutor "Rudolfo Anaya")
	 (autoresSimilares
	     [Author229])
	 (sexo male))

	([Author_202] of Autor
	 (idAutor "202")
	 (nombreAutor "Jeanette Winterson")
	 (autoresSimilares
	     [Author_502]
	     [Author_926]
	     [Author_955]
	     [Author_242]
	     [Author_567]
	     [Author_1024]
	     [Author_102]
	     [Author_713]
	     [Author_762]
	     [Author841])
	 (sexo female))

	([Author_203] of Autor
	 (idAutor "203")
	 (nombreAutor "Aimee Bender")
	 (autoresSimilares
	     [Author_1103]
	     [Author_179]
	     [Author_957]
	     [Author_847]
	     [Author_950]
	     [Author_199]
	     [Author873])
	 (sexo male))

	([Author_204] of Autor
	 (idAutor "204")
	 (nombreAutor "Italo Calvino")
	 (autoresSimilares
	     [Author_1092]
	     [Author63])
	 (sexo male))

	([Author_205] of Autor
	 (idAutor "205")
	 (nombreAutor "John Crowley")
	 (autoresSimilares
	     [Author_376]
	     [Author_612]
	     [Author_907]
	     [Author_944]
	     [Author_370]
	     [Author_654]
	     [Author_270]
	     [Author_653]
	     [Author_108]
	     [Author_1023]
	     [Author_913]
	     [Author_790]
	     [Author_725]
	     [Author826])
	 (sexo male))

	([Author_206] of Autor
	 (idAutor "206")
	 (nombreAutor "Junot Daz")
	 (autoresSimilares
	     [Author_750]
	     [Author_19]
	     [Author_646]
	     [Author_532]
	     [Author_259]
	     [Author_1084]
	     [Author_1007]
	     [Author_912]
	     [Author_814]
	     [Author_911]
	     [Author282])
	 (sexo male))

	([Author_207] of Autor
	 (idAutor "207")
	 (nombreAutor "Mark Helprin")
	 (autoresSimilares
	     [Author_147]
	     [Author_640]
	     [Author_732]
	     [Author_811]
	     [Author_442]
	     [Author_808]
	     [Author_397]
	     [Author_264]
	     [Author_836]
	     [Author_666]
	     [Author_760]
	     [Author_723]
	     [Author_521]
	     [Author_1074]
	     [Author_865]
	     [Author_222]
	     [Author530])
	 (sexo male))

	([Author_208] of Autor
	 (idAutor "208")
	 (nombreAutor "Yann Martel")
	 (autoresSimilares
	     [Author_687]
	     [Author430])
	 (sexo male))

	([Author_209] of Autor
	 (idAutor "209")
	 (nombreAutor "Jonathan Safran Foer")
	 (autoresSimilares
	     [Author_88]
	     [Author_910]
	     [Author_408]
	     [Author627])
	 (sexo male))

	([Author_210] of Autor
	 (idAutor "210")
	 (nombreAutor "Sarah Addison Allen")
	 (autoresSimilares
	     [Author2])
	 (sexo female))

	([Author_211] of Autor
	 (idAutor "211")
	 (nombreAutor "Jorge Luis Borges")
	 (autoresSimilares
	     [Author_82]
	     [Author_167]
	     [Author_566]
	     [Author_69]
	     [Author911])
	 (sexo male))

	([Author_212] of Autor
	 (idAutor "212")
	 (nombreAutor "Erin Morgenstern")
	 (autoresSimilares
	     [Author_179]
	     [Author_896]
	     [Author_180]
	     [Author_116]
	     [Author_857]
	     [Author_974]
	     [Author_166]
	     [Author_994]
	     [Author_562]
	     [Author_171]
	     [Author_398]
	     [Author_1039]
	     [Author_469]
	     [Author169])
	 (sexo female))

	([Author_213] of Autor
	 (idAutor "213")
	 (nombreAutor "Mikhail Bulgakov")
	 (autoresSimilares
	     [Author707])
	 (sexo male))

	([Author_214] of Autor
	 (idAutor "214")
	 (nombreAutor "Laura Esquivel")
	 (autoresSimilares
	     [Author_1054]
	     [Author_338]
	     [Author_148]
	     [Author_546]
	     [Author_422]
	     [Author_311]
	     [Author_984]
	     [Author_702]
	     [Author_319]
	     [Author_631]
	     [Author_62]
	     [Author_795]
	     [Author_718]
	     [Author_266]
	     [Author_501]
	     [Author_668]
	     [Author587])
	 (sexo female))

	([Author_215] of Autor
	 (idAutor "215")
	 (nombreAutor "Sharon Creech")
	 (autoresSimilares
	     [Author_925]
	     [Author_478]
	     [Author_313]
	     [Author_441]
	     [Author_65]
	     [Author_30]
	     [Author_95]
	     [Author_1009]
	     [Author_569]
	     [Author_5]
	     [Author_212]
	     [Author_927]
	     [Author_343]
	     [Author315])
	 (sexo male))

	([Author_216] of Autor
	 (idAutor "216")
	 (nombreAutor "Anthony Burgess")
	 (autoresSimilares
	     [Author_547]
	     [Author_289]
	     [Author_18]
	     [Author_901]
	     [Author_426]
	     [Author779])
	 (sexo male))

	([Author_217] of Autor
	 (idAutor "217")
	 (nombreAutor "Willa Cather")
	 (autoresSimilares
	     [Author246])
	 (sexo female))

	([Author_218] of Autor
	 (idAutor "218")
	 (nombreAutor "Thomas Hardy")
	 (autoresSimilares
	     [Author_303]
	     [Author_701]
	     [Author_442]
	     [Author_878]
	     [Author_705]
	     [Author_444]
	     [Author_406]
	     [Author_19]
	     [Author_1001]
	     [Author_743]
	     [Author488])
	 (sexo male))

	([Author_219] of Autor
	 (idAutor "219")
	 (nombreAutor "Charles Dickens")
	 (autoresSimilares
	     [Author_312]
	     [Author_223]
	     [Author_299]
	     [Author_199]
	     [Author_841]
	     [Author_271]
	     [Author_491]
	     [Author_87]
	     [Author_24]
	     [Author_706]
	     [Author_788]
	     [Author_801]
	     [Author_331]
	     [Author_756]
	     [Author_728]
	     [Author_577]
	     [Author_503]
	     [Author_843]
	     [Author_530]
	     [Author248])
	 (sexo male))

	([Author_220] of Autor
	 (idAutor "220")
	 (nombreAutor "Ralph Ellison")
	 (autoresSimilares
	     [Author_475]
	     [Author_14]
	     [Author_886]
	     [Author_875]
	     [Author_963]
	     [Author_288]
	     [Author_383]
	     [Author_52]
	     [Author_112]
	     [Author626])
	 (sexo male))

	([Author_221] of Autor
	 (idAutor "221")
	 (nombreAutor "Victor Hugo")
	 (autoresSimilares
	     [Author124])
	 (sexo male))

	([Author_222] of Autor
	 (idAutor "222")
	 (nombreAutor "Mary Ann Shaffer")
	 (autoresSimilares
	     [Author_492]
	     [Author_928]
	     [Author_965]
	     [Author_191]
	     [Author_896]
	     [Author892])
	 (sexo female))

	([Author_223] of Autor
	 (idAutor "223")
	 (nombreAutor "Zora Neale Hurston")
	 (autoresSimilares
	     [Author_98]
	     [Author_673]
	     [Author_605]
	     [Author_997]
	     [Author_148]
	     [Author_228]
	     [Author_675]
	     [Author_145]
	     [Author_285]
	     [Author_753]
	     [Author_422]
	     [Author_1056]
	     [Author_296]
	     [Author_934]
	     [Author_780]
	     [Author659])
	 (sexo female))

	([Author_224] of Autor
	 (idAutor "224")
	 (nombreAutor "Richard Bach")
	 (autoresSimilares
	     [Author_978]
	     [Author_916]
	     [Author_856]
	     [Author_277]
	     [Author_949]
	     [Author_751]
	     [Author_236]
	     [Author_612]
	     [Author_785]
	     [Author_699]
	     [Author_848]
	     [Author433])
	 (sexo male))

	([Author_225] of Autor
	 (idAutor "225")
	 (nombreAutor "Barbara Kingsolver")
	 (autoresSimilares
	     [Author_1044]
	     [Author_188]
	     [Author_189]
	     [Author_400]
	     [Author_399]
	     [Author_412]
	     [Author_1050]
	     [Author_1016]
	     [Author_453]
	     [Author_434]
	     [Author_540]
	     [Author_565]
	     [Author_1053]
	     [Author_347]
	     [Author_1035]
	     [Author_704]
	     [Author_737]
	     [Author_183]
	     [Author775])
	 (sexo female))

	([Author_226] of Autor
	 (idAutor "226")
	 (nombreAutor "Gustave Flaubert")
	 (autoresSimilares
	     [Author_822]
	     [Author_36]
	     [Author_497]
	     [Author_3]
	     [Author_108]
	     [Author1044])
	 (sexo male))

	([Author_227] of Autor
	 (idAutor "227")
	 (nombreAutor "John Steinbeck")
	 (autoresSimilares
	     [Author_654]
	     [Author_918]
	     [Author_279]
	     [Author_872]
	     [Author_1106]
	     [Author_755]
	     [Author_222]
	     [Author_489]
	     [Author_165]
	     [Author_238]
	     [Author_219]
	     [Author_29]
	     [Author_726]
	     [Author423])
	 (sexo male))

	([Author_228] of Autor
	 (idAutor "228")
	 (nombreAutor "Mark Twain")
	 (autoresSimilares
	     [Author_356]
	     [Author_431]
	     [Author_950]
	     [Author_648]
	     [Author_590]
	     [Author_880]
	     [Author_377]
	     [Author_617]
	     [Author_198]
	     [Author_899]
	     [Author343])
	 (sexo male))

	([Author_229] of Autor
	 (idAutor "229")
	 (nombreAutor "Joseph Conrad")
	 (autoresSimilares
	     [Author_103]
	     [Author_199]
	     [Author824])
	 (sexo male))

	([Author_230] of Autor
	 (idAutor "230")
	 (nombreAutor "Sue Monk Kidd")
	 (autoresSimilares
	     [Author_376]
	     [Author_111]
	     [Author_229]
	     [Author_506]
	     [Author_924]
	     [Author_668]
	     [Author_872]
	     [Author_307]
	     [Author_683]
	     [Author_1084]
	     [Author_1057]
	     [Author_954]
	     [Author_909]
	     [Author_582]
	     [Author_136]
	     [Author_818]
	     [Author_917]
	     [Author_1062]
	     [Author_1032]
	     [Author871])
	 (sexo female))

	([Author_231] of Autor
	 (idAutor "231")
	 (nombreAutor "Orson Scott Card")
	 (autoresSimilares
	     [Author_923]
	     [Author_164]
	     [Author_316]
	     [Author_366]
	     [Author_273]
	     [Author_756]
	     [Author_877]
	     [Author_575]
	     [Author_406]
	     [Author_592]
	     [Author_984]
	     [Author_729]
	     [Author_438]
	     [Author_503]
	     [Author_275]
	     [Author314])
	 (sexo male))

	([Author_232] of Autor
	 (idAutor "232")
	 (nombreAutor "Chinua Achebe")
	 (autoresSimilares
	     [Author_121]
	     [Author_708]
	     [Author_155]
	     [Author_777]
	     [Author_351]
	     [Author_502]
	     [Author_636]
	     [Author_160]
	     [Author977])
	 (sexo male))

	([Author_233] of Autor
	 (idAutor "233")
	 (nombreAutor "Jack London")
	 (autoresSimilares
	     [Author_465]
	     [Author_1072]
	     [Author_75]
	     [Author_1063]
	     [Author_928]
	     [Author_524]
	     [Author_253]
	     [Author_540]
	     [Author_975]
	     [Author_397]
	     [Author_355]
	     [Author_73]
	     [Author1016])
	 (sexo male))

	([Author_234] of Autor
	 (idAutor "234")
	 (nombreAutor "Ken Kesey")
	 (autoresSimilares
	     [Author_578]
	     [Author606])
	 (sexo male))

	([Author_235] of Autor
	 (idAutor "235")
	 (nombreAutor "Ernest Hemingway")
	 (autoresSimilares
	     [Author_938]
	     [Author_861]
	     [Author_93]
	     [Author343])
	 (sexo male))

	([Author_236] of Autor
	 (idAutor "236")
	 (nombreAutor "Geoffrey Chaucer")
	 (autoresSimilares
	     [Author_857]
	     [Author_389]
	     [Author_973]
	     [Author_804]
	     [Author_1052]
	     [Author_87]
	     [Author_364]
	     [Author_310]
	     [Author_335]
	     [Author_424]
	     [Author_641]
	     [Author311])
	 (sexo male))

	([Author_237] of Autor
	 (idAutor "237")
	 (nombreAutor "William Paul Young")
	 (autoresSimilares
	     [Author_178]
	     [Author_303]
	     [Author933])
	 (sexo male))

	([Author_238] of Autor
	 (idAutor "238")
	 (nombreAutor "Richard  Adams")
	 (autoresSimilares
	     [Author_502]
	     [Author685])
	 (sexo male))

	([Author_239] of Autor
	 (idAutor "239")
	 (nombreAutor "Fyodor Dostoyevsky")
	 (autoresSimilares
	     [Author_358]
	     [Author_233]
	     [Author_665]
	     [Author_998]
	     [Author_693]
	     [Author_594]
	     [Author_541]
	     [Author_1074]
	     [Author_1033]
	     [Author_304]
	     [Author_189]
	     [Author281])
	 (sexo male))

	([Author_240] of Autor
	 (idAutor "240")
	 (nombreAutor "Albert Camus")
	 (autoresSimilares
	     [Author_292]
	     [Author_1022]
	     [Author_519]
	     [Author_198]
	     [Author_679]
	     [Author_372]
	     [Author_687]
	     [Author498])
	 (sexo male))

	([Author_241] of Autor
	 (idAutor "241")
	 (nombreAutor "John Boyne")
	 (autoresSimilares
	     [Author_794]
	     [Author_310]
	     [Author209])
	 (sexo male))

	([Author_242] of Autor
	 (idAutor "242")
	 (nombreAutor "Sara Gruen")
	 (autoresSimilares
	     [Author_5]
	     [Author_967]
	     [Author_707]
	     [Author_353]
	     [Author_674]
	     [Author_662]
	     [Author_567]
	     [Author_971]
	     [Author_880]
	     [Author_370]
	     [Author_949]
	     [Author_299]
	     [Author_91]
	     [Author_841]
	     [Author_527]
	     [Author_16]
	     [Author617])
	 (sexo female))

	([Author_243] of Autor
	 (idAutor "243")
	 (nombreAutor "Alice Sebold")
	 (autoresSimilares
	     [Author_358]
	     [Author_1076]
	     [Author_1067]
	     [Author_310]
	     [Author_253]
	     [Author_616]
	     [Author_722]
	     [Author396])
	 (sexo male))

	([Author_244] of Autor
	 (idAutor "244")
	 (nombreAutor "Paulo Coelho")
	 (autoresSimilares
	     [Author_505]
	     [Author_545]
	     [Author_862]
	     [Author883])
	 (sexo male))

	([Author_245] of Autor
	 (idAutor "245")
	 (nombreAutor "Mary Wollstonecraft Shelley")
	 (autoresSimilares
	     [Author_177]
	     [Author_191]
	     [Author_750]
	     [Author_32]
	     [Author_105]
	     [Author_931]
	     [Author_589]
	     [Author_608]
	     [Author440])
	 (sexo female))

	([Author_246] of Autor
	 (idAutor "246")
	 (nombreAutor "Daniel Keyes")
	 (autoresSimilares
	     [Author_457]
	     [Author_933]
	     [Author_299]
	     [Author_21]
	     [Author_593]
	     [Author_884]
	     [Author_442]
	     [Author_85]
	     [Author_1095]
	     [Author_34]
	     [Author_1011]
	     [Author_923]
	     [Author_814]
	     [Author_919]
	     [Author_377]
	     [Author_117]
	     [Author549])
	 (sexo male))

	([Author_247] of Autor
	 (idAutor "247")
	 (nombreAutor "Emily Bront")
	 (autoresSimilares
	     [Author_102]
	     [Author_1079]
	     [Author_237]
	     [Author_217]
	     [Author_42]
	     [Author_949]
	     [Author_177]
	     [Author_872]
	     [Author_229]
	     [Author758])
	 (sexo female))

	([Author_248] of Autor
	 (idAutor "248")
	 (nombreAutor "Kathryn Stockett")
	 (autoresSimilares
	     [Author_933]
	     [Author_231]
	     [Author_354]
	     [Author_1104]
	     [Author60])
	 (sexo female))

	([Author_249] of Autor
	 (idAutor "249")
	 (nombreAutor "Mark Haddon")
	 (autoresSimilares
	     [Author_420]
	     [Author_958]
	     [Author_15]
	     [Author_90]
	     [Author_17]
	     [Author_720]
	     [Author_1088]
	     [Author_533]
	     [Author_293]
	     [Author700])
	 (sexo male))

	([Author_250] of Autor
	 (idAutor "250")
	 (nombreAutor "Nathaniel Hawthorne")
	 (autoresSimilares
	     [Author797])
	 (sexo male))

	([Author_251] of Autor
	 (idAutor "251")
	 (nombreAutor "Antoine de Saint-Exupry")
	 (autoresSimilares
	     [Author_830]
	     [Author_509]
	     [Author_474]
	     [Author_204]
	     [Author498])
	 (sexo male))

	([Author_252] of Autor
	 (idAutor "252")
	 (nombreAutor "Markus Zusak")
	 (autoresSimilares
	     [Author_231]
	     [Author_479]
	     [Author_443]
	     [Author_1082]
	     [Author_540]
	     [Author_254]
	     [Author_725]
	     [Author_451]
	     [Author_825]
	     [Author_260]
	     [Author_933]
	     [Author_655]
	     [Author_28]
	     [Author_904]
	     [Author_192]
	     [Author_741]
	     [Author_620]
	     [Author_828]
	     [Author_998]
	     [Author975])
	 (sexo male))

	([Author_253] of Autor
	 (idAutor "253")
	 (nombreAutor "George Orwell")
	 (autoresSimilares
	     [Author_268]
	     [Author_365]
	     [Author_807]
	     [Author_776]
	     [Author_467]
	     [Author_810]
	     [Author_740]
	     [Author_403]
	     [Author_936]
	     [Author_729]
	     [Author_373]
	     [Author_988]
	     [Author_1076]
	     [Author_1072]
	     [Author_498]
	     [Author983])
	 (sexo male))

	([Author_254] of Autor
	 (idAutor "254")
	 (nombreAutor "JD Salinger")
	 (autoresSimilares
	     [Author_362]
	     [Author_56]
	     [Author_325]
	     [Author_1003]
	     [Author_875]
	     [Author_826]
	     [Author_343]
	     [Author_419]
	     [Author_894]
	     [Author_318]
	     [Author_475]
	     [Author_237]
	     [Author_687]
	     [Author_842]
	     [Author_280]
	     [Author_568]
	     [Author_253]
	     [Author_812]
	     [Author986])
	 (sexo male))

	([Author_255] of Autor
	 (idAutor "255")
	 (nombreAutor "Charlotte Bront")
	 (autoresSimilares
	     [Author_314]
	     [Author_175]
	     [Author_699]
	     [Author_280]
	     [Author_427]
	     [Author_68]
	     [Author_276]
	     [Author_786]
	     [Author_814]
	     [Author301])
	 (sexo female))

	([Author_256] of Autor
	 (idAutor "256")
	 (nombreAutor "William Golding")
	 (autoresSimilares
	     [Author_788]
	     [Author_503]
	     [Author_307]
	     [Author_1023]
	     [Author_217]
	     [Author_202]
	     [Author_423]
	     [Author_315]
	     [Author_364]
	     [Author_362]
	     [Author_21]
	     [Author_567]
	     [Author_293]
	     [Author1058])
	 (sexo male))

	([Author_257] of Autor
	 (idAutor "257")
	 (nombreAutor "F Scott Fitzgerald")
	 (autoresSimilares
	     [Author_978]
	     [Author_479]
	     [Author_939]
	     [Author_899]
	     [Author_986]
	     [Author_1036]
	     [Author_1058]
	     [Author_27]
	     [Author171])
	 (sexo male))

	([Author_258] of Autor
	 (idAutor "258")
	 (nombreAutor "Harper Lee")
	 (autoresSimilares
	     [Author_327]
	     [Author_226]
	     [Author_97]
	     [Author_960]
	     [Author_1008]
	     [Author_408]
	     [Author_996]
	     [Author_640]
	     [Author_609]
	     [Author_232]
	     [Author649])
	 (sexo female))

	([Author_259] of Autor
	 (idAutor "259")
	 (nombreAutor "Ian McEwan")
	 (autoresSimilares
	     [Author_1093]
	     [Author_762]
	     [Author_860]
	     [Author_886]
	     [Author257])
	 (sexo male))

	([Author_260] of Autor
	 (idAutor "260")
	 (nombreAutor "Michael Cox")
	 (autoresSimilares
	     [Author_765]
	     [Author_614]
	     [Author_766]
	     [Author_394]
	     [Author_551]
	     [Author_40]
	     [Author_912]
	     [Author_169]
	     [Author_388]
	     [Author_52]
	     [Author_965]
	     [Author_33]
	     [Author_455]
	     [Author_272]
	     [Author333])
	 (sexo male))

	([Author_261] of Autor
	 (idAutor "261")
	 (nombreAutor "Kate Mosse")
	 (autoresSimilares
	     [Author_515]
	     [Author_845]
	     [Author_134]
	     [Author_539]
	     [Author_320]
	     [Author_799]
	     [Author_20]
	     [Author_936]
	     [Author_291]
	     [Author_1069]
	     [Author_1102]
	     [Author_812]
	     [Author_496]
	     [Author_523]
	     [Author937])
	 (sexo male))

	([Author_262] of Autor
	 (idAutor "262")
	 (nombreAutor "Arturo Prez-Reverte")
	 (autoresSimilares
	     [Author_91]
	     [Author_935]
	     [Author_42]
	     [Author_74]
	     [Author_422]
	     [Author_166]
	     [Author_235]
	     [Author_387]
	     [Author_299]
	     [Author468])
	 (sexo male))

	([Author_263] of Autor
	 (idAutor "263")
	 (nombreAutor "Boris Akunin")
	 (autoresSimilares
	     [Author_600]
	     [Author_204]
	     [Author_310]
	     [Author_932]
	     [Author_336]
	     [Author_340]
	     [Author_1059]
	     [Author_941]
	     [Author_854]
	     [Author_1034]
	     [Author_128]
	     [Author_11]
	     [Author_441]
	     [Author_402]
	     [Author_903]
	     [Author_706]
	     [Author_293]
	     [Author_534]
	     [Author_551]
	     [Author342])
	 (sexo male))

	([Author_264] of Autor
	 (idAutor "264")
	 (nombreAutor "Karen Maitland")
	 (autoresSimilares
	     [Author_764]
	     [Author_844]
	     [Author_771]
	     [Author_272]
	     [Author_632]
	     [Author_131]
	     [Author_12]
	     [Author_507]
	     [Author232])
	 (sexo female))

	([Author_265] of Autor
	 (idAutor "265")
	 (nombreAutor "Umberto Eco")
	 (autoresSimilares
	     [Author_624]
	     [Author_161]
	     [Author_307]
	     [Author_278]
	     [Author617])
	 (sexo male))

	([Author_266] of Autor
	 (idAutor "266")
	 (nombreAutor "Walter Mosley")
	 (autoresSimilares
	     [Author_220]
	     [Author_575]
	     [Author_743]
	     [Author269])
	 (sexo male))

	([Author_267] of Autor
	 (idAutor "267")
	 (nombreAutor "Shelley Gray")
	 (autoresSimilares
	     [Author_414]
	     [Author_147]
	     [Author_955]
	     [Author_500]
	     [Author_504]
	     [Author_447]
	     [Author_839]
	     [Author327])
	 (sexo male))

	([Author_268] of Autor
	 (idAutor "268")
	 (nombreAutor "AS Byatt")
	 (autoresSimilares
	     [Author_956]
	     [Author_1075]
	     [Author_468]
	     [Author_929]
	     [Author_595]
	     [Author_21]
	     [Author_808]
	     [Author_9]
	     [Author_461]
	     [Author_154]
	     [Author_296]
	     [Author_933]
	     [Author_70]
	     [Author514])
	 (sexo female))

	([Author_269] of Autor
	 (idAutor "269")
	 (nombreAutor "Jamie Ford")
	 (autoresSimilares
	     [Author_527]
	     [Author_883]
	     [Author_502]
	     [Author165])
	 (sexo male))

	([Author_270] of Autor
	 (idAutor "270")
	 (nombreAutor "Kate Morton")
	 (autoresSimilares
	     [Author_650]
	     [Author_586]
	     [Author_116]
	     [Author_119]
	     [Author_951]
	     [Author_956]
	     [Author209])
	 (sexo female))

	([Author_271] of Autor
	 (idAutor "271")
	 (nombreAutor "Sarah Waters")
	 (autoresSimilares
	     [Author_938]
	     [Author_186]
	     [Author_617]
	     [Author_207]
	     [Author_710]
	     [Author_916]
	     [Author_306]
	     [Author_1042]
	     [Author1051])
	 (sexo female))

	([Author_272] of Autor
	 (idAutor "272")
	 (nombreAutor "Matthew Pearl")
	 (autoresSimilares
	     [Author_433]
	     [Author_29]
	     [Author_915]
	     [Author_737]
	     [Author_231]
	     [Author1055])
	 (sexo male))

	([Author_273] of Autor
	 (idAutor "273")
	 (nombreAutor "Robert   Harris")
	 (autoresSimilares
	     [Author_372]
	     [Author_1064]
	     [Author_1011]
	     [Author_284]
	     [Author_1021]
	     [Author_465]
	     [Author_260]
	     [Author_449]
	     [Author_131]
	     [Author_985]
	     [Author_145]
	     [Author_237]
	     [Author_252]
	     [Author_327]
	     [Author_650]
	     [Author_767]
	     [Author90])
	 (sexo male))

	([Author_274] of Autor
	 (idAutor "274")
	 (nombreAutor "Tom Rob Smith")
	 (autoresSimilares
	     [Author_685]
	     [Author_400]
	     [Author_636]
	     [Author_442]
	     [Author_33]
	     [Author_703]
	     [Author_848]
	     [Author_287]
	     [Author_111]
	     [Author85])
	 (sexo male))

	([Author_275] of Autor
	 (idAutor "275")
	 (nombreAutor "Alan Bradley")
	 (autoresSimilares
	     [Author_670]
	     [Author_674]
	     [Author_192]
	     [Author_1053]
	     [Author_937]
	     [Author_88]
	     [Author_67]
	     [Author_553]
	     [Author_1094]
	     [Author_1028]
	     [Author_90]
	     [Author_431]
	     [Author_859]
	     [Author_413]
	     [Author_537]
	     [Author_1020]
	     [Author_429]
	     [Author_247]
	     [Author_95]
	     [Author980])
	 (sexo male))

	([Author_276] of Autor
	 (idAutor "276")
	 (nombreAutor "Patrick Sskind")
	 (autoresSimilares
	     [Author_91]
	     [Author_72]
	     [Author_596]
	     [Author_37]
	     [Author_147]
	     [Author_948]
	     [Author_900]
	     [Author_253]
	     [Author927])
	 (sexo male))

	([Author_277] of Autor
	 (idAutor "277")
	 (nombreAutor "Diane Setterfield")
	 (autoresSimilares
	     [Author_894]
	     [Author_915]
	     [Author_457]
	     [Author_40]
	     [Author_861]
	     [Author_379]
	     [Author_955]
	     [Author_305]
	     [Author_685]
	     [Author_116]
	     [Author_789]
	     [Author_274]
	     [Author_839]
	     [Author_313]
	     [Author_736]
	     [Author_625]
	     [Author_87]
	     [Author_744]
	     [Author_411]
	     [Author750])
	 (sexo female))

	([Author_278] of Autor
	 (idAutor "278")
	 (nombreAutor "Max Cummings")
	 (autoresSimilares
	     [Author_124]
	     [Author835])
	 (sexo male))

	([Author_279] of Autor
	 (idAutor "279")
	 (nombreAutor "Robertson Davies")
	 (autoresSimilares
	     [Author_243]
	     [Author_479]
	     [Author_156]
	     [Author_635]
	     [Author_119]
	     [Author_553]
	     [Author_84]
	     [Author_949]
	     [Author_140]
	     [Author578])
	 (sexo male))

	([Author_280] of Autor
	 (idAutor "280")
	 (nombreAutor "Judith Guest")
	 (autoresSimilares
	     [Author_1081]
	     [Author_89]
	     [Author_545]
	     [Author_518]
	     [Author_245]
	     [Author_79]
	     [Author_1031]
	     [Author_719]
	     [Author_139]
	     [Author_203]
	     [Author_728]
	     [Author_1020]
	     [Author_132]
	     [Author1086])
	 (sexo male))

	([Author_281] of Autor
	 (idAutor "281")
	 (nombreAutor "John Updike")
	 (autoresSimilares
	     [Author_86]
	     [Author_905]
	     [Author_996]
	     [Author_768]
	     [Author_877]
	     [Author_1027]
	     [Author_861]
	     [Author_847]
	     [Author_344]
	     [Author_579]
	     [Author1070])
	 (sexo male))

	([Author_282] of Autor
	 (idAutor "282")
	 (nombreAutor "Robert Musil")
	 (autoresSimilares
	     [Author_570]
	     [Author_729]
	     [Author_1044]
	     [Author_906]
	     [Author_1024]
	     [Author_244]
	     [Author_86]
	     [Author_107]
	     [Author_918]
	     [Author_660]
	     [Author_567]
	     [Author_510]
	     [Author_899]
	     [Author_776]
	     [Author_102]
	     [Author_651]
	     [Author_247]
	     [Author_994]
	     [Author639])
	 (sexo male))

	([Author_283] of Autor
	 (idAutor "283")
	 (nombreAutor "Dave Eggers")
	 (autoresSimilares
	     [Author289])
	 (sexo male))

	([Author_284] of Autor
	 (idAutor "284")
	 (nombreAutor "Zadie Smith")
	 (autoresSimilares
	     [Author_220]
	     [Author_168]
	     [Author_112]
	     [Author_292]
	     [Author_500]
	     [Author_686]
	     [Author_287]
	     [Author_622]
	     [Author_272]
	     [Author_8]
	     [Author_824]
	     [Author579])
	 (sexo female))

	([Author_285] of Autor
	 (idAutor "285")
	 (nombreAutor "Mark Z Danielewski")
	 (autoresSimilares
	     [Author_330]
	     [Author_1013]
	     [Author_1067]
	     [Author_125]
	     [Author_295]
	     [Author_453]
	     [Author_1049]
	     [Author_970]
	     [Author_584]
	     [Author_260]
	     [Author_831]
	     [Author_356]
	     [Author_925]
	     [Author_830]
	     [Author_617]
	     [Author_186]
	     [Author_182]
	     [Author170])
	 (sexo male))

	([Author_286] of Autor
	 (idAutor "286")
	 (nombreAutor "Richard Russo")
	 (autoresSimilares
	     [Author356])
	 (sexo male))

	([Author_287] of Autor
	 (idAutor "287")
	 (nombreAutor "Abraham   Verghese")
	 (autoresSimilares
	     [Author_1061]
	     [Author_534]
	     [Author_223]
	     [Author_961]
	     [Author_434]
	     [Author_941]
	     [Author_52]
	     [Author_237]
	     [Author869])
	 (sexo male))

	([Author_288] of Autor
	 (idAutor "288")
	 (nombreAutor "Nicole Krauss")
	 (autoresSimilares
	     [Author_177]
	     [Author_369]
	     [Author_1090]
	     [Author_75]
	     [Author_648]
	     [Author397])
	 (sexo female))

	([Author_289] of Autor
	 (idAutor "289")
	 (nombreAutor "Jonathan Franzen")
	 (autoresSimilares
	     [Author_197]
	     [Author412])
	 (sexo male))

	([Author_290] of Autor
	 (idAutor "290")
	 (nombreAutor "David Mitchell")
	 (autoresSimilares
	     [Author_400]
	     [Author_902]
	     [Author_593]
	     [Author_120]
	     [Author_890]
	     [Author993])
	 (sexo male))

	([Author_291] of Autor
	 (idAutor "291")
	 (nombreAutor "Lisa See")
	 (autoresSimilares
	     [Author_954]
	     [Author_817]
	     [Author_1014]
	     [Author_243]
	     [Author_221]
	     [Author_722]
	     [Author_751]
	     [Author_936]
	     [Author_930]
	     [Author_480]
	     [Author_90]
	     [Author167])
	 (sexo male))

	([Author_292] of Autor
	 (idAutor "292")
	 (nombreAutor "Michael Chabon")
	 (autoresSimilares
	     [Author_780]
	     [Author_790]
	     [Author_1056]
	     [Author_908]
	     [Author_370]
	     [Author1039])
	 (sexo male))

	([Author_293] of Autor
	 (idAutor "293")
	 (nombreAutor "Ann Patchett")
	 (autoresSimilares
	     [Author_1102]
	     [Author_452]
	     [Author_773]
	     [Author_301]
	     [Author_789]
	     [Author_410]
	     [Author_573]
	     [Author_81]
	     [Author_274]
	     [Author_409]
	     [Author_954]
	     [Author_654]
	     [Author_317]
	     [Author_164]
	     [Author_264]
	     [Author_924]
	     [Author_328]
	     [Author_392]
	     [Author_296]
	     [Author824])
	 (sexo female))

	([Author_294] of Autor
	 (idAutor "294")
	 (nombreAutor "Jeffrey Eugenides")
	 (autoresSimilares
	     [Author_919]
	     [Author_1083]
	     [Author_410]
	     [Author_252]
	     [Author_664]
	     [Author_422]
	     [Author_272]
	     [Author_886]
	     [Author_1013]
	     [Author_668]
	     [Author_780]
	     [Author_711]
	     [Author_472]
	     [Author_560]
	     [Author_674]
	     [Author_259]
	     [Author927])
	 (sexo male))

	([Author_295] of Autor
	 (idAutor "295")
	 (nombreAutor "Gary Jennings")
	 (autoresSimilares
	     [Author_17]
	     [Author_274]
	     [Author_889]
	     [Author_567]
	     [Author_614]
	     [Author_985]
	     [Author_1000]
	     [Author_203]
	     [Author_220]
	     [Author_890]
	     [Author_127]
	     [Author_163]
	     [Author_749]
	     [Author434])
	 (sexo male))

	([Author_296] of Autor
	 (idAutor "296")
	 (nombreAutor "Michel Faber")
	 (autoresSimilares
	     [Author_498]
	     [Author_1073]
	     [Author_621]
	     [Author_886]
	     [Author_403]
	     [Author_1077]
	     [Author_568]
	     [Author_515]
	     [Author_203]
	     [Author_494]
	     [Author_799]
	     [Author_174]
	     [Author_1092]
	     [Author_736]
	     [Author_584]
	     [Author_539]
	     [Author_575]
	     [Author_973]
	     [Author_492]
	     [Author84])
	 (sexo male))

	([Author_297] of Autor
	 (idAutor "297")
	 (nombreAutor "James A Michener")
	 (autoresSimilares
	     [Author_836]
	     [Author_71]
	     [Author_505]
	     [Author_863]
	     [Author_355]
	     [Author_14]
	     [Author_683]
	     [Author_389]
	     [Author_102]
	     [Author_253]
	     [Author_963]
	     [Author_877]
	     [Author_441]
	     [Author_594]
	     [Author_1066]
	     [Author_576]
	     [Author_91]
	     [Author_188]
	     [Author_738]
	     [Author949])
	 (sexo male))

	([Author_298] of Autor
	 (idAutor "298")
	 (nombreAutor "Bernard Cornwell")
	 (autoresSimilares
	     [Author_558]
	     [Author_973]
	     [Author_738]
	     [Author4])
	 (sexo male))

	([Author_299] of Autor
	 (idAutor "299")
	 (nombreAutor "Gore Vidal")
	 (autoresSimilares
	     [Author_816]
	     [Author_968]
	     [Author307])
	 (sexo male))

	([Author_300] of Autor
	 (idAutor "300")
	 (nombreAutor "MM Kaye")
	 (autoresSimilares
	     [Author_472]
	     [Author_941]
	     [Author_1100]
	     [Author_739]
	     [Author_728]
	     [Author_521]
	     [Author_121]
	     [Author_172]
	     [Author_634]
	     [Author_970]
	     [Author_680]
	     [Author_962]
	     [Author1105])
	 (sexo female))

	([Author_301] of Autor
	 (idAutor "301")
	 (nombreAutor "John Irving")
	 (autoresSimilares
	     [Author_1104]
	     [Author_1016]
	     [Author_534]
	     [Author_967]
	     [Author_1000]
	     [Author_1056]
	     [Author_761]
	     [Author_1086]
	     [Author65])
	 (sexo male))

	([Author_302] of Autor
	 (idAutor "302")
	 (nombreAutor "Patrick OBrian")
	 (autoresSimilares
	     [Author_404]
	     [Author_223]
	     [Author_485]
	     [Author_281]
	     [Author_519]
	     [Author_722]
	     [Author_172]
	     [Author_475]
	     [Author_968]
	     [Author646])
	 (sexo male))

	([Author_303] of Autor
	 (idAutor "303")
	 (nombreAutor "Edward Rutherfurd")
	 (autoresSimilares
	     [Author_681]
	     [Author_581]
	     [Author_45]
	     [Author364])
	 (sexo male))

	([Author_304] of Autor
	 (idAutor "304")
	 (nombreAutor "John Fowles")
	 (autoresSimilares
	     [Author_898]
	     [Author_1037]
	     [Author_882]
	     [Author_1080]
	     [Author1094])
	 (sexo male))

	([Author_305] of Autor
	 (idAutor "305")
	 (nombreAutor "Kathleen Winsor")
	 (autoresSimilares
	     [Author_61]
	     [Author_99]
	     [Author_864]
	     [Author_540]
	     [Author_553]
	     [Author_1066]
	     [Author_773]
	     [Author_368]
	     [Author_1102]
	     [Author_36]
	     [Author_1045]
	     [Author_677]
	     [Author_125]
	     [Author_1068]
	     [Author_455]
	     [Author_341]
	     [Author949])
	 (sexo female))

	([Author_306] of Autor
	 (idAutor "306")
	 (nombreAutor "John Jakes")
	 (autoresSimilares
	     [Author_223]
	     [Author_854]
	     [Author_632]
	     [Author_203]
	     [Author_433]
	     [Author_1039]
	     [Author_622]
	     [Author_267]
	     [Author_16]
	     [Author_614]
	     [Author_718]
	     [Author_609]
	     [Author_993]
	     [Author_1100]
	     [Author_202]
	     [Author_556]
	     [Author_1009]
	     [Author1064])
	 (sexo male))

	([Author_307] of Autor
	 (idAutor "307")
	 (nombreAutor "Colleen McCullough")
	 (autoresSimilares
	     [Author_956]
	     [Author_819]
	     [Author_1041]
	     [Author_960]
	     [Author518])
	 (sexo female))

	([Author_308] of Autor
	 (idAutor "308")
	 (nombreAutor "James Clavell")
	 (autoresSimilares
	     [Author_111]
	     [Author_942]
	     [Author_790]
	     [Author_393]
	     [Author_631]
	     [Author_192]
	     [Author_251]
	     [Author_809]
	     [Author_1038]
	     [Author_390]
	     [Author_853]
	     [Author_611]
	     [Author_0]
	     [Author_162]
	     [Author608])
	 (sexo male))

	([Author_309] of Autor
	 (idAutor "309")
	 (nombreAutor "Michelle Moran")
	 (autoresSimilares
	     [Author62])
	 (sexo female))

	([Author_310] of Autor
	 (idAutor "310")
	 (nombreAutor "Sarah Dunant")
	 (autoresSimilares
	     [Author_232]
	     [Author_594]
	     [Author_100]
	     [Author_32]
	     [Author_646]
	     [Author_635]
	     [Author_944]
	     [Author_1047]
	     [Author_731]
	     [Author_470]
	     [Author_353]
	     [Author_399]
	     [Author_680]
	     [Author_967]
	     [Author_361]
	     [Author494])
	 (sexo male))

	([Author_311] of Autor
	 (idAutor "311")
	 (nombreAutor "Susanna Clarke")
	 (autoresSimilares
	     [Author_252]
	     [Author_547]
	     [Author_229]
	     [Author_679]
	     [Author_153]
	     [Author_1089]
	     [Author_233]
	     [Author_1015]
	     [Author_818]
	     [Author_595]
	     [Author_329]
	     [Author_619]
	     [Author_178]
	     [Author_869]
	     [Author_68]
	     [Author753])
	 (sexo female))

	([Author_312] of Autor
	 (idAutor "312")
	 (nombreAutor "Hilary Mantel")
	 (autoresSimilares
	     [Author_710]
	     [Author_846]
	     [Author_1096]
	     [Author_452]
	     [Author_251]
	     [Author_805]
	     [Author_839]
	     [Author_441]
	     [Author_372]
	     [Author_973]
	     [Author_536]
	     [Author_954]
	     [Author_882]
	     [Author_874]
	     [Author_909]
	     [Author_325]
	     [Author_122]
	     [Author1039])
	 (sexo female))

	([Author_313] of Autor
	 (idAutor "313")
	 (nombreAutor "Alan Brennert")
	 (autoresSimilares
	     [Author_883]
	     [Author_543]
	     [Author_1086]
	     [Author_959]
	     [Author_631]
	     [Author_616]
	     [Author_633]
	     [Author_586]
	     [Author_723]
	     [Author_515]
	     [Author879])
	 (sexo male))

	([Author_314] of Autor
	 (idAutor "314")
	 (nombreAutor "Irving Stone")
	 (autoresSimilares
	     [Author_1062]
	     [Author_443]
	     [Author_229]
	     [Author_1054]
	     [Author_59]
	     [Author_459]
	     [Author_869]
	     [Author_167]
	     [Author_934]
	     [Author_779]
	     [Author_106]
	     [Author_486]
	     [Author_341]
	     [Author_65]
	     [Author_71]
	     [Author_448]
	     [Author_336]
	     [Author_522]
	     [Author_824]
	     [Author858])
	 (sexo male))

	([Author_315] of Autor
	 (idAutor "315")
	 (nombreAutor "Fannie Flagg")
	 (autoresSimilares
	     [Author_1016]
	     [Author_817]
	     [Author_255]
	     [Author_556]
	     [Author_526]
	     [Author_711]
	     [Author_137]
	     [Author_484]
	     [Author_819]
	     [Author_151]
	     [Author361])
	 (sexo male))

	([Author_316] of Autor
	 (idAutor "316")
	 (nombreAutor "Anthony Doerr")
	 (autoresSimilares
	     [Author_633]
	     [Author_725]
	     [Author_61]
	     [Author_854]
	     [Author_846]
	     [Author_238]
	     [Author_643]
	     [Author_229]
	     [Author_480]
	     [Author_635]
	     [Author_102]
	     [Author785])
	 (sexo male))

	([Author_317] of Autor
	 (idAutor "317")
	 (nombreAutor "Donna Woolfolk Cross")
	 (autoresSimilares
	     [Author_1074]
	     [Author_627]
	     [Author_578]
	     [Author_417]
	     [Author_777]
	     [Author_218]
	     [Author_351]
	     [Author_1025]
	     [Author_277]
	     [Author832])
	 (sexo female))

	([Author_318] of Autor
	 (idAutor "318")
	 (nombreAutor "Leon Uris")
	 (autoresSimilares
	     [Author_551]
	     [Author_879]
	     [Author_754]
	     [Author_997]
	     [Author_64]
	     [Author_766]
	     [Author_891]
	     [Author_521]
	     [Author_410]
	     [Author_315]
	     [Author_74]
	     [Author_312]
	     [Author_773]
	     [Author_281]
	     [Author_716]
	     [Author_427]
	     [Author_116]
	     [Author_553]
	     [Author811])
	 (sexo male))

	([Author_319] of Autor
	 (idAutor "319")
	 (nombreAutor "Anya Seton")
	 (autoresSimilares
	     [Author_267]
	     [Author_859]
	     [Author_162]
	     [Author_315]
	     [Author_435]
	     [Author_126]
	     [Author_343]
	     [Author_54]
	     [Author_830]
	     [Author_172]
	     [Author_1017]
	     [Author_670]
	     [Author_76]
	     [Author_461]
	     [Author912])
	 (sexo female))

	([Author_320] of Autor
	 (idAutor "320")
	 (nombreAutor "Michael Ondaatje")
	 (autoresSimilares
	     [Author_748]
	     [Author_396]
	     [Author810])
	 (sexo male))

	([Author_321] of Autor
	 (idAutor "321")
	 (nombreAutor "Robert Graves")
	 (autoresSimilares
	     [Author784])
	 (sexo male))

	([Author_322] of Autor
	 (idAutor "322")
	 (nombreAutor "Alexandre Dumas")
	 (autoresSimilares
	     [Author_426]
	     [Author_434]
	     [Author_226]
	     [Author_403]
	     [Author_0]
	     [Author_44]
	     [Author_80]
	     [Author_926]
	     [Author_506]
	     [Author_946]
	     [Author_173]
	     [Author_694]
	     [Author115])
	 (sexo male))

	([Author_323] of Autor
	 (idAutor "323")
	 (nombreAutor "Charles Frazier")
	 (autoresSimilares
	     [Author_703]
	     [Author_457]
	     [Author575])
	 (sexo male))

	([Author_324] of Autor
	 (idAutor "324")
	 (nombreAutor "Larry McMurtry")
	 (autoresSimilares
	     [Author_1027]
	     [Author_82]
	     [Author_946]
	     [Author_491]
	     [Author_1099]
	     [Author_897]
	     [Author_783]
	     [Author_549]
	     [Author_748]
	     [Author_174]
	     [Author_346]
	     [Author_688]
	     [Author1082])
	 (sexo male))

	([Author_325] of Autor
	 (idAutor "325")
	 (nombreAutor "Anita Diamant")
	 (autoresSimilares
	     [Author_343]
	     [Author_333]
	     [Author_298]
	     [Author_671]
	     [Author_739]
	     [Author_989]
	     [Author_974]
	     [Author_637]
	     [Author_907]
	     [Author_626]
	     [Author_50]
	     [Author_777]
	     [Author_856]
	     [Author_899]
	     [Author_590]
	     [Author_1030]
	     [Author_450]
	     [Author469])
	 (sexo female))

	([Author_326] of Autor
	 (idAutor "326")
	 (nombreAutor "Miguel de Cervantes Saavedra")
	 (autoresSimilares
	     [Author_162]
	     [Author_147]
	     [Author_936]
	     [Author_395]
	     [Author_722]
	     [Author_3]
	     [Author_606]
	     [Author_630]
	     [Author822])
	 (sexo male))

	([Author_327] of Autor
	 (idAutor "327")
	 (nombreAutor "Harriet Beecher Stowe")
	 (autoresSimilares
	     [Author_855]
	     [Author_117]
	     [Author_1097]
	     [Author_284]
	     [Author_480]
	     [Author_481]
	     [Author_738]
	     [Author_609]
	     [Author_610]
	     [Author_369]
	     [Author_191]
	     [Author_498]
	     [Author_370]
	     [Author_436]
	     [Author_95]
	     [Author_951]
	     [Author988])
	 (sexo male))

	([Author_328] of Autor
	 (idAutor "328")
	 (nombreAutor "Erich Maria Remarque")
	 (autoresSimilares
	     [Author_39]
	     [Author_919]
	     [Author_644]
	     [Author566])
	 (sexo male))

	([Author_329] of Autor
	 (idAutor "329")
	 (nombreAutor "Leo Tolstoy")
	 (autoresSimilares
	     [Author635])
	 (sexo male))

	([Author_330] of Autor
	 (idAutor "330")
	 (nombreAutor "Vladimir Nabokov")
	 (autoresSimilares
	     [Author_1100]
	     [Author_216]
	     [Author_92]
	     [Author_1054]
	     [Author_938]
	     [Author_802]
	     [Author_922]
	     [Author_1034]
	     [Author_667]
	     [Author_325]
	     [Author_979]
	     [Author75])
	 (sexo male))

	([Author_331] of Autor
	 (idAutor "331")
	 (nombreAutor "Joseph Heller")
	 (autoresSimilares
	     [Author_125]
	     [Author883])
	 (sexo male))

	([Author_332] of Autor
	 (idAutor "332")
	 (nombreAutor "Oscar Wilde")
	 (autoresSimilares
	     [Author_496]
	     [Author_1050]
	     [Author_425]
	     [Author_125]
	     [Author_529]
	     [Author_286]
	     [Author_506]
	     [Author_445]
	     [Author_575]
	     [Author_410]
	     [Author_295]
	     [Author_996]
	     [Author_1018]
	     [Author_521]
	     [Author220])
	 (sexo male))

	([Author_333] of Autor
	 (idAutor "333")
	 (nombreAutor "Sherman Alexie")
	 (autoresSimilares
	     [Author_542]
	     [Author319])
	 (sexo male))

	([Author_334] of Autor
	 (idAutor "334")
	 (nombreAutor "EL Konigsburg")
	 (autoresSimilares
	     [Author_237]
	     [Author_266]
	     [Author_470]
	     [Author_380]
	     [Author_124]
	     [Author_15]
	     [Author_767]
	     [Author_1055]
	     [Author_311]
	     [Author_19]
	     [Author_217]
	     [Author_572]
	     [Author_244]
	     [Author939])
	 (sexo female))

	([Author_335] of Autor
	 (idAutor "335")
	 (nombreAutor "Ann Brashares")
	 (autoresSimilares
	     [Author_941]
	     [Author_1020]
	     [Author_408]
	     [Author_463]
	     [Author_467]
	     [Author_269]
	     [Author_523]
	     [Author_179]
	     [Author_265]
	     [Author_163]
	     [Author_402]
	     [Author_496]
	     [Author_815]
	     [Author896])
	 (sexo female))

	([Author_336] of Autor
	 (idAutor "336")
	 (nombreAutor "Norton Juster")
	 (autoresSimilares
	     [Author_1026]
	     [Author_54]
	     [Author_399]
	     [Author_408]
	     [Author_937]
	     [Author_1104]
	     [Author_767]
	     [Author485])
	 (sexo male))

	([Author_337] of Autor
	 (idAutor "337")
	 (nombreAutor "LM Montgomery")
	 (autoresSimilares
	     [Author_951]
	     [Author_285]
	     [Author_290]
	     [Author1010])
	 (sexo female))

	([Author_338] of Autor
	 (idAutor "338")
	 (nombreAutor "Margaret Peterson Haddix")
	 (autoresSimilares
	     [Author_457]
	     [Author_359]
	     [Author_712]
	     [Author_1022]
	     [Author_539]
	     [Author_259]
	     [Author_22]
	     [Author_596]
	     [Author_549]
	     [Author_603]
	     [Author_364]
	     [Author_487]
	     [Author_498]
	     [Author_1105]
	     [Author715])
	 (sexo female))

	([Author_339] of Autor
	 (idAutor "339")
	 (nombreAutor "Erica Jong")
	 (autoresSimilares
	     [Author_902]
	     [Author_400]
	     [Author_1098]
	     [Author_952]
	     [Author870])
	 (sexo female))

	([Author_340] of Autor
	 (idAutor "340")
	 (nombreAutor "Heinrich Bll")
	 (autoresSimilares
	     [Author_504]
	     [Author_781]
	     [Author_1008]
	     [Author_290]
	     [Author_891]
	     [Author_1070]
	     [Author_852]
	     [Author_973]
	     [Author_611]
	     [Author_75]
	     [Author_148]
	     [Author_297]
	     [Author_969]
	     [Author_330]
	     [Author_243]
	     [Author_1016]
	     [Author_1019]
	     [Author_724]
	     [Author_976]
	     [Author150])
	 (sexo male))

	([Author_341] of Autor
	 (idAutor "341")
	 (nombreAutor "Peter Straub")
	 (autoresSimilares
	     [Author_686]
	     [Author_831]
	     [Author_734]
	     [Author_897]
	     [Author_397]
	     [Author_283]
	     [Author_511]
	     [Author_989]
	     [Author_486]
	     [Author_706]
	     [Author_207]
	     [Author_163]
	     [Author_517]
	     [Author1064])
	 (sexo male))

	([Author_342] of Autor
	 (idAutor "342")
	 (nombreAutor "Sidney Sheldon")
	 (autoresSimilares
	     [Author_209]
	     [Author_651]
	     [Author_328]
	     [Author_627]
	     [Author_827]
	     [Author_131]
	     [Author1101])
	 (sexo male))

	([Author_343] of Autor
	 (idAutor "343")
	 (nombreAutor "Herman Wouk")
	 (autoresSimilares
	     [Author_839]
	     [Author_505]
	     [Author_923]
	     [Author_940]
	     [Author_521]
	     [Author_556]
	     [Author_236]
	     [Author10])
	 (sexo male))

	([Author_344] of Autor
	 (idAutor "344")
	 (nombreAutor "Chaim Potok")
	 (autoresSimilares
	     [Author_928]
	     [Author_473]
	     [Author_475]
	     [Author_811]
	     [Author_943]
	     [Author_853]
	     [Author_1074]
	     [Author_975]
	     [Author_86]
	     [Author_333]
	     [Author_854]
	     [Author_97]
	     [Author_59]
	     [Author_722]
	     [Author_900]
	     [Author873])
	 (sexo male))

	([Author_345] of Autor
	 (idAutor "345")
	 (nombreAutor "Arthur C Clarke")
	 (autoresSimilares
	     [Author_253]
	     [Author_1087]
	     [Author_137]
	     [Author_1083]
	     [Author_381]
	     [Author639])
	 (sexo male))

	([Author_346] of Autor
	 (idAutor "346")
	 (nombreAutor "Terry Brooks")
	 (autoresSimilares
	     [Author_766]
	     [Author_72]
	     [Author_529]
	     [Author_703]
	     [Author_853]
	     [Author_685]
	     [Author_798]
	     [Author137])
	 (sexo male))

	([Author_347] of Autor
	 (idAutor "347")
	 (nombreAutor "Wallace Stegner")
	 (autoresSimilares
	     [Author_147]
	     [Author_378]
	     [Author616])
	 (sexo male))

	([Author_348] of Autor
	 (idAutor "348")
	 (nombreAutor "Jeffrey Archer")
	 (autoresSimilares
	     [Author_832]
	     [Author_381]
	     [Author_78]
	     [Author_501]
	     [Author_881]
	     [Author_1001]
	     [Author_1086]
	     [Author_1002]
	     [Author_215]
	     [Author_361]
	     [Author_192]
	     [Author_987]
	     [Author_735]
	     [Author_780]
	     [Author_41]
	     [Author_861]
	     [Author125])
	 (sexo male))

	([Author_349] of Autor
	 (idAutor "349")
	 (nombreAutor "Judy Blume")
	 (autoresSimilares
	     [Author_1024]
	     [Author_148]
	     [Author_648]
	     [Author868])
	 (sexo female))

	([Author_350] of Autor
	 (idAutor "350")
	 (nombreAutor "James Dickey")
	 (autoresSimilares
	     [Author_487]
	     [Author_269]
	     [Author_450]
	     [Author_1106]
	     [Author_28]
	     [Author_162]
	     [Author_735]
	     [Author_179]
	     [Author654])
	 (sexo male))

	([Author_351] of Autor
	 (idAutor "351")
	 (nombreAutor "Louis Sachar")
	 (autoresSimilares
	     [Author_565]
	     [Author_955]
	     [Author_672]
	     [Author_469]
	     [Author_99]
	     [Author_12]
	     [Author_561]
	     [Author_674]
	     [Author_101]
	     [Author_847]
	     [Author_918]
	     [Author_964]
	     [Author_299]
	     [Author_161]
	     [Author_969]
	     [Author_842]
	     [Author_127]
	     [Author598])
	 (sexo male))

	([Author_352] of Autor
	 (idAutor "352")
	 (nombreAutor "Milan Kundera")
	 (autoresSimilares
	     [Author_857]
	     [Author_255]
	     [Author_864]
	     [Author_228]
	     [Author_949]
	     [Author667])
	 (sexo male))

	([Author_353] of Autor
	 (idAutor "353")
	 (nombreAutor "Thomas Pynchon")
	 (autoresSimilares
	     [Author_17]
	     [Author_304]
	     [Author_993]
	     [Author_686]
	     [Author_1052]
	     [Author_620]
	     [Author_720]
	     [Author_516]
	     [Author_128]
	     [Author_703]
	     [Author_836]
	     [Author_717]
	     [Author_295]
	     [Author_1063]
	     [Author861])
	 (sexo male))

	([Author_354] of Autor
	 (idAutor "354")
	 (nombreAutor "Frederick Forsyth")
	 (autoresSimilares
	     [Author_999]
	     [Author_372]
	     [Author_22]
	     [Author_299]
	     [Author_684]
	     [Author_27]
	     [Author_495]
	     [Author_570]
	     [Author_394]
	     [Author578])
	 (sexo male))

	([Author_355] of Autor
	 (idAutor "355")
	 (nombreAutor "Michael Shaara")
	 (autoresSimilares
	     [Author_798]
	     [Author_778]
	     [Author_124]
	     [Author74])
	 (sexo male))

	([Author_356] of Autor
	 (idAutor "356")
	 (nombreAutor "EL Doctorow")
	 (autoresSimilares
	     [Author_859]
	     [Author_364]
	     [Author_11]
	     [Author_537]
	     [Author_839]
	     [Author_448]
	     [Author_820]
	     [Author_817]
	     [Author_842]
	     [Author_727]
	     [Author_890]
	     [Author_300]
	     [Author_1014]
	     [Author_915]
	     [Author_227]
	     [Author_766]
	     [Author_81]
	     [Author92])
	 (sexo male))

	([Author_357] of Autor
	 (idAutor "357")
	 (nombreAutor "Iris Murdoch")
	 (autoresSimilares
	     [Author_960]
	     [Author_620]
	     [Author_441]
	     [Author_656]
	     [Author_695]
	     [Author_621]
	     [Author_181]
	     [Author_736]
	     [Author_17]
	     [Author_159]
	     [Author_638]
	     [Author787])
	 (sexo female))

	([Author_358] of Autor
	 (idAutor "358")
	 (nombreAutor "John le Carr")
	 (autoresSimilares
	     [Author_1072]
	     [Author339])
	 (sexo male))

	([Author_359] of Autor
	 (idAutor "359")
	 (nombreAutor "Robert M Pirsig")
	 (autoresSimilares
	     [Author_597]
	     [Author_1095]
	     [Author_650]
	     [Author_587]
	     [Author_197]
	     [Author_421]
	     [Author108])
	 (sexo male))

	([Author_360] of Autor
	 (idAutor "360")
	 (nombreAutor "William Peter Blatty")
	 (autoresSimilares
	     [Author_647]
	     [Author_207]
	     [Author_176]
	     [Author_763]
	     [Author_1086]
	     [Author_839]
	     [Author_15]
	     [Author_1024]
	     [Author_102]
	     [Author_94]
	     [Author108])
	 (sexo male))

	([Author_361] of Autor
	 (idAutor "361")
	 (nombreAutor "Hunter S Thompson")
	 (autoresSimilares
	     [Author_861]
	     [Author_120]
	     [Author_32]
	     [Author_939]
	     [Author_190]
	     [Author765])
	 (sexo male))

	([Author_362] of Autor
	 (idAutor "362")
	 (nombreAutor "Sangu Mandanna")
	 (autoresSimilares
	     [Author_645]
	     [Author_1098]
	     [Author_919]
	     [Author871])
	 (sexo female))

	([Author_363] of Autor
	 (idAutor "363")
	 (nombreAutor "Rebecca Gober")
	 (autoresSimilares
	     [Author_242]
	     [Author_916]
	     [Author_642]
	     [Author_690]
	     [Author_775]
	     [Author_1018]
	     [Author_23]
	     [Author_549]
	     [Author_454]
	     [Author_755]
	     [Author_80]
	     [Author_1011]
	     [Author_153]
	     [Author_1053]
	     [Author_705]
	     [Author_306]
	     [Author_435]
	     [Author_919]
	     [Author_340]
	     [Author14])
	 (sexo female))

	([Author_364] of Autor
	 (idAutor "364")
	 (nombreAutor "Myra McEntire")
	 (autoresSimilares
	     [Author_1025]
	     [Author_301]
	     [Author_968]
	     [Author75])
	 (sexo male))

	([Author_365] of Autor
	 (idAutor "365")
	 (nombreAutor "Sarah Crossan")
	 (autoresSimilares
	     [Author_265]
	     [Author_598]
	     [Author_305]
	     [Author_1042]
	     [Author_903]
	     [Author_182]
	     [Author_81]
	     [Author_158]
	     [Author_955]
	     [Author_892]
	     [Author482])
	 (sexo female))

	([Author_366] of Autor
	 (idAutor "366")
	 (nombreAutor "Heather Anastasiu")
	 (autoresSimilares
	     [Author_331]
	     [Author_552]
	     [Author_392]
	     [Author_117]
	     [Author_4]
	     [Author_30]
	     [Author436])
	 (sexo female))

	([Author_367] of Autor
	 (idAutor "367")
	 (nombreAutor "Susan Dennard")
	 (autoresSimilares
	     [Author_987]
	     [Author_867]
	     [Author_478]
	     [Author_282]
	     [Author_538]
	     [Author_522]
	     [Author_972]
	     [Author_87]
	     [Author133])
	 (sexo female))

	([Author_368] of Autor
	 (idAutor "368")
	 (nombreAutor "Michael Crichton")
	 (autoresSimilares
	     [Author_351]
	     [Author_828]
	     [Author_786]
	     [Author_392]
	     [Author_777]
	     [Author_1023]
	     [Author_474]
	     [Author_655]
	     [Author361])
	 (sexo male))

	([Author_369] of Autor
	 (idAutor "369")
	 (nombreAutor "Lawrence Durrell")
	 (autoresSimilares
	     [Author_1103]
	     [Author_1001]
	     [Author_50]
	     [Author_521]
	     [Author_644]
	     [Author_492]
	     [Author_51]
	     [Author_744]
	     [Author_813]
	     [Author_225]
	     [Author_627]
	     [Author_928]
	     [Author_688]
	     [Author_874]
	     [Author_1082]
	     [Author_749]
	     [Author_1066]
	     [Author942])
	 (sexo male))

	([Author_370] of Autor
	 (idAutor "370")
	 (nombreAutor "Patricia A McKillip")
	 (autoresSimilares
	     [Author_977]
	     [Author_656]
	     [Author_509]
	     [Author_951]
	     [Author_63]
	     [Author_976]
	     [Author_235]
	     [Author_418]
	     [Author_427]
	     [Author_191]
	     [Author_183]
	     [Author_1047]
	     [Author887])
	 (sexo female))

	([Author_371] of Autor
	 (idAutor "371")
	 (nombreAutor "Rand Miller")
	 (autoresSimilares
	     [Author_748]
	     [Author_11]
	     [Author_459]
	     [Author_656]
	     [Author_29]
	     [Author_716]
	     [Author_651]
	     [Author_1016]
	     [Author_986]
	     [Author_331]
	     [Author_642]
	     [Author913])
	 (sexo male))

	([Author_372] of Autor
	 (idAutor "372")
	 (nombreAutor "Mervyn Peake")
	 (autoresSimilares
	     [Author_877]
	     [Author_916]
	     [Author_118]
	     [Author_559]
	     [Author_1049]
	     [Author_710]
	     [Author_646]
	     [Author_385]
	     [Author_583]
	     [Author_910]
	     [Author_387]
	     [Author_274]
	     [Author_384]
	     [Author_653]
	     [Author_804]
	     [Author_917]
	     [Author_377]
	     [Author901])
	 (sexo male))

	([Author_373] of Autor
	 (idAutor "373")
	 (nombreAutor "Isaac Asimov")
	 (autoresSimilares
	     [Author_1090]
	     [Author_924]
	     [Author_1001]
	     [Author421])
	 (sexo male))

	([Author_374] of Autor
	 (idAutor "374")
	 (nombreAutor "Laurie Faria Stolarz")
	 (autoresSimilares
	     [Author_554]
	     [Author_308]
	     [Author_1079]
	     [Author_536]
	     [Author_993]
	     [Author_603]
	     [Author_1068]
	     [Author_799]
	     [Author_758]
	     [Author_307]
	     [Author_138]
	     [Author_334]
	     [Author_164]
	     [Author_929]
	     [Author_430]
	     [Author_184]
	     [Author_584]
	     [Author321])
	 (sexo female))

	([Author_375] of Autor
	 (idAutor "375")
	 (nombreAutor "Terry Goodkind")
	 (autoresSimilares
	     [Author_562]
	     [Author_158]
	     [Author_798]
	     [Author_391]
	     [Author_220]
	     [Author_246]
	     [Author_180]
	     [Author_749]
	     [Author_363]
	     [Author_444]
	     [Author33])
	 (sexo male))

	([Author_376] of Autor
	 (idAutor "376")
	 (nombreAutor "Robert Ludlum")
	 (autoresSimilares
	     [Author_739]
	     [Author_1085]
	     [Author_3]
	     [Author_488]
	     [Author_271]
	     [Author_630]
	     [Author349])
	 (sexo male))

	([Author_377] of Autor
	 (idAutor "377")
	 (nombreAutor "John Galsworthy")
	 (autoresSimilares
	     [Author_739]
	     [Author876])
	 (sexo male))

	([Author_378] of Autor
	 (idAutor "378")
	 (nombreAutor "Amalie Howard")
	 (autoresSimilares
	     [Author_497]
	     [Author_44]
	     [Author_811]
	     [Author_487]
	     [Author227])
	 (sexo female))

	([Author_379] of Autor
	 (idAutor "379")
	 (nombreAutor "Adrian Mendoza")
	 (autoresSimilares
	     [Author_140]
	     [Author_1104]
	     [Author_64]
	     [Author_208]
	     [Author_561]
	     [Author_428]
	     [Author_281]
	     [Author_914]
	     [Author_214]
	     [Author_319]
	     [Author_71]
	     [Author_149]
	     [Author_718]
	     [Author_853]
	     [Author_130]
	     [Author_530]
	     [Author_733]
	     [Author_532]
	     [Author21])
	 (sexo male))

	([Author_380] of Autor
	 (idAutor "380")
	 (nombreAutor "Cyma Rizwaan Khan")
	 (autoresSimilares
	     [Author469])
	 (sexo male))

	([Author_381] of Autor
	 (idAutor "381")
	 (nombreAutor "Sarah Harian")
	 (autoresSimilares
	     [Author_690]
	     [Author_801]
	     [Author_778]
	     [Author_292]
	     [Author_1010]
	     [Author495])
	 (sexo female))

	([Author_382] of Autor
	 (idAutor "382")
	 (nombreAutor "Whitney G")
	 (autoresSimilares
	     [Author_1044]
	     [Author_51]
	     [Author_1024]
	     [Author_232]
	     [Author_169]
	     [Author_300]
	     [Author_774]
	     [Author_519]
	     [Author_903]
	     [Author_759]
	     [Author_629]
	     [Author_340]
	     [Author_809]
	     [Author1041])
	 (sexo female))

	([Author_383] of Autor
	 (idAutor "383")
	 (nombreAutor "MSean Coleman")
	 (autoresSimilares
	     [Author_93]
	     [Author_265]
	     [Author_107]
	     [Author_478]
	     [Author_1104]
	     [Author_62]
	     [Author_1015]
	     [Author_628]
	     [Author_766]
	     [Author_131]
	     [Author190])
	 (sexo male))

	([Author_384] of Autor
	 (idAutor "384")
	 (nombreAutor "Luca  Rossi")
	 (autoresSimilares
	     [Author_119]
	     [Author_214]
	     [Author_282]
	     [Author_255]
	     [Author_5]
	     [Author_215]
	     [Author_780]
	     [Author_485]
	     [Author_827]
	     [Author_467]
	     [Author_672]
	     [Author337])
	 (sexo male))

	([Author_385] of Autor
	 (idAutor "385")
	 (nombreAutor "Charity Tinnin")
	 (autoresSimilares
	     [Author_583]
	     [Author_1048]
	     [Author_702]
	     [Author_492]
	     [Author_350]
	     [Author_837]
	     [Author_908]
	     [Author_148]
	     [Author_463]
	     [Author_373]
	     [Author406])
	 (sexo female))

	([Author_386] of Autor
	 (idAutor "386")
	 (nombreAutor "Theresa Kay")
	 (autoresSimilares
	     [Author_545]
	     [Author_825]
	     [Author_14]
	     [Author_466]
	     [Author_690]
	     [Author_1087]
	     [Author_401]
	     [Author_878]
	     [Author1104])
	 (sexo female))

	([Author_387] of Autor
	 (idAutor "387")
	 (nombreAutor "Chris Weitz")
	 (autoresSimilares
	     [Author_1031]
	     [Author_744]
	     [Author_806]
	     [Author_918]
	     [Author_641]
	     [Author_234]
	     [Author_767]
	     [Author_632]
	     [Author_792]
	     [Author_589]
	     [Author_339]
	     [Author_940]
	     [Author_1013]
	     [Author_23]
	     [Author_952]
	     [Author47])
	 (sexo male))

	([Author_388] of Autor
	 (idAutor "388")
	 (nombreAutor "Jessica  Keller")
	 (autoresSimilares
	     [Author_1074]
	     [Author_32]
	     [Author_81]
	     [Author_1057]
	     [Author_5]
	     [Author_372]
	     [Author562])
	 (sexo female))

	([Author_389] of Autor
	 (idAutor "389")
	 (nombreAutor "H Paul Honsinger")
	 (autoresSimilares
	     [Author_206]
	     [Author_93]
	     [Author_794]
	     [Author_909]
	     [Author_951]
	     [Author_800]
	     [Author78])
	 (sexo male))

	([Author_390] of Autor
	 (idAutor "390")
	 (nombreAutor "Stephanie  Diaz")
	 (autoresSimilares
	     [Author_615]
	     [Author_1064]
	     [Author_477]
	     [Author988])
	 (sexo female))

	([Author_391] of Autor
	 (idAutor "391")
	 (nombreAutor "Kimberly Afe")
	 (autoresSimilares
	     [Author_152]
	     [Author_39]
	     [Author377])
	 (sexo female))

	([Author_392] of Autor
	 (idAutor "392")
	 (nombreAutor "MG Buehrlen")
	 (autoresSimilares
	     [Author_611]
	     [Author_183]
	     [Author_692]
	     [Author_915]
	     [Author_214]
	     [Author_159]
	     [Author_259]
	     [Author308])
	 (sexo female))

	([Author_393] of Autor
	 (idAutor "393")
	 (nombreAutor "Lindsay Cummings")
	 (autoresSimilares
	     [Author_774]
	     [Author_919]
	     [Author_310]
	     [Author_176]
	     [Author_875]
	     [Author_1075]
	     [Author_447]
	     [Author_483]
	     [Author_250]
	     [Author351])
	 (sexo female))

	([Author_394] of Autor
	 (idAutor "394")
	 (nombreAutor "Sam Crescent")
	 (autoresSimilares
	     [Author_938]
	     [Author_459]
	     [Author_700]
	     [Author_425]
	     [Author_873]
	     [Author_760]
	     [Author_267]
	     [Author_478]
	     [Author_1071]
	     [Author68])
	 (sexo female))

	([Author_395] of Autor
	 (idAutor "395")
	 (nombreAutor "Bella Jewel")
	 (autoresSimilares
	     [Author_593]
	     [Author_803]
	     [Author_632]
	     [Author_403]
	     [Author_908]
	     [Author_269]
	     [Author_741]
	     [Author_657]
	     [Author_1071]
	     [Author_1095]
	     [Author_810]
	     [Author_623]
	     [Author_330]
	     [Author_366]
	     [Author_883]
	     [Author_32]
	     [Author_141]
	     [Author389])
	 (sexo male))

	([Author_396] of Autor
	 (idAutor "396")
	 (nombreAutor "HJ Bellus")
	 (autoresSimilares
	     [Author713])
	 (sexo female))

	([Author_397] of Autor
	 (idAutor "397")
	 (nombreAutor "CM Stunich")
	 (autoresSimilares
	     [Author494])
	 (sexo female))

	([Author_398] of Autor
	 (idAutor "398")
	 (nombreAutor "Stephanie Tyler")
	 (autoresSimilares
	     [Author_664]
	     [Author_693]
	     [Author_551]
	     [Author_927]
	     [Author_47]
	     [Author_109]
	     [Author_126]
	     [Author_651]
	     [Author_758]
	     [Author_889]
	     [Author_834]
	     [Author_146]
	     [Author_559]
	     [Author_748]
	     [Author_317]
	     [Author_374]
	     [Author_821]
	     [Author_157]
	     [Author612])
	 (sexo female))

	([Author_399] of Autor
	 (idAutor "399")
	 (nombreAutor "Bec Botefuhr")
	 (autoresSimilares
	     [Author_383]
	     [Author_499]
	     [Author_505]
	     [Author_250]
	     [Author_480]
	     [Author_88]
	     [Author_1051]
	     [Author_899]
	     [Author_877]
	     [Author1082])
	 (sexo male))

	([Author_400] of Autor
	 (idAutor "400")
	 (nombreAutor "Kim Jones")
	 (autoresSimilares
	     [Author_623]
	     [Author_854]
	     [Author_922]
	     [Author_494]
	     [Author_899]
	     [Author_475]
	     [Author632])
	 (sexo female))

	([Author_401] of Autor
	 (idAutor "401")
	 (nombreAutor "Gary Paulsen")
	 (autoresSimilares
	     [Author_513]
	     [Author_89]
	     [Author_691]
	     [Author_531]
	     [Author_378]
	     [Author_1052]
	     [Author_276]
	     [Author_453]
	     [Author_964]
	     [Author_94]
	     [Author_862]
	     [Author_99]
	     [Author_520]
	     [Author_435]
	     [Author_411]
	     [Author_494]
	     [Author894])
	 (sexo male))

	([Author_402] of Autor
	 (idAutor "402")
	 (nombreAutor "William R Forstchen")
	 (autoresSimilares
	     [Author_883]
	     [Author_886]
	     [Author_880]
	     [Author_985]
	     [Author_858]
	     [Author_579]
	     [Author_626]
	     [Author_806]
	     [Author_271]
	     [Author_132]
	     [Author313])
	 (sexo male))

	([Author_403] of Autor
	 (idAutor "403")
	 (nombreAutor "Louis LAmour")
	 (autoresSimilares
	     [Author_746]
	     [Author_59]
	     [Author_557]
	     [Author_448]
	     [Author_75]
	     [Author_245]
	     [Author_1054]
	     [Author_1033]
	     [Author_358]
	     [Author_335]
	     [Author_765]
	     [Author_820]
	     [Author_832]
	     [Author91])
	 (sexo male))

	([Author_404] of Autor
	 (idAutor "404")
	 (nombreAutor "Alex Haley")
	 (autoresSimilares
	     [Author_176]
	     [Author_960]
	     [Author_235]
	     [Author_60]
	     [Author_1030]
	     [Author33])
	 (sexo male))

	([Author_405] of Autor
	 (idAutor "405")
	 (nombreAutor "Herman Melville")
	 (autoresSimilares
	     [Author_693]
	     [Author163])
	 (sexo male))

	([Author_406] of Autor
	 (idAutor "406")
	 (nombreAutor "Anna Sewell")
	 (autoresSimilares
	     [Author_858]
	     [Author_778]
	     [Author_564]
	     [Author_884]
	     [Author_256]
	     [Author616])
	 (sexo female))

	([Author_407] of Autor
	 (idAutor "407")
	 (nombreAutor "Dalton Trumbo")
	 (autoresSimilares
	     [Author_560]
	     [Author_682]
	     [Author_1000]
	     [Author_366]
	     [Author457])
	 (sexo male))

	([Author_408] of Autor
	 (idAutor "408")
	 (nombreAutor "Johann David Wyss")
	 (autoresSimilares
	     [Author_471]
	     [Author_382]
	     [Author_51]
	     [Author_208]
	     [Author455])
	 (sexo male))

	([Author_409] of Autor
	 (idAutor "409")
	 (nombreAutor "William Styron")
	 (autoresSimilares
	     [Author_678]
	     [Author_597]
	     [Author_780]
	     [Author_589]
	     [Author_954]
	     [Author_1102]
	     [Author192])
	 (sexo male))

	([Author_410] of Autor
	 (idAutor "410")
	 (nombreAutor "Daniel Defoe")
	 (autoresSimilares
	     [Author_1104]
	     [Author719])
	 (sexo male))

	([Author_411] of Autor
	 (idAutor "411")
	 (nombreAutor "Jean Craighead George")
	 (autoresSimilares
	     [Author_336]
	     [Author_746]
	     [Author_950]
	     [Author_22]
	     [Author_643]
	     [Author_47]
	     [Author_102]
	     [Author616])
	 (sexo female))

	([Author_412] of Autor
	 (idAutor "412")
	 (nombreAutor "Scott ODell")
	 (autoresSimilares
	     [Author_650]
	     [Author_1003]
	     [Author_1091]
	     [Author_269]
	     [Author_1100]
	     [Author_857]
	     [Author_971]
	     [Author518])
	 (sexo male))

	([Author_413] of Autor
	 (idAutor "413")
	 (nombreAutor "Olivia Cunning")
	 (autoresSimilares
	     [Author_938]
	     [Author_262]
	     [Author_414]
	     [Author_893]
	     [Author_205]
	     [Author_851]
	     [Author_808]
	     [Author913])
	 (sexo female))

	([Author_414] of Autor
	 (idAutor "414")
	 (nombreAutor "Lauren Dane")
	 (autoresSimilares
	     [Author_917]
	     [Author_325]
	     [Author_353]
	     [Author_298]
	     [Author_1089]
	     [Author_522]
	     [Author_508]
	     [Author_736]
	     [Author_104]
	     [Author_361]
	     [Author_684]
	     [Author_41]
	     [Author_211]
	     [Author_44]
	     [Author_276]
	     [Author_268]
	     [Author_215]
	     [Author317])
	 (sexo female))

	([Author_415] of Autor
	 (idAutor "415")
	 (nombreAutor "Lorelei James")
	 (autoresSimilares
	     [Author_898]
	     [Author272])
	 (sexo male))

	([Author_416] of Autor
	 (idAutor "416")
	 (nombreAutor "William H Armstrong")
	 (autoresSimilares
	     [Author_1035]
	     [Author_662]
	     [Author_41]
	     [Author_92]
	     [Author_803]
	     [Author_47]
	     [Author_452]
	     [Author_612]
	     [Author_203]
	     [Author_1060]
	     [Author_940]
	     [Author_1067]
	     [Author263])
	 (sexo male))

	([Author_417] of Autor
	 (idAutor "417")
	 (nombreAutor "Walter Farley")
	 (autoresSimilares
	     [Author_147]
	     [Author_445]
	     [Author_472]
	     [Author_677]
	     [Author_133]
	     [Author_428]
	     [Author_402]
	     [Author_593]
	     [Author_473]
	     [Author_291]
	     [Author378])
	 (sexo male))

	([Author_418] of Autor
	 (idAutor "418")
	 (nombreAutor "Marguerite Henry")
	 (autoresSimilares
	     [Author_540]
	     [Author_1089]
	     [Author_1107]
	     [Author_983]
	     [Author_107]
	     [Author_1071]
	     [Author_926]
	     [Author_1017]
	     [Author_380]
	     [Author555])
	 (sexo female))

	([Author_419] of Autor
	 (idAutor "419")
	 (nombreAutor "Dick King-Smith")
	 (autoresSimilares
	     [Author_460]
	     [Author_734]
	     [Author_139]
	     [Author_766]
	     [Author_146]
	     [Author_476]
	     [Author_1053]
	     [Author_1]
	     [Author_53]
	     [Author_838]
	     [Author_543]
	     [Author_135]
	     [Author_1064]
	     [Author_638]
	     [Author_1101]
	     [Author712])
	 (sexo male))

	([Author_420] of Autor
	 (idAutor "420")
	 (nombreAutor "John Reynolds Gardiner")
	 (autoresSimilares
	     [Author_438]
	     [Author_479]
	     [Author_418]
	     [Author_289]
	     [Author_614]
	     [Author_432]
	     [Author_807]
	     [Author_730]
	     [Author_545]
	     [Author_838]
	     [Author_231]
	     [Author_428]
	     [Author_745]
	     [Author_560]
	     [Author_177]
	     [Author_595]
	     [Author527])
	 (sexo male))

	([Author_421] of Autor
	 (idAutor "421")
	 (nombreAutor "Rudyard Kipling")
	 (autoresSimilares
	     [Author_36]
	     [Author_259]
	     [Author_849]
	     [Author_140]
	     [Author_630]
	     [Author_1052]
	     [Author_660]
	     [Author_480]
	     [Author_466]
	     [Author_44]
	     [Author_972]
	     [Author_494]
	     [Author_872]
	     [Author_800]
	     [Author_1071]
	     [Author_832]
	     [Author974])
	 (sexo male))

	([Author_422] of Autor
	 (idAutor "422")
	 (nombreAutor "W Bruce Cameron")
	 (autoresSimilares
	     [Author_367]
	     [Author_725]
	     [Author_452]
	     [Author_67]
	     [Author_130]
	     [Author_833]
	     [Author_709]
	     [Author_633]
	     [Author_990]
	     [Author_391]
	     [Author_863]
	     [Author294])
	 (sexo female))

	([Author_423] of Autor
	 (idAutor "423")
	 (nombreAutor "Marjorie Kinnan Rawlings")
	 (autoresSimilares
	     [Author_413]
	     [Author_354]
	     [Author_867]
	     [Author_188]
	     [Author_1085]
	     [Author_1054]
	     [Author_1075]
	     [Author_221]
	     [Author70])
	 (sexo male))

	([Author_424] of Autor
	 (idAutor "424")
	 (nombreAutor "Tad Williams")
	 (autoresSimilares
	     [Author_280]
	     [Author_598]
	     [Author_811]
	     [Author_491]
	     [Author_994]
	     [Author_425]
	     [Author_348]
	     [Author_204]
	     [Author_866]
	     [Author610])
	 (sexo male))

	([Author_425] of Autor
	 (idAutor "425")
	 (nombreAutor "Phyllis Reynolds Naylor")
	 (autoresSimilares
	     [Author_218]
	     [Author_208]
	     [Author_592]
	     [Author_296]
	     [Author_1072]
	     [Author_970]
	     [Author933])
	 (sexo female))

	([Author_426] of Autor
	 (idAutor "426")
	 (nombreAutor "Fred Gipson")
	 (autoresSimilares
	     [Author_803]
	     [Author_707]
	     [Author_463]
	     [Author_896]
	     [Author117])
	 (sexo male))

	([Author_427] of Autor
	 (idAutor "427")
	 (nombreAutor "Kate DiCamillo")
	 (autoresSimilares
	     [Author_956]
	     [Author_293]
	     [Author_193]
	     [Author_1004]
	     [Author_172]
	     [Author_1036]
	     [Author_422]
	     [Author_985]
	     [Author_984]
	     [Author_657]
	     [Author_30]
	     [Author_815]
	     [Author_379]
	     [Author_591]
	     [Author_269]
	     [Author683])
	 (sexo female))

	([Author_428] of Autor
	 (idAutor "428")
	 (nombreAutor "Sheila Burnford")
	 (autoresSimilares
	     [Author_605]
	     [Author_647]
	     [Author_507]
	     [Author_623]
	     [Author_807]
	     [Author_387]
	     [Author_367]
	     [Author_693]
	     [Author_444]
	     [Author_389]
	     [Author_163]
	     [Author_543]
	     [Author_116]
	     [Author_867]
	     [Author_1099]
	     [Author_101]
	     [Author_293]
	     [Author533])
	 (sexo female))

	([Author_429] of Autor
	 (idAutor "429")
	 (nombreAutor "Kenneth Grahame")
	 (autoresSimilares
	     [Author_499]
	     [Author_20]
	     [Author_355]
	     [Author_877]
	     [Author_293]
	     [Author_660]
	     [Author_488]
	     [Author_1067]
	     [Author_1088]
	     [Author_789]
	     [Author_420]
	     [Author_1022]
	     [Author262])
	 (sexo male))

	([Author_430] of Autor
	 (idAutor "430")
	 (nombreAutor "Wilson Rawls")
	 (autoresSimilares
	     [Author_758]
	     [Author_873]
	     [Author662])
	 (sexo male))

	([Author_431] of Autor
	 (idAutor "431")
	 (nombreAutor "Andrzej Sapkowski")
	 (autoresSimilares
	     [Author_867]
	     [Author_497]
	     [Author_767]
	     [Author_104]
	     [Author_356]
	     [Author641])
	 (sexo male))

	([Author_432] of Autor
	 (idAutor "432")
	 (nombreAutor "LE Modesitt Jr")
	 (autoresSimilares
	     [Author_706]
	     [Author148])
	 (sexo male))

	([Author_433] of Autor
	 (idAutor "433")
	 (nombreAutor "Michael   Kramer")
	 (autoresSimilares
	     [Author_460]
	     [Author620])
	 (sexo male))

	([Author_434] of Autor
	 (idAutor "434")
	 (nombreAutor "Marilynne Robinson")
	 (autoresSimilares
	     [Author_1030]
	     [Author_729]
	     [Author_674]
	     [Author_198]
	     [Author_955]
	     [Author_469]
	     [Author_73]
	     [Author_1010]
	     [Author_1105]
	     [Author728])
	 (sexo male))

	([Author_435] of Autor
	 (idAutor "435")
	 (nombreAutor "Philip Jos Farmer")
	 (autoresSimilares
	     [Author_534]
	     [Author_905]
	     [Author_622]
	     [Author_891]
	     [Author_231]
	     [Author_241]
	     [Author_515]
	     [Author489])
	 (sexo male))

	([Author_436] of Autor
	 (idAutor "436")
	 (nombreAutor "Gene Wolfe")
	 (autoresSimilares
	     [Author_951]
	     [Author_116]
	     [Author_969]
	     [Author_651]
	     [Author_962]
	     [Author_199]
	     [Author_175]
	     [Author_829]
	     [Author_1020]
	     [Author_610]
	     [Author_70]
	     [Author_768]
	     [Author_894]
	     [Author_354]
	     [Author_267]
	     [Author_375]
	     [Author_270]
	     [Author_608]
	     [Author_250]
	     [Author144])
	 (sexo male))

	([Author_437] of Autor
	 (idAutor "437")
	 (nombreAutor "Lois McMaster Bujold")
	 (autoresSimilares
	     [Author_112]
	     [Author_118]
	     [Author_23]
	     [Author_748]
	     [Author_644]
	     [Author_568]
	     [Author401])
	 (sexo female))

	([Author_438] of Autor
	 (idAutor "438")
	 (nombreAutor "Richard K Morgan")
	 (autoresSimilares
	     [Author_730]
	     [Author924])
	 (sexo male))

	([Author_439] of Autor
	 (idAutor "439")
	 (nombreAutor "Iain M Banks")
	 (autoresSimilares
	     [Author_797]
	     [Author_1072]
	     [Author_155]
	     [Author_693]
	     [Author_26]
	     [Author_990]
	     [Author_467]
	     [Author_677]
	     [Author_597]
	     [Author111])
	 (sexo male))

	([Author_440] of Autor
	 (idAutor "440")
	 (nombreAutor "Frederik Pohl")
	 (autoresSimilares
	     [Author_193]
	     [Author_813]
	     [Author_245]
	     [Author_775]
	     [Author_830]
	     [Author_843]
	     [Author_121]
	     [Author_886]
	     [Author_345]
	     [Author57])
	 (sexo male))

	([Author_441] of Autor
	 (idAutor "441")
	 (nombreAutor "Connie Willis")
	 (autoresSimilares
	     [Author_315]
	     [Author_114]
	     [Author_921]
	     [Author_660]
	     [Author_4]
	     [Author_78]
	     [Author795])
	 (sexo female))

	([Author_442] of Autor
	 (idAutor "442")
	 (nombreAutor "Edwin A Abbott")
	 (autoresSimilares
	     [Author_643]
	     [Author_494]
	     [Author_317]
	     [Author_235]
	     [Author_692]
	     [Author_991]
	     [Author_163]
	     [Author_891]
	     [Author_730]
	     [Author_80]
	     [Author_566]
	     [Author_917]
	     [Author_486]
	     [Author140])
	 (sexo male))

	([Author_443] of Autor
	 (idAutor "443")
	 (nombreAutor "Vernor Vinge")
	 (autoresSimilares
	     [Author_625]
	     [Author_674]
	     [Author_697]
	     [Author_995]
	     [Author_732]
	     [Author_372]
	     [Author240])
	 (sexo male))

	([Author_444] of Autor
	 (idAutor "444")
	 (nombreAutor "Kim Stanley Robinson")
	 (autoresSimilares
	     [Author_184]
	     [Author_811]
	     [Author_954]
	     [Author_447]
	     [Author_394]
	     [Author_72]
	     [Author387])
	 (sexo male))

	([Author_445] of Autor
	 (idAutor "445")
	 (nombreAutor "Stanisaw Lem")
	 (autoresSimilares
	     [Author_974]
	     [Author228])
	 (sexo male))

	([Author_446] of Autor
	 (idAutor "446")
	 (nombreAutor "Jules Verne")
	 (autoresSimilares
	     [Author_538]
	     [Author_1075]
	     [Author_652]
	     [Author_169]
	     [Author_569]
	     [Author_308]
	     [Author_681]
	     [Author_1064]
	     [Author_878]
	     [Author_947]
	     [Author_521]
	     [Author_1010]
	     [Author242])
	 (sexo male))

	([Author_447] of Autor
	 (idAutor "447")
	 (nombreAutor "Alfred Bester")
	 (autoresSimilares
	     [Author_369]
	     [Author_1080]
	     [Author_414]
	     [Author_815]
	     [Author_216]
	     [Author_28]
	     [Author_606]
	     [Author535])
	 (sexo male))

	([Author_448] of Autor
	 (idAutor "448")
	 (nombreAutor "Mary Doria Russell")
	 (autoresSimilares
	     [Author_894]
	     [Author_584]
	     [Author_993]
	     [Author_933]
	     [Author_1081]
	     [Author_14]
	     [Author_577]
	     [Author_1102]
	     [Author_95]
	     [Author_141]
	     [Author_485]
	     [Author270])
	 (sexo female))

	([Author_449] of Autor
	 (idAutor "449")
	 (nombreAutor "Carl Sagan")
	 (autoresSimilares
	     [Author_434]
	     [Author_983]
	     [Author_149]
	     [Author_407]
	     [Author_1056]
	     [Author_1065]
	     [Author_15]
	     [Author_858]
	     [Author_514]
	     [Author_881]
	     [Author461])
	 (sexo male))

	([Author_450] of Autor
	 (idAutor "450")
	 (nombreAutor "John Scalzi")
	 (autoresSimilares
	     [Author_755]
	     [Author_325]
	     [Author_555]
	     [Author_245]
	     [Author_581]
	     [Author_897]
	     [Author_192]
	     [Author_1051]
	     [Author_203]
	     [Author_296]
	     [Author_773]
	     [Author_5]
	     [Author_460]
	     [Author_600]
	     [Author_1033]
	     [Author_609]
	     [Author1018])
	 (sexo male))

	([Author_451] of Autor
	 (idAutor "451")
	 (nombreAutor "Misty Mount")
	 (autoresSimilares
	     [Author_593]
	     [Author_521]
	     [Author_100]
	     [Author_430]
	     [Author_177]
	     [Author_927]
	     [Author_55]
	     [Author268])
	 (sexo female))

	([Author_452] of Autor
	 (idAutor "452")
	 (nombreAutor "Diamante Lavendar")
	 (autoresSimilares
	     [Author_515]
	     [Author_875]
	     [Author1071])
	 (sexo male))

	([Author_453] of Autor
	 (idAutor "453")
	 (nombreAutor "Robert Evert")
	 (autoresSimilares
	     [Author_851]
	     [Author_969]
	     [Author_376]
	     [Author_971]
	     [Author_491]
	     [Author527])
	 (sexo male))

	([Author_454] of Autor
	 (idAutor "454")
	 (nombreAutor "Diana   Forbes")
	 (autoresSimilares
	     [Author_208]
	     [Author_443]
	     [Author_290]
	     [Author_204]
	     [Author_503]
	     [Author_344]
	     [Author_760]
	     [Author_971]
	     [Author50])
	 (sexo female))

	([Author_455] of Autor
	 (idAutor "455")
	 (nombreAutor "NK Jemisin")
	 (autoresSimilares
	     [Author_815]
	     [Author_1004]
	     [Author_233]
	     [Author_574]
	     [Author_196]
	     [Author_272]
	     [Author_213]
	     [Author_1064]
	     [Author_257]
	     [Author_1107]
	     [Author_812]
	     [Author_915]
	     [Author_166]
	     [Author_965]
	     [Author_228]
	     [Author_63]
	     [Author475])
	 (sexo male))

	([Author_456] of Autor
	 (idAutor "456")
	 (nombreAutor "Francisco X Stork")
	 (autoresSimilares
	     [Author_635]
	     [Author_51]
	     [Author_111]
	     [Author705])
	 (sexo male))

	([Author_457] of Autor
	 (idAutor "457")
	 (nombreAutor "Samantha Durante")
	 (autoresSimilares
	     [Author_608]
	     [Author_846]
	     [Author_551]
	     [Author_657]
	     [Author_735]
	     [Author_280]
	     [Author_768]
	     [Author_904]
	     [Author_811]
	     [Author_649]
	     [Author_215]
	     [Author_111]
	     [Author_437]
	     [Author_45]
	     [Author_305]
	     [Author_110]
	     [Author_479]
	     [Author_176]
	     [Author_632]
	     [Author910])
	 (sexo female))

	([Author_458] of Autor
	 (idAutor "458")
	 (nombreAutor "Lindsay Buroker")
	 (autoresSimilares
	     [Author_762]
	     [Author_732]
	     [Author_330]
	     [Author88])
	 (sexo male))

	([Author_459] of Autor
	 (idAutor "459")
	 (nombreAutor "Anne Osterlund")
	 (autoresSimilares
	     [Author_415]
	     [Author_804]
	     [Author27])
	 (sexo female))

	([Author_460] of Autor
	 (idAutor "460")
	 (nombreAutor "Julianna Baggott")
	 (autoresSimilares
	     [Author_142]
	     [Author_634]
	     [Author_562]
	     [Author_479]
	     [Author_521]
	     [Author_611]
	     [Author491])
	 (sexo female))

	([Author_461] of Autor
	 (idAutor "461")
	 (nombreAutor "Mercedes Lackey")
	 (autoresSimilares
	     [Author_806]
	     [Author853])
	 (sexo female))

	([Author_462] of Autor
	 (idAutor "462")
	 (nombreAutor "Emma McLaughlin")
	 (autoresSimilares
	     [Author_467]
	     [Author_142]
	     [Author_147]
	     [Author_935]
	     [Author_390]
	     [Author_208]
	     [Author_394]
	     [Author_366]
	     [Author_1063]
	     [Author_317]
	     [Author_741]
	     [Author_383]
	     [Author_926]
	     [Author21])
	 (sexo male))

	([Author_463] of Autor
	 (idAutor "463")
	 (nombreAutor "Andre Dubus III")
	 (autoresSimilares
	     [Author_56]
	     [Author_996]
	     [Author_482]
	     [Author_495]
	     [Author_760]
	     [Author_718]
	     [Author_305]
	     [Author_411]
	     [Author_820]
	     [Author_4]
	     [Author_496]
	     [Author_331]
	     [Author_1102]
	     [Author_421]
	     [Author_575]
	     [Author_906]
	     [Author_694]
	     [Author889])
	 (sexo male))

	([Author_464] of Autor
	 (idAutor "464")
	 (nombreAutor "Erich Segal")
	 (autoresSimilares
	     [Author_350]
	     [Author_84]
	     [Author_480]
	     [Author_990]
	     [Author_541]
	     [Author_34]
	     [Author_597]
	     [Author_771]
	     [Author_93]
	     [Author_141]
	     [Author85])
	 (sexo male))

	([Author_465] of Autor
	 (idAutor "465")
	 (nombreAutor "Anita Shreve")
	 (autoresSimilares
	     [Author_911]
	     [Author_1009]
	     [Author_353]
	     [Author_509]
	     [Author_997]
	     [Author_564]
	     [Author_316]
	     [Author_989]
	     [Author_973]
	     [Author_534]
	     [Author_80]
	     [Author_892]
	     [Author_280]
	     [Author388])
	 (sexo female))

	([Author_466] of Autor
	 (idAutor "466")
	 (nombreAutor "Annie Proulx")
	 (autoresSimilares
	     [Author_562]
	     [Author_1000]
	     [Author_10]
	     [Author_534]
	     [Author_1058]
	     [Author_262]
	     [Author_989]
	     [Author_859]
	     [Author_169]
	     [Author_620]
	     [Author463])
	 (sexo female))

	([Author_467] of Autor
	 (idAutor "467")
	 (nombreAutor "Winston Groom")
	 (autoresSimilares
	     [Author_678]
	     [Author_791]
	     [Author_550]
	     [Author_629]
	     [Author_923]
	     [Author_169]
	     [Author_175]
	     [Author_962]
	     [Author_293]
	     [Author_333]
	     [Author_137]
	     [Author_99]
	     [Author_872]
	     [Author_280]
	     [Author97])
	 (sexo male))

	([Author_468] of Autor
	 (idAutor "468")
	 (nombreAutor "Gregory Maguire")
	 (autoresSimilares
	     [Author_223]
	     [Author_860]
	     [Author_603]
	     [Author_484]
	     [Author_607]
	     [Author_409]
	     [Author_457]
	     [Author_1022]
	     [Author_138]
	     [Author_1053]
	     [Author_1072]
	     [Author_837]
	     [Author_566]
	     [Author_273]
	     [Author1080])
	 (sexo male))

	([Author_469] of Autor
	 (idAutor "469")
	 (nombreAutor "Sandra Cisneros")
	 (autoresSimilares
	     [Author_824]
	     [Author_113]
	     [Author_779]
	     [Author_839]
	     [Author_813]
	     [Author_1095]
	     [Author_1010]
	     [Author_403]
	     [Author_921]
	     [Author_598]
	     [Author_531]
	     [Author_730]
	     [Author842])
	 (sexo female))

	([Author_470] of Autor
	 (idAutor "470")
	 (nombreAutor "Stephen Crane")
	 (autoresSimilares
	     [Author_211]
	     [Author_1036]
	     [Author_598]
	     [Author_627]
	     [Author_198]
	     [Author_637]
	     [Author_57]
	     [Author_1014]
	     [Author_853]
	     [Author_365]
	     [Author_618]
	     [Author_235]
	     [Author_326]
	     [Author_615]
	     [Author_943]
	     [Author15])
	 (sexo male))

	([Author_471] of Autor
	 (idAutor "471")
	 (nombreAutor "Candace Bushnell")
	 (autoresSimilares
	     [Author_592]
	     [Author_697]
	     [Author_380]
	     [Author566])
	 (sexo male))

	([Author_472] of Autor
	 (idAutor "472")
	 (nombreAutor "Virginia Woolf")
	 (autoresSimilares
	     [Author_148]
	     [Author_690]
	     [Author_955]
	     [Author_944]
	     [Author_42]
	     [Author_961]
	     [Author_52]
	     [Author_21]
	     [Author_291]
	     [Author_312]
	     [Author384])
	 (sexo female))

	([Author_473] of Autor
	 (idAutor "473")
	 (nombreAutor "James Joyce")
	 (autoresSimilares
	     [Author64])
	 (sexo male))

	([Author_474] of Autor
	 (idAutor "474")
	 (nombreAutor "Tim OBrien")
	 (autoresSimilares
	     [Author_548]
	     [Author_109]
	     [Author_165]
	     [Author_674]
	     [Author_1039]
	     [Author_812]
	     [Author_365]
	     [Author_813]
	     [Author_141]
	     [Author1100])
	 (sexo male))

	([Author_475] of Autor
	 (idAutor "475")
	 (nombreAutor "William Faulkner")
	 (autoresSimilares
	     [Author274])
	 (sexo male))

	([Author_476] of Autor
	 (idAutor "476")
	 (nombreAutor "John Kennedy Toole")
	 (autoresSimilares
	     [Author_403]
	     [Author_555]
	     [Author_439]
	     [Author_875]
	     [Author_630]
	     [Author_106]
	     [Author_430]
	     [Author_178]
	     [Author144])
	 (sexo male))

	([Author_477] of Autor
	 (idAutor "477")
	 (nombreAutor "Pearl S Buck")
	 (autoresSimilares
	     [Author_1063]
	     [Author_729]
	     [Author_1075]
	     [Author_30]
	     [Author_381]
	     [Author_541]
	     [Author1103])
	 (sexo female))

	([Author_478] of Autor
	 (idAutor "478")
	 (nombreAutor "Jack Kerouac")
	 (autoresSimilares
	     [Author_563]
	     [Author_116]
	     [Author_246]
	     [Author_1073]
	     [Author_943]
	     [Author_798]
	     [Author1072])
	 (sexo male))

	([Author_479] of Autor
	 (idAutor "479")
	 (nombreAutor "Steven Brust")
	 (autoresSimilares
	     [Author_807]
	     [Author_1102]
	     [Author_586]
	     [Author_708]
	     [Author_631]
	     [Author276])
	 (sexo male))

	([Author_480] of Autor
	 (idAutor "480")
	 (nombreAutor "Joe Abercrombie")
	 (autoresSimilares
	     [Author_993]
	     [Author_217]
	     [Author_908]
	     [Author_805]
	     [Author_819]
	     [Author_632]
	     [Author_774]
	     [Author_410]
	     [Author_467]
	     [Author_888]
	     [Author_16]
	     [Author_215]
	     [Author_606]
	     [Author_200]
	     [Author_49]
	     [Author_567]
	     [Author_832]
	     [Author_1006]
	     [Author_379]
	     [Author2])
	 (sexo male))

	([Author_481] of Autor
	 (idAutor "481")
	 (nombreAutor "Michael J Sullivan")
	 (autoresSimilares
	     [Author_826]
	     [Author_35]
	     [Author_834]
	     [Author_161]
	     [Author_838]
	     [Author_365]
	     [Author_706]
	     [Author_407]
	     [Author40])
	 (sexo male))

	([Author_482] of Autor
	 (idAutor "482")
	 (nombreAutor "Elizabeth Haydon")
	 (autoresSimilares
	     [Author_507]
	     [Author_1072]
	     [Author_602]
	     [Author_1073]
	     [Author_744]
	     [Author_912]
	     [Author_963]
	     [Author_679]
	     [Author_733]
	     [Author_178]
	     [Author_205]
	     [Author_775]
	     [Author_1047]
	     [Author_270]
	     [Author_576]
	     [Author_868]
	     [Author599])
	 (sexo male))

	([Author_483] of Autor
	 (idAutor "483")
	 (nombreAutor "Raymond E Feist")
	 (autoresSimilares
	     [Author_836]
	     [Author_264]
	     [Author_1]
	     [Author_136]
	     [Author_223]
	     [Author_795]
	     [Author_826]
	     [Author_844]
	     [Author_983]
	     [Author_576]
	     [Author_346]
	     [Author_773]
	     [Author928])
	 (sexo male))

	([Author_484] of Autor
	 (idAutor "484")
	 (nombreAutor "Margaret Weis")
	 (autoresSimilares
	     [Author_243]
	     [Author746])
	 (sexo male))

	([Author_485] of Autor
	 (idAutor "485")
	 (nombreAutor "Mark  Lawrence")
	 (autoresSimilares
	     [Author_192]
	     [Author_828]
	     [Author_160]
	     [Author1043])
	 (sexo male))

	([Author_486] of Autor
	 (idAutor "486")
	 (nombreAutor "Lian Hearn")
	 (autoresSimilares
	     [Author_822]
	     [Author_323]
	     [Author_505]
	     [Author_793]
	     [Author_154]
	     [Author_200]
	     [Author_536]
	     [Author_221]
	     [Author_647]
	     [Author_630]
	     [Author_993]
	     [Author_834]
	     [Author_913]
	     [Author_7]
	     [Author1059])
	 (sexo male))

	([Author_487] of Autor
	 (idAutor "487")
	 (nombreAutor "Piers Anthony")
	 (autoresSimilares
	     [Author_640]
	     [Author_152]
	     [Author_297]
	     [Author_87]
	     [Author_722]
	     [Author_1044]
	     [Author_465]
	     [Author_327]
	     [Author_520]
	     [Author_77]
	     [Author_494]
	     [Author_982]
	     [Author_1089]
	     [Author_207]
	     [Author_993]
	     [Author_166]
	     [Author_414]
	     [Author_651]
	     [Author_718]
	     [Author192])
	 (sexo male))

	([Author_488] of Autor
	 (idAutor "488")
	 (nombreAutor "Elizabeth Moon")
	 (autoresSimilares
	     [Author_774]
	     [Author_602]
	     [Author_871]
	     [Author_453]
	     [Author_994]
	     [Author_45]
	     [Author_70]
	     [Author_698]
	     [Author912])
	 (sexo male))

	([Author_489] of Autor
	 (idAutor "489")
	 (nombreAutor "Michael Moorcock")
	 (autoresSimilares
	     [Author_96]
	     [Author_269]
	     [Author_831]
	     [Author_1024]
	     [Author_869]
	     [Author_60]
	     [Author_492]
	     [Author_691]
	     [Author_683]
	     [Author_733]
	     [Author_308]
	     [Author_864]
	     [Author_973]
	     [Author1096])
	 (sexo male))

	([Author_490] of Autor
	 (idAutor "490")
	 (nombreAutor "Glen Cook")
	 (autoresSimilares
	     [Author_31]
	     [Author_410]
	     [Author_1023]
	     [Author_912]
	     [Author_217]
	     [Author_4]
	     [Author_484]
	     [Author_116]
	     [Author_170]
	     [Author_601]
	     [Author_432]
	     [Author_1033]
	     [Author_291]
	     [Author_957]
	     [Author_609]
	     [Author_1009]
	     [Author_151]
	     [Author963])
	 (sexo male))

	([Author_491] of Autor
	 (idAutor "491")
	 (nombreAutor "Robin Hobb")
	 (autoresSimilares
	     [Author_183]
	     [Author_458]
	     [Author_5]
	     [Author_842]
	     [Author_570]
	     [Author_200]
	     [Author450])
	 (sexo female))

	([Author_492] of Autor
	 (idAutor "492")
	 (nombreAutor "Stephen R Donaldson")
	 (autoresSimilares
	     [Author_506]
	     [Author_813]
	     [Author_965]
	     [Author_57]
	     [Author_170]
	     [Author_1089]
	     [Author_395]
	     [Author_900]
	     [Author_689]
	     [Author_112]
	     [Author_991]
	     [Author_523]
	     [Author_13]
	     [Author_199]
	     [Author_686]
	     [Author677])
	 (sexo male))

	([Author_493] of Autor
	 (idAutor "493")
	 (nombreAutor "Peter V Brett")
	 (autoresSimilares
	     [Author_504]
	     [Author_817]
	     [Author_201]
	     [Author_278]
	     [Author_920]
	     [Author_769]
	     [Author_1040]
	     [Author_134]
	     [Author_57]
	     [Author_403]
	     [Author_1007]
	     [Author_498]
	     [Author25])
	 (sexo male))

	([Author_494] of Autor
	 (idAutor "494")
	 (nombreAutor "Steven Erikson")
	 (autoresSimilares
	     [Author_840]
	     [Author_698]
	     [Author_200]
	     [Author872])
	 (sexo male))

	([Author_495] of Autor
	 (idAutor "495")
	 (nombreAutor "Scott Lynch")
	 (autoresSimilares
	     [Author_392]
	     [Author_117]
	     [Author_315]
	     [Author_585]
	     [Author919])
	 (sexo male))

	([Author_496] of Autor
	 (idAutor "496")
	 (nombreAutor "Raine Miller")
	 (autoresSimilares
	     [Author_379]
	     [Author_491]
	     [Author_314]
	     [Author945])
	 (sexo female))

	([Author_497] of Autor
	 (idAutor "497")
	 (nombreAutor "Frank Herbert")
	 (autoresSimilares
	     [Author_182]
	     [Author_945]
	     [Author_338]
	     [Author_917]
	     [Author_549]
	     [Author_572]
	     [Author_441]
	     [Author_319]
	     [Author_753]
	     [Author_369]
	     [Author_1019]
	     [Author_408]
	     [Author_655]
	     [Author_175]
	     [Author0])
	 (sexo male))

	([Author_498] of Autor
	 (idAutor "498")
	 (nombreAutor "Maeve Binchy")
	 (autoresSimilares
	     [Author_668]
	     [Author_72]
	     [Author_878]
	     [Author_241]
	     [Author_373]
	     [Author_821]
	     [Author_267]
	     [Author_1104]
	     [Author_730]
	     [Author_590]
	     [Author_1033]
	     [Author_949]
	     [Author_852]
	     [Author_18]
	     [Author_40]
	     [Author_887]
	     [Author_16]
	     [Author508])
	 (sexo female))

	([Author_499] of Autor
	 (idAutor "499")
	 (nombreAutor "Jim Thompson")
	 (autoresSimilares
	     [Author_1022]
	     [Author_898]
	     [Author_827]
	     [Author_314]
	     [Author_1016]
	     [Author_767]
	     [Author_889]
	     [Author_328]
	     [Author_1057]
	     [Author_1071]
	     [Author83])
	 (sexo male))

	([Author_500] of Autor
	 (idAutor "500")
	 (nombreAutor "Katharine Kerr")
	 (autoresSimilares
	     [Author_238]
	     [Author_545]
	     [Author_948]
	     [Author_231]
	     [Author_1004]
	     [Author_733]
	     [Author_1040]
	     [Author1106])
	 (sexo female))

	([Author_501] of Autor
	 (idAutor "501")
	 (nombreAutor "Irvine Welsh")
	 (autoresSimilares
	     [Author_834]
	     [Author_1001]
	     [Author_223]
	     [Author_871]
	     [Author_244]
	     [Author_425]
	     [Author_339]
	     [Author_171]
	     [Author_397]
	     [Author_1027]
	     [Author247])
	 (sexo male))

	([Author_502] of Autor
	 (idAutor "502")
	 (nombreAutor "W Somerset Maugham")
	 (autoresSimilares
	     [Author_542]
	     [Author_976]
	     [Author_942]
	     [Author_137]
	     [Author_543]
	     [Author_961]
	     [Author_841]
	     [Author_368]
	     [Author_929]
	     [Author307])
	 (sexo male))

	([Author_503] of Autor
	 (idAutor "503")
	 (nombreAutor "Michael Cunningham")
	 (autoresSimilares
	     [Author_322]
	     [Author_994]
	     [Author_948]
	     [Author_116]
	     [Author_549]
	     [Author83])
	 (sexo male))

	([Author_504] of Autor
	 (idAutor "504")
	 (nombreAutor "Christopher Priest")
	 (autoresSimilares
	     [Author_539]
	     [Author_1016]
	     [Author_1088]
	     [Author_213]
	     [Author_14]
	     [Author_98]
	     [Author_607]
	     [Author_602]
	     [Author_812]
	     [Author_273]
	     [Author_843]
	     [Author_575]
	     [Author_401]
	     [Author_913]
	     [Author_648]
	     [Author_526]
	     [Author_33]
	     [Author574])
	 (sexo male))

	([Author_505] of Autor
	 (idAutor "505")
	 (nombreAutor "Robert James Waller")
	 (autoresSimilares
	     [Author_706]
	     [Author_1091]
	     [Author_75]
	     [Author_286]
	     [Author_902]
	     [Author_17]
	     [Author_587]
	     [Author_830]
	     [Author_187]
	     [Author_1090]
	     [Author_421]
	     [Author_516]
	     [Author_393]
	     [Author_704]
	     [Author618])
	 (sexo male))

	([Author_506] of Autor
	 (idAutor "506")
	 (nombreAutor "Ian Fleming")
	 (autoresSimilares
	     [Author_116]
	     [Author_512]
	     [Author_855]
	     [Author629])
	 (sexo male))

	([Author_507] of Autor
	 (idAutor "507")
	 (nombreAutor "Karen Joy Fowler")
	 (autoresSimilares
	     [Author_356]
	     [Author_922]
	     [Author_446]
	     [Author_949]
	     [Author_886]
	     [Author_798]
	     [Author_860]
	     [Author_309]
	     [Author_714]
	     [Author_706]
	     [Author_888]
	     [Author_77]
	     [Author_240]
	     [Author_367]
	     [Author134])
	 (sexo male))

	([Author_508] of Autor
	 (idAutor "508")
	 (nombreAutor "Nick Hornby")
	 (autoresSimilares
	     [Author_139]
	     [Author_1096]
	     [Author562])
	 (sexo male))

	([Author_509] of Autor
	 (idAutor "509")
	 (nombreAutor "Gaston Leroux")
	 (autoresSimilares
	     [Author_359]
	     [Author_707]
	     [Author_515]
	     [Author_477]
	     [Author_1096]
	     [Author_605]
	     [Author_925]
	     [Author_751]
	     [Author_836]
	     [Author_358]
	     [Author_78]
	     [Author_628]
	     [Author_1105]
	     [Author_573]
	     [Author_201]
	     [Author_14]
	     [Author_1030]
	     [Author_176]
	     [Author_141]
	     [Author529])
	 (sexo male))

	([Author_510] of Autor
	 (idAutor "510")
	 (nombreAutor "James Fenimore Cooper")
	 (autoresSimilares
	     [Author_731]
	     [Author_538]
	     [Author_871]
	     [Author_342]
	     [Author_478]
	     [Author_781]
	     [Author_69]
	     [Author_296]
	     [Author_268]
	     [Author_352]
	     [Author_893]
	     [Author_933]
	     [Author_553]
	     [Author_477]
	     [Author_59]
	     [Author_785]
	     [Author747])
	 (sexo male))

	([Author_511] of Autor
	 (idAutor "511")
	 (nombreAutor "Thomas   Harris")
	 (autoresSimilares
	     [Author_1038]
	     [Author_595]
	     [Author_64]
	     [Author_402]
	     [Author_46]
	     [Author_975]
	     [Author_157]
	     [Author579])
	 (sexo male))

	([Author_512] of Autor
	 (idAutor "512")
	 (nombreAutor "Peter Benchley")
	 (autoresSimilares
	     [Author_1061]
	     [Author_288]
	     [Author_112]
	     [Author_587]
	     [Author632])
	 (sexo male))

	([Author_513] of Autor
	 (idAutor "513")
	 (nombreAutor "Jeff Lindsay")
	 (autoresSimilares
	     [Author_215]
	     [Author_933]
	     [Author_206]
	     [Author_904]
	     [Author_169]
	     [Author_903]
	     [Author_505]
	     [Author_863]
	     [Author_703]
	     [Author_1103]
	     [Author_859]
	     [Author_657]
	     [Author_908]
	     [Author_571]
	     [Author_201]
	     [Author_93]
	     [Author_17]
	     [Author_549]
	     [Author_304]
	     [Author632])
	 (sexo male))

	([Author_514] of Autor
	 (idAutor "514")
	 (nombreAutor "Robert E Howard")
	 (autoresSimilares
	     [Author_465]
	     [Author_679]
	     [Author_606]
	     [Author_616]
	     [Author_452]
	     [Author_975]
	     [Author_436]
	     [Author_43]
	     [Author_812]
	     [Author_354]
	     [Author_317]
	     [Author_270]
	     [Author_265]
	     [Author_591]
	     [Author_129]
	     [Author_325]
	     [Author_976]
	     [Author18])
	 (sexo male))

	([Author_515] of Autor
	 (idAutor "515")
	 (nombreAutor "David Gemmell")
	 (autoresSimilares
	     [Author_292]
	     [Author_569]
	     [Author_1063]
	     [Author_899]
	     [Author_80]
	     [Author_503]
	     [Author_289]
	     [Author_613]
	     [Author_740]
	     [Author593])
	 (sexo male))

	([Author_516] of Autor
	 (idAutor "516")
	 (nombreAutor "Janet B  Taylor")
	 (autoresSimilares
	     [Author_1040]
	     [Author_538]
	     [Author_547]
	     [Author267])
	 (sexo female))

	([Author_517] of Autor
	 (idAutor "517")
	 (nombreAutor "HM Ward")
	 (autoresSimilares
	     [Author_820]
	     [Author_266]
	     [Author_38]
	     [Author_273]
	     [Author_271]
	     [Author_858]
	     [Author_160]
	     [Author_201]
	     [Author954])
	 (sexo female))

	([Author_518] of Autor
	 (idAutor "518")
	 (nombreAutor "M Pierce")
	 (autoresSimilares
	     [Author_1065]
	     [Author_1007]
	     [Author_1092]
	     [Author_566]
	     [Author425])
	 (sexo male))

	([Author_519] of Autor
	 (idAutor "519")
	 (nombreAutor "Laura Wiess")
	 (autoresSimilares
	     [Author_794]
	     [Author_165]
	     [Author_974]
	     [Author_296]
	     [Author1076])
	 (sexo female))

	([Author_520] of Autor
	 (idAutor "520")
	 (nombreAutor "Carolyn Mackler")
	 (autoresSimilares
	     [Author_856]
	     [Author_1080]
	     [Author_974]
	     [Author_503]
	     [Author_790]
	     [Author_904]
	     [Author_1000]
	     [Author_627]
	     [Author_1106]
	     [Author_876]
	     [Author_237]
	     [Author_930]
	     [Author_886]
	     [Author_995]
	     [Author_303]
	     [Author_950]
	     [Author_59]
	     [Author217])
	 (sexo female))

	([Author_521] of Autor
	 (idAutor "521")
	 (nombreAutor "Natasha Friend")
	 (autoresSimilares
	     [Author261])
	 (sexo female))

	([Author_522] of Autor
	 (idAutor "522")
	 (nombreAutor "Elmore Leonard")
	 (autoresSimilares
	     [Author_593]
	     [Author802])
	 (sexo male))

	([Author_523] of Autor
	 (idAutor "523")
	 (nombreAutor "Mary Higgins Clark")
	 (autoresSimilares
	     [Author_101]
	     [Author_474]
	     [Author_774]
	     [Author_916]
	     [Author_339]
	     [Author_752]
	     [Author_961]
	     [Author_278]
	     [Author_779]
	     [Author_427]
	     [Author_550]
	     [Author671])
	 (sexo female))

	([Author_524] of Autor
	 (idAutor "524")
	 (nombreAutor "Dorothy L Sayers")
	 (autoresSimilares
	     [Author_595]
	     [Author_988]
	     [Author_50]
	     [Author_482]
	     [Author_594]
	     [Author_842]
	     [Author_265]
	     [Author_278]
	     [Author_158]
	     [Author_1029]
	     [Author_825]
	     [Author_764]
	     [Author_101]
	     [Author_1051]
	     [Author847])
	 (sexo female))

	([Author_525] of Autor
	 (idAutor "525")
	 (nombreAutor "Faye Kellerman")
	 (autoresSimilares
	     [Author_417]
	     [Author_169]
	     [Author_773]
	     [Author_941]
	     [Author699])
	 (sexo female))

	([Author_526] of Autor
	 (idAutor "526")
	 (nombreAutor "James M Cain")
	 (autoresSimilares
	     [Author_748]
	     [Author_750]
	     [Author_670]
	     [Author_74]
	     [Author_428]
	     [Author_469]
	     [Author836])
	 (sexo male))

	([Author_527] of Autor
	 (idAutor "527")
	 (nombreAutor "Donna Tartt")
	 (autoresSimilares
	     [Author_869]
	     [Author_528]
	     [Author_161]
	     [Author973])
	 (sexo female))

	([Author_528] of Autor
	 (idAutor "528")
	 (nombreAutor "John Sandford")
	 (autoresSimilares
	     [Author_729]
	     [Author_792]
	     [Author_109]
	     [Author_142]
	     [Author_505]
	     [Author89])
	 (sexo male))

	([Author_529] of Autor
	 (idAutor "529")
	 (nombreAutor "David Guterson")
	 (autoresSimilares
	     [Author_203]
	     [Author_582]
	     [Author_872]
	     [Author276])
	 (sexo male))

	([Author_530] of Autor
	 (idAutor "530")
	 (nombreAutor "Michael Connelly")
	 (autoresSimilares
	     [Author_1074]
	     [Author_623]
	     [Author_613]
	     [Author_622]
	     [Author_433]
	     [Author_621]
	     [Author_427]
	     [Author_457]
	     [Author_378]
	     [Author_862]
	     [Author_860]
	     [Author256])
	 (sexo male))

	([Author_531] of Autor
	 (idAutor "531")
	 (nombreAutor "Dashiell Hammett")
	 (autoresSimilares
	     [Author_662]
	     [Author_192]
	     [Author_726]
	     [Author_276]
	     [Author_967]
	     [Author_390]
	     [Author_417]
	     [Author_139]
	     [Author_602]
	     [Author_1027]
	     [Author_261]
	     [Author_508]
	     [Author_298]
	     [Author_722]
	     [Author_53]
	     [Author_705]
	     [Author_155]
	     [Author35])
	 (sexo male))

	([Author_532] of Autor
	 (idAutor "532")
	 (nombreAutor "Elizabeth  George")
	 (autoresSimilares
	     [Author_306]
	     [Author_989]
	     [Author_352]
	     [Author_568]
	     [Author_937]
	     [Author_498]
	     [Author_321]
	     [Author_626]
	     [Author_570]
	     [Author_1047]
	     [Author_754]
	     [Author_5]
	     [Author995])
	 (sexo female))

	([Author_533] of Autor
	 (idAutor "533")
	 (nombreAutor "Patricia Highsmith")
	 (autoresSimilares
	     [Author_1011]
	     [Author_917]
	     [Author_1078]
	     [Author_838]
	     [Author_836]
	     [Author_516]
	     [Author_842]
	     [Author_91]
	     [Author_152]
	     [Author_303]
	     [Author_230]
	     [Author_728]
	     [Author_970]
	     [Author_854]
	     [Author_895]
	     [Author_643]
	     [Author_1012]
	     [Author956])
	 (sexo female))

	([Author_534] of Autor
	 (idAutor "534")
	 (nombreAutor "Martin Cruz Smith")
	 (autoresSimilares
	     [Author_1066]
	     [Author_517]
	     [Author_239]
	     [Author_599]
	     [Author_820]
	     [Author_966]
	     [Author_297]
	     [Author_687]
	     [Author_1095]
	     [Author_843]
	     [Author_286]
	     [Author_54]
	     [Author_117]
	     [Author504])
	 (sexo male))

	([Author_535] of Autor
	 (idAutor "535")
	 (nombreAutor "Peter Heg")
	 (autoresSimilares
	     [Author_494]
	     [Author_912]
	     [Author_276]
	     [Author_339]
	     [Author_931]
	     [Author_58]
	     [Author_101]
	     [Author575])
	 (sexo male))

	([Author_536] of Autor
	 (idAutor "536")
	 (nombreAutor "John Grisham")
	 (autoresSimilares
	     [Author_453]
	     [Author_127]
	     [Author_37]
	     [Author_821]
	     [Author76])
	 (sexo male))

	([Author_537] of Autor
	 (idAutor "537")
	 (nombreAutor "Sue Grafton")
	 (autoresSimilares
	     [Author_932]
	     [Author_556]
	     [Author_33]
	     [Author_574]
	     [Author_484]
	     [Author_839]
	     [Author_5]
	     [Author_1039]
	     [Author_1094]
	     [Author_300]
	     [Author_142]
	     [Author_592]
	     [Author_336]
	     [Author_20]
	     [Author_127]
	     [Author_137]
	     [Author_919]
	     [Author_727]
	     [Author945])
	 (sexo female))

	([Author_538] of Autor
	 (idAutor "538")
	 (nombreAutor "Robert Louis Stevenson")
	 (autoresSimilares
	     [Author_843]
	     [Author318])
	 (sexo male))

	([Author_539] of Autor
	 (idAutor "539")
	 (nombreAutor "Scott Turow")
	 (autoresSimilares
	     [Author854])
	 (sexo male))

	([Author_540] of Autor
	 (idAutor "540")
	 (nombreAutor "Raymond Chandler")
	 (autoresSimilares
	     [Author_19]
	     [Author144])
	 (sexo male))

	([Author_541] of Autor
	 (idAutor "541")
	 (nombreAutor "Dennis Lehane")
	 (autoresSimilares
	     [Author_1096]
	     [Author_218]
	     [Author_913]
	     [Author_976]
	     [Author_651]
	     [Author_997]
	     [Author_784]
	     [Author_1041]
	     [Author_354]
	     [Author_288]
	     [Author427])
	 (sexo male))

	([Author_542] of Autor
	 (idAutor "542")
	 (nombreAutor "Mario Puzo")
	 (autoresSimilares
	     [Author_687]
	     [Author_1065]
	     [Author_973]
	     [Author_52]
	     [Author_970]
	     [Author_331]
	     [Author_642]
	     [Author_816]
	     [Author_783]
	     [Author_58]
	     [Author_987]
	     [Author_168]
	     [Author_817]
	     [Author_490]
	     [Author_216]
	     [Author_951]
	     [Author465])
	 (sexo male))

	([Author_543] of Autor
	 (idAutor "543")
	 (nombreAutor "Megan McCafferty")
	 (autoresSimilares
	     [Author_578]
	     [Author_974]
	     [Author_308]
	     [Author_469]
	     [Author_408]
	     [Author_651]
	     [Author_627]
	     [Author_739]
	     [Author_176]
	     [Author_616]
	     [Author_294]
	     [Author_532]
	     [Author_555]
	     [Author_849]
	     [Author_1100]
	     [Author_781]
	     [Author_626]
	     [Author_245]
	     [Author_192]
	     [Author1089])
	 (sexo male))

	([Author_544] of Autor
	 (idAutor "544")
	 (nombreAutor "RJ Palacio")
	 (autoresSimilares
	     [Author_659]
	     [Author_166]
	     [Author_690]
	     [Author_244]
	     [Author_364]
	     [Author_196]
	     [Author_711]
	     [Author_305]
	     [Author_225]
	     [Author_783]
	     [Author_87]
	     [Author_810]
	     [Author_432]
	     [Author_115]
	     [Author_353]
	     [Author_6]
	     [Author_15]
	     [Author619])
	 (sexo female))

	([Author_545] of Autor
	 (idAutor "545")
	 (nombreAutor "Ned Vizzini")
	 (autoresSimilares
	     [Author_900]
	     [Author_608]
	     [Author_842]
	     [Author_313]
	     [Author_771]
	     [Author_357]
	     [Author_43]
	     [Author_46]
	     [Author_464]
	     [Author_414]
	     [Author_248]
	     [Author_598]
	     [Author_1095]
	     [Author14])
	 (sexo male))

	([Author_546] of Autor
	 (idAutor "546")
	 (nombreAutor "Chad Harbach")
	 (autoresSimilares
	     [Author_746]
	     [Author_254]
	     [Author_869]
	     [Author_205]
	     [Author609])
	 (sexo male))

	([Author_547] of Autor
	 (idAutor "547")
	 (nombreAutor "Chimamanda Ngozi Adichie")
	 (autoresSimilares
	     [Author_554]
	     [Author_1040]
	     [Author_346]
	     [Author_205]
	     [Author_200]
	     [Author_251]
	     [Author_462]
	     [Author_187]
	     [Author_397]
	     [Author_74]
	     [Author_25]
	     [Author_760]
	     [Author_1083]
	     [Author_658]
	     [Author_258]
	     [Author_120]
	     [Author_885]
	     [Author529])
	 (sexo female))

	([Author_548] of Autor
	 (idAutor "548")
	 (nombreAutor "Adam Mansbach")
	 (autoresSimilares
	     [Author_304]
	     [Author_956]
	     [Author_257]
	     [Author_779]
	     [Author_149]
	     [Author_349]
	     [Author_131]
	     [Author487])
	 (sexo male))

	([Author_549] of Autor
	 (idAutor "549")
	 (nombreAutor "Julian Barnes")
	 (autoresSimilares
	     [Author_249]
	     [Author_957]
	     [Author_60]
	     [Author_596]
	     [Author_401]
	     [Author_515]
	     [Author_336]
	     [Author169])
	 (sexo male))

	([Author_550] of Autor
	 (idAutor "550")
	 (nombreAutor "SJ Watson")
	 (autoresSimilares
	     [Author_951]
	     [Author_843]
	     [Author_381]
	     [Author_121]
	     [Author_959]
	     [Author_1104]
	     [Author_144]
	     [Author_577]
	     [Author_20]
	     [Author_875]
	     [Author_778]
	     [Author_442]
	     [Author1047])
	 (sexo male))

	([Author_551] of Autor
	 (idAutor "551")
	 (nombreAutor "Jennifer Egan")
	 (autoresSimilares
	     [Author_234]
	     [Author_713]
	     [Author_42]
	     [Author_84]
	     [Author_1021]
	     [Author_1093]
	     [Author_570]
	     [Author_137]
	     [Author_547]
	     [Author_461]
	     [Author_185]
	     [Author_535]
	     [Author_92]
	     [Author_569]
	     [Author_826]
	     [Author_455]
	     [Author_633]
	     [Author960])
	 (sexo female))

	([Author_552] of Autor
	 (idAutor "552")
	 (nombreAutor "Fredrik Backman")
	 (autoresSimilares
	     [Author_865]
	     [Author_196]
	     [Author_338]
	     [Author_216]
	     [Author_1044]
	     [Author_999]
	     [Author744])
	 (sexo male))

	([Author_553] of Autor
	 (idAutor "553")
	 (nombreAutor "Robert Galbraith")
	 (autoresSimilares
	     [Author_1056]
	     [Author_645]
	     [Author_487]
	     [Author_478]
	     [Author976])
	 (sexo female))

	([Author_554] of Autor
	 (idAutor "554")
	 (nombreAutor "Graeme Simsion")
	 (autoresSimilares
	     [Author_267]
	     [Author_113]
	     [Author_373]
	     [Author_784]
	     [Author_695]
	     [Author_795]
	     [Author_939]
	     [Author_214]
	     [Author_718]
	     [Author_842]
	     [Author184])
	 (sexo male))

	([Author_555] of Autor
	 (idAutor "555")
	 (nombreAutor "Paula Hawkins")
	 (autoresSimilares
	     [Author_157]
	     [Author_682]
	     [Author_8]
	     [Author813])
	 (sexo male))

	([Author_556] of Autor
	 (idAutor "556")
	 (nombreAutor "Jonathan Swift")
	 (autoresSimilares
	     [Author_1041]
	     [Author_1005]
	     [Author_638]
	     [Author_306]
	     [Author_710]
	     [Author_949]
	     [Author_609]
	     [Author_810]
	     [Author_865]
	     [Author_561]
	     [Author_302]
	     [Author_958]
	     [Author_210]
	     [Author_1099]
	     [Author_508]
	     [Author_899]
	     [Author_467]
	     [Author_473]
	     [Author374])
	 (sexo male))

	([Author_557] of Autor
	 (idAutor "557")
	 (nombreAutor "DH Lawrence")
	 (autoresSimilares
	     [Author_372]
	     [Author_822]
	     [Author_216]
	     [Author_707]
	     [Author_979]
	     [Author_57]
	     [Author_252]
	     [Author_762]
	     [Author_153]
	     [Author_250]
	     [Author_678]
	     [Author_1054]
	     [Author79])
	 (sexo male))

	([Author_558] of Autor
	 (idAutor "558")
	 (nombreAutor "Marcel Proust")
	 (autoresSimilares
	     [Author_756]
	     [Author_430]
	     [Author_945]
	     [Author_180]
	     [Author_744]
	     [Author_897]
	     [Author_903]
	     [Author_215]
	     [Author816])
	 (sexo male))

	([Author_559] of Autor
	 (idAutor "559")
	 (nombreAutor "William Makepeace Thackeray")
	 (autoresSimilares
	     [Author_451]
	     [Author_727]
	     [Author_646]
	     [Author_293]
	     [Author_309]
	     [Author_342]
	     [Author_744]
	     [Author_485]
	     [Author_14]
	     [Author_604]
	     [Author_913]
	     [Author_693]
	     [Author_1009]
	     [Author_1029]
	     [Author_88]
	     [Author_310]
	     [Author_1035]
	     [Author_669]
	     [Author_75]
	     [Author955])
	 (sexo male))

	([Author_560] of Autor
	 (idAutor "560")
	 (nombreAutor "William S Burroughs")
	 (autoresSimilares
	     [Author_183]
	     [Author_992]
	     [Author_592]
	     [Author_711]
	     [Author_964]
	     [Author_159]
	     [Author_254]
	     [Author_882]
	     [Author91])
	 (sexo male))

	([Author_561] of Autor
	 (idAutor "561")
	 (nombreAutor "Jostein Gaarder")
	 (autoresSimilares
	     [Author_26]
	     [Author_506]
	     [Author_645]
	     [Author_660]
	     [Author_154]
	     [Author_0]
	     [Author_365]
	     [Author_124]
	     [Author_990]
	     [Author_767]
	     [Author_780]
	     [Author_822]
	     [Author_255]
	     [Author_99]
	     [Author_1024]
	     [Author_198]
	     [Author_432]
	     [Author805])
	 (sexo male))

	([Author_562] of Autor
	 (idAutor "562")
	 (nombreAutor "David Foster Wallace")
	 (autoresSimilares
	     [Author_1043]
	     [Author_201]
	     [Author_364]
	     [Author_329]
	     [Author509])
	 (sexo male))

	([Author_563] of Autor
	 (idAutor "563")
	 (nombreAutor "Tim LaHaye")
	 (autoresSimilares
	     [Author239])
	 (sexo male))

	([Author_564] of Autor
	 (idAutor "564")
	 (nombreAutor "Billie Letts")
	 (autoresSimilares
	     [Author_814]
	     [Author_93]
	     [Author_574]
	     [Author_669]
	     [Author_1045]
	     [Author_29]
	     [Author_2]
	     [Author_646]
	     [Author_74]
	     [Author_989]
	     [Author_1015]
	     [Author_1014]
	     [Author_1018]
	     [Author_11]
	     [Author_559]
	     [Author_109]
	     [Author_841]
	     [Author_467]
	     [Author1038])
	 (sexo male))

	([Author_565] of Autor
	 (idAutor "565")
	 (nombreAutor "Cecelia Ahern")
	 (autoresSimilares
	     [Author_1057]
	     [Author_359]
	     [Author_436]
	     [Author_1077]
	     [Author_718]
	     [Author_759]
	     [Author_422]
	     [Author_963]
	     [Author_150]
	     [Author_337]
	     [Author_155]
	     [Author_969]
	     [Author_959]
	     [Author_364]
	     [Author943])
	 (sexo female))

	([Author_566] of Autor
	 (idAutor "566")
	 (nombreAutor "Rebecca Wells")
	 (autoresSimilares
	     [Author_924]
	     [Author_810]
	     [Author_682]
	     [Author_767]
	     [Author_719]
	     [Author_782]
	     [Author_1059]
	     [Author_133]
	     [Author100])
	 (sexo female))

	([Author_567] of Autor
	 (idAutor "567")
	 (nombreAutor "Gertrude Chandler Warner")
	 (autoresSimilares
	     [Author_1002]
	     [Author435])
	 (sexo female))

	([Author_568] of Autor
	 (idAutor "568")
	 (nombreAutor "Pat Conroy")
	 (autoresSimilares
	     [Author_325]
	     [Author_444]
	     [Author_418]
	     [Author_486]
	     [Author_749]
	     [Author_536]
	     [Author_34]
	     [Author_862]
	     [Author_901]
	     [Author_343]
	     [Author1054])
	 (sexo male))

	([Author_569] of Autor
	 (idAutor "569")
	 (nombreAutor "Nicki Elson")
	 (autoresSimilares
	     [Author_5]
	     [Author_439]
	     [Author_434]
	     [Author_820]
	     [Author_24]
	     [Author_1073]
	     [Author_124]
	     [Author397])
	 (sexo female))

	([Author_570] of Autor
	 (idAutor "570")
	 (nombreAutor "Edith Wharton")
	 (autoresSimilares
	     [Author_85]
	     [Author_482]
	     [Author_32]
	     [Author_14]
	     [Author_123]
	     [Author_809]
	     [Author225])
	 (sexo female))

	([Author_571] of Autor
	 (idAutor "571")
	 (nombreAutor "Boris Pasternak")
	 (autoresSimilares
	     [Author_184]
	     [Author_773]
	     [Author_512]
	     [Author_396]
	     [Author_186]
	     [Author_1028]
	     [Author_858]
	     [Author_874]
	     [Author_1086]
	     [Author_891]
	     [Author_774]
	     [Author_13]
	     [Author_705]
	     [Author_138]
	     [Author_48]
	     [Author_821]
	     [Author_552]
	     [Author_884]
	     [Author_385]
	     [Author55])
	 (sexo male))

	([Author_572] of Autor
	 (idAutor "572")
	 (nombreAutor "EM Forster")
	 (autoresSimilares
	     [Author_968]
	     [Author_1090]
	     [Author_279]
	     [Author_130]
	     [Author_650]
	     [Author_173]
	     [Author_595]
	     [Author_510]
	     [Author_155]
	     [Author_127]
	     [Author_836]
	     [Author_880]
	     [Author_792]
	     [Author_293]
	     [Author_314]
	     [Author729])
	 (sexo male))

	([Author_573] of Autor
	 (idAutor "573")
	 (nombreAutor "Francine Rivers")
	 (autoresSimilares
	     [Author_935]
	     [Author_497]
	     [Author_253]
	     [Author_333]
	     [Author_981]
	     [Author_220]
	     [Author_1075]
	     [Author_451]
	     [Author_773]
	     [Author_1099]
	     [Author_1007]
	     [Author_475]
	     [Author644])
	 (sexo female))

	([Author_574] of Autor
	 (idAutor "574")
	 (nombreAutor "Jess Walter")
	 (autoresSimilares
	     [Author_148]
	     [Author_997]
	     [Author_292]
	     [Author_1022]
	     [Author_482]
	     [Author_976]
	     [Author124])
	 (sexo male))

	([Author_575] of Autor
	 (idAutor "575")
	 (nombreAutor "Rachel Joyce")
	 (autoresSimilares
	     [Author_404]
	     [Author_85]
	     [Author_489]
	     [Author_362]
	     [Author_669]
	     [Author_328]
	     [Author59])
	 (sexo female))

	([Author_576] of Autor
	 (idAutor "576")
	 (nombreAutor "Adam Johnson")
	 (autoresSimilares
	     [Author_933]
	     [Author_123]
	     [Author_740]
	     [Author_442]
	     [Author49])
	 (sexo male))

	([Author_577] of Autor
	 (idAutor "577")
	 (nombreAutor "Carol Rifka Brunt")
	 (autoresSimilares
	     [Author_728]
	     [Author_128]
	     [Author_201]
	     [Author_253]
	     [Author_1032]
	     [Author_286]
	     [Author_307]
	     [Author_341]
	     [Author_561]
	     [Author_1013]
	     [Author_830]
	     [Author_777]
	     [Author_636]
	     [Author_308]
	     [Author_287]
	     [Author_661]
	     [Author_157]
	     [Author_835]
	     [Author1004])
	 (sexo male))

	([Author_578] of Autor
	 (idAutor "578")
	 (nombreAutor "William Landay")
	 (autoresSimilares
	     [Author_350]
	     [Author_336]
	     [Author_92]
	     [Author_610]
	     [Author_162]
	     [Author859])
	 (sexo male))

	([Author_579] of Autor
	 (idAutor "579")
	 (nombreAutor "Thomas Rockwell")
	 (autoresSimilares
	     [Author_1027]
	     [Author_401]
	     [Author_860]
	     [Author_373]
	     [Author_484]
	     [Author_276]
	     [Author_26]
	     [Author_62]
	     [Author_635]
	     [Author_511]
	     [Author_422]
	     [Author_358]
	     [Author_842]
	     [Author_828]
	     [Author_453]
	     [Author480])
	 (sexo male))

	([Author_580] of Autor
	 (idAutor "580")
	 (nombreAutor "Betty MacDonald")
	 (autoresSimilares
	     [Author_537]
	     [Author_29]
	     [Author_538]
	     [Author_269]
	     [Author_870]
	     [Author_338]
	     [Author_43]
	     [Author_365]
	     [Author_586]
	     [Author_48]
	     [Author_762]
	     [Author_364]
	     [Author_591]
	     [Author_754]
	     [Author_16]
	     [Author_545]
	     [Author_175]
	     [Author_777]
	     [Author885])
	 (sexo female))

	([Author_581] of Autor
	 (idAutor "581")
	 (nombreAutor "Louise Fitzhugh")
	 (autoresSimilares
	     [Author_247]
	     [Author_642]
	     [Author_461]
	     [Author_703]
	     [Author_931]
	     [Author_529]
	     [Author_202]
	     [Author_998]
	     [Author_971]
	     [Author_295]
	     [Author_204]
	     [Author_214]
	     [Author_139]
	     [Author_807]
	     [Author_910]
	     [Author_555]
	     [Author269])
	 (sexo female))

	([Author_582] of Autor
	 (idAutor "582")
	 (nombreAutor "Alexandra Duncan")
	 (autoresSimilares
	     [Author_951]
	     [Author_657]
	     [Author_504]
	     [Author_799]
	     [Author_573]
	     [Author_415]
	     [Author_362]
	     [Author_846]
	     [Author_526]
	     [Author_916]
	     [Author255])
	 (sexo female))

	([Author_583] of Autor
	 (idAutor "583")
	 (nombreAutor "Claudia Gabel")
	 (autoresSimilares
	     [Author_120]
	     [Author_331]
	     [Author_699]
	     [Author_768]
	     [Author_398]
	     [Author_654]
	     [Author_659]
	     [Author_955]
	     [Author_346]
	     [Author_1082]
	     [Author_1019]
	     [Author_840]
	     [Author_649]
	     [Author_35]
	     [Author_769]
	     [Author970])
	 (sexo male))

	([Author_584] of Autor
	 (idAutor "584")
	 (nombreAutor "Mindee Arnett")
	 (autoresSimilares
	     [Author_30]
	     [Author_379]
	     [Author_14]
	     [Author_8]
	     [Author_1058]
	     [Author_73]
	     [Author_778]
	     [Author_382]
	     [Author92])
	 (sexo male))

	([Author_585] of Autor
	 (idAutor "585")
	 (nombreAutor "Joelle Charbonneau")
	 (autoresSimilares
	     [Author949])
	 (sexo male))

	([Author_586] of Autor
	 (idAutor "586")
	 (nombreAutor "Lionel Shriver")
	 (autoresSimilares
	     [Author_344]
	     [Author_1046]
	     [Author_138]
	     [Author_509]
	     [Author_240]
	     [Author_622]
	     [Author_153]
	     [Author_654]
	     [Author_260]
	     [Author_353]
	     [Author_378]
	     [Author_813]
	     [Author65])
	 (sexo male))

	([Author_587] of Autor
	 (idAutor "587")
	 (nombreAutor "Leif Enger")
	 (autoresSimilares
	     [Author_1040]
	     [Author_1082]
	     [Author_601]
	     [Author_801]
	     [Author_725]
	     [Author_824]
	     [Author_1020]
	     [Author_579]
	     [Author_649]
	     [Author_857]
	     [Author_552]
	     [Author_1]
	     [Author_828]
	     [Author401])
	 (sexo male))

	([Author_588] of Autor
	 (idAutor "588")
	 (nombreAutor "")
	 (autoresSimilares
	     [Author_952]
	     [Author_482]
	     [Author_42]
	     [Author1])
	 (sexo male))

	([Author_589] of Autor
	 (idAutor "589")
	 (nombreAutor "Chris Cleave")
	 (autoresSimilares
	     [Author_292]
	     [Author_689]
	     [Author_1033]
	     [Author_128]
	     [Author_958]
	     [Author_252]
	     [Author_56]
	     [Author346])
	 (sexo male))

	([Author_590] of Autor
	 (idAutor "590")
	 (nombreAutor "Lisa Genova")
	 (autoresSimilares
	     [Author_663]
	     [Author_619]
	     [Author_16]
	     [Author_297]
	     [Author_302]
	     [Author_591]
	     [Author_27]
	     [Author_143]
	     [Author446])
	 (sexo female))

	([Author_591] of Autor
	 (idAutor "591")
	 (nombreAutor "Julia Karr")
	 (autoresSimilares
	     [Author_910]
	     [Author_907]
	     [Author_408]
	     [Author_658]
	     [Author_1060]
	     [Author_856]
	     [Author_854]
	     [Author_777]
	     [Author_1092]
	     [Author_726]
	     [Author_494]
	     [Author_406]
	     [Author_217]
	     [Author_715]
	     [Author_849]
	     [Author_430]
	     [Author_196]
	     [Author_784]
	     [Author472])
	 (sexo male))

	([Author_592] of Autor
	 (idAutor "592")
	 (nombreAutor "Julie Cross")
	 (autoresSimilares
	     [Author_443]
	     [Author_222]
	     [Author_1004]
	     [Author_60]
	     [Author_86]
	     [Author_949]
	     [Author_589]
	     [Author_296]
	     [Author_581]
	     [Author_259]
	     [Author_372]
	     [Author837])
	 (sexo female))

	([Author_593] of Autor
	 (idAutor "593")
	 (nombreAutor "Mike Mullin")
	 (autoresSimilares
	     [Author_830]
	     [Author_614]
	     [Author_453]
	     [Author_307]
	     [Author_122]
	     [Author_911]
	     [Author_400]
	     [Author_397]
	     [Author_523]
	     [Author_779]
	     [Author_284]
	     [Author_0]
	     [Author_756]
	     [Author_541]
	     [Author_774]
	     [Author_616]
	     [Author_242]
	     [Author_133]
	     [Author546])
	 (sexo male))

	([Author_594] of Autor
	 (idAutor "594")
	 (nombreAutor "Suzanne Weyn")
	 (autoresSimilares
	     [Author_741]
	     [Author_102]
	     [Author_215]
	     [Author_868]
	     [Author_1016]
	     [Author_172]
	     [Author_282]
	     [Author_475]
	     [Author_267]
	     [Author654])
	 (sexo female))

	([Author_595] of Autor
	 (idAutor "595")
	 (nombreAutor "John Marsden")
	 (autoresSimilares
	     [Author_1097]
	     [Author_357]
	     [Author_559]
	     [Author_707]
	     [Author_637]
	     [Author_427]
	     [Author_974]
	     [Author_770]
	     [Author_462]
	     [Author_277]
	     [Author_713]
	     [Author_777]
	     [Author_562]
	     [Author_372]
	     [Author_960]
	     [Author_96]
	     [Author_395]
	     [Author_231]
	     [Author_761]
	     [Author499])
	 (sexo male))

	([Author_596] of Autor
	 (idAutor "596")
	 (nombreAutor "Gemma Malley")
	 (autoresSimilares
	     [Author_910]
	     [Author_645]
	     [Author_692]
	     [Author_683]
	     [Author_735]
	     [Author_59]
	     [Author_771]
	     [Author_639]
	     [Author_829]
	     [Author_609]
	     [Author_914]
	     [Author248])
	 (sexo male))

	([Author_597] of Autor
	 (idAutor "597")
	 (nombreAutor "Lissa Price")
	 (autoresSimilares
	     [Author_993]
	     [Author_274]
	     [Author_612]
	     [Author_568]
	     [Author_632]
	     [Author_246]
	     [Author_1019]
	     [Author_147]
	     [Author_1069]
	     [Author224])
	 (sexo female))

	([Author_598] of Autor
	 (idAutor "598")
	 (nombreAutor "Beth Kery")
	 (autoresSimilares
	     [Author_90]
	     [Author_445]
	     [Author_612]
	     [Author_133]
	     [Author_821]
	     [Author_628]
	     [Author_526]
	     [Author_727]
	     [Author_482]
	     [Author_224]
	     [Author_804]
	     [Author_461]
	     [Author_969]
	     [Author795])
	 (sexo female))

	([Author_599] of Autor
	 (idAutor "599")
	 (nombreAutor "Shayla Black")
	 (autoresSimilares
	     [Author_83]
	     [Author_981]
	     [Author_240]
	     [Author_1032]
	     [Author_171]
	     [Author_808]
	     [Author_189]
	     [Author_970]
	     [Author_888]
	     [Author_597]
	     [Author_149]
	     [Author_821]
	     [Author_575]
	     [Author_1050]
	     [Author_476]
	     [Author_681]
	     [Author_470]
	     [Author637])
	 (sexo female))

	([Author_600] of Autor
	 (idAutor "600")
	 (nombreAutor "Megan Hart")
	 (autoresSimilares
	     [Author_172]
	     [Author_1038]
	     [Author_864]
	     [Author_300]
	     [Author_485]
	     [Author_50]
	     [Author_878]
	     [Author_1096]
	     [Author_41]
	     [Author_1032]
	     [Author_184]
	     [Author_167]
	     [Author_265]
	     [Author_6]
	     [Author_645]
	     [Author_578]
	     [Author_963]
	     [Author497])
	 (sexo male))

	([Author_601] of Autor
	 (idAutor "601")
	 (nombreAutor "Laurelin Paige")
	 (autoresSimilares
	     [Author_364]
	     [Author_736]
	     [Author_547]
	     [Author_955]
	     [Author_881]
	     [Author_1102]
	     [Author_205]
	     [Author_1031]
	     [Author_431]
	     [Author_209]
	     [Author_1037]
	     [Author_354]
	     [Author467])
	 (sexo female))

	([Author_602] of Autor
	 (idAutor "602")
	 (nombreAutor "Barbara Elsborg")
	 (autoresSimilares
	     [Author_1045]
	     [Author_1017]
	     [Author_464]
	     [Author_171]
	     [Author_1085]
	     [Author_577]
	     [Author_223]
	     [Author_685]
	     [Author_616]
	     [Author_276]
	     [Author_291]
	     [Author_255]
	     [Author_410]
	     [Author_520]
	     [Author_604]
	     [Author_612]
	     [Author457])
	 (sexo female))

	([Author_603] of Autor
	 (idAutor "603")
	 (nombreAutor "J Kenner")
	 (autoresSimilares
	     [Author_456]
	     [Author75])
	 (sexo female))

	([Author_604] of Autor
	 (idAutor "604")
	 (nombreAutor "Georgia Cates")
	 (autoresSimilares
	     [Author_957]
	     [Author_90]
	     [Author_387]
	     [Author_804]
	     [Author_609]
	     [Author_246]
	     [Author_511]
	     [Author_867]
	     [Author_58]
	     [Author_24]
	     [Author_37]
	     [Author_55]
	     [Author_318]
	     [Author_363]
	     [Author_979]
	     [Author_788]
	     [Author_480]
	     [Author_900]
	     [Author803])
	 (sexo male))

	([Author_605] of Autor
	 (idAutor "605")
	 (nombreAutor "Georges Bataille")
	 (autoresSimilares
	     [Author_971]
	     [Author_650]
	     [Author_144]
	     [Author_1027]
	     [Author_78]
	     [Author_541]
	     [Author_375]
	     [Author_260]
	     [Author253])
	 (sexo male))

	([Author_606] of Autor
	 (idAutor "606")
	 (nombreAutor "Charles Stross")
	 (autoresSimilares
	     [Author_767]
	     [Author_796]
	     [Author_890]
	     [Author_568]
	     [Author_902]
	     [Author_168]
	     [Author_152]
	     [Author_750]
	     [Author_65]
	     [Author_867]
	     [Author718])
	 (sexo male))

	([Author_607] of Autor
	 (idAutor "607")
	 (nombreAutor "Richard Atwater")
	 (autoresSimilares
	     [Author_407]
	     [Author_833]
	     [Author_185]
	     [Author_656]
	     [Author_677]
	     [Author_127]
	     [Author_196]
	     [Author_1065]
	     [Author_847]
	     [Author_40]
	     [Author_893]
	     [Author_90]
	     [Author_745]
	     [Author_736]
	     [Author_164]
	     [Author_944]
	     [Author905])
	 (sexo male))

	([Author_608] of Autor
	 (idAutor "608")
	 (nombreAutor "Blake Charlton")
	 (autoresSimilares
	     [Author_1101]
	     [Author_387]
	     [Author_985]
	     [Author_663]
	     [Author_54]
	     [Author_245]
	     [Author_436]
	     [Author_82]
	     [Author_656]
	     [Author_477]
	     [Author_309]
	     [Author_588]
	     [Author_510]
	     [Author_998]
	     [Author_1008]
	     [Author199])
	 (sexo male))

	([Author_609] of Autor
	 (idAutor "609")
	 (nombreAutor "David Farland")
	 (autoresSimilares
	     [Author_812]
	     [Author_1003]
	     [Author_1046]
	     [Author_474]
	     [Author_443]
	     [Author_798]
	     [Author_124]
	     [Author_878]
	     [Author_1065]
	     [Author535])
	 (sexo male))

	([Author_610] of Autor
	 (idAutor "610")
	 (nombreAutor "David Estes")
	 (autoresSimilares
	     [Author_605]
	     [Author_299]
	     [Author_706]
	     [Author_339]
	     [Author_582]
	     [Author583])
	 (sexo male))

	([Author_611] of Autor
	 (idAutor "611")
	 (nombreAutor "Sara  King")
	 (autoresSimilares
	     [Author_959]
	     [Author_645]
	     [Author_571]
	     [Author_662]
	     [Author_679]
	     [Author_143]
	     [Author_118]
	     [Author282])
	 (sexo male))

	([Author_612] of Autor
	 (idAutor "612")
	 (nombreAutor "Ian McDonald")
	 (autoresSimilares
	     [Author_683]
	     [Author_585]
	     [Author_218]
	     [Author_420]
	     [Author_698]
	     [Author_1076]
	     [Author_223]
	     [Author526])
	 (sexo male))

	([Author_613] of Autor
	 (idAutor "613")
	 (nombreAutor "Neal Asher")
	 (autoresSimilares
	     [Author_180]
	     [Author_983]
	     [Author_414]
	     [Author_589]
	     [Author_387]
	     [Author_144]
	     [Author_249]
	     [Author_1042]
	     [Author_107]
	     [Author_524]
	     [Author251])
	 (sexo male))

	([Author_614] of Autor
	 (idAutor "614")
	 (nombreAutor "Robert J Sawyer")
	 (autoresSimilares
	     [Author_236]
	     [Author_72]
	     [Author_714]
	     [Author_1080]
	     [Author_589]
	     [Author_94]
	     [Author_537]
	     [Author_366]
	     [Author_509]
	     [Author_726]
	     [Author_818]
	     [Author_592]
	     [Author_997]
	     [Author_319]
	     [Author_260]
	     [Author_1096]
	     [Author_585]
	     [Author_583]
	     [Author849])
	 (sexo male))

	([Author_615] of Autor
	 (idAutor "615")
	 (nombreAutor "Becky Chambers")
	 (autoresSimilares
	     [Author_1062]
	     [Author_1093]
	     [Author_812]
	     [Author_352]
	     [Author_740]
	     [Author_827]
	     [Author_939]
	     [Author_801]
	     [Author_1050]
	     [Author_515]
	     [Author_3]
	     [Author_184]
	     [Author_986]
	     [Author_152]
	     [Author_200]
	     [Author83])
	 (sexo male))

	([Author_616] of Autor
	 (idAutor "616")
	 (nombreAutor "Peter F Hamilton")
	 (autoresSimilares
	     [Author_114]
	     [Author_451]
	     [Author_535]
	     [Author_428]
	     [Author_1023]
	     [Author_887]
	     [Author_43]
	     [Author_876]
	     [Author_58]
	     [Author_959]
	     [Author_1017]
	     [Author_912]
	     [Author_421]
	     [Author1015])
	 (sexo male))

	([Author_617] of Autor
	 (idAutor "617")
	 (nombreAutor "Cherie Priest")
	 (autoresSimilares
	     [Author_507]
	     [Author_45]
	     [Author_965]
	     [Author_126]
	     [Author467])
	 (sexo female))

	([Author_618] of Autor
	 (idAutor "618")
	 (nombreAutor "Alastair Reynolds")
	 (autoresSimilares
	     [Author_7]
	     [Author_168]
	     [Author_503]
	     [Author_166]
	     [Author_866]
	     [Author_42]
	     [Author_440]
	     [Author_1049]
	     [Author_161]
	     [Author_845]
	     [Author_965]
	     [Author103])
	 (sexo male))

	([Author_619] of Autor
	 (idAutor "619")
	 (nombreAutor "Ramez Naam")
	 (autoresSimilares
	     [Author_795]
	     [Author_903]
	     [Author_1027]
	     [Author_891]
	     [Author495])
	 (sexo male))

	([Author_620] of Autor
	 (idAutor "620")
	 (nombreAutor "Peter Clines")
	 (autoresSimilares
	     [Author733])
	 (sexo male))

	([Author_621] of Autor
	 (idAutor "621")
	 (nombreAutor "MR Carey")
	 (autoresSimilares
	     [Author_571]
	     [Author_479]
	     [Author_872]
	     [Author_830]
	     [Author_868]
	     [Author_33]
	     [Author_912]
	     [Author_439]
	     [Author_809]
	     [Author907])
	 (sexo male))

	([Author_622] of Autor
	 (idAutor "622")
	 (nombreAutor "Daniel Suarez")
	 (autoresSimilares
	     [Author_173]
	     [Author_273]
	     [Author_547]
	     [Author_250]
	     [Author_399]
	     [Author_1072]
	     [Author_371]
	     [Author_826]
	     [Author_24]
	     [Author_688]
	     [Author_93]
	     [Author_66]
	     [Author_455]
	     [Author_133]
	     [Author_52]
	     [Author_103]
	     [Author854])
	 (sexo male))

	([Author_623] of Autor
	 (idAutor "623")
	 (nombreAutor "Daniel H Wilson")
	 (autoresSimilares
	     [Author_305]
	     [Author154])
	 (sexo male))

	([Author_624] of Autor
	 (idAutor "624")
	 (nombreAutor "Jeff VanderMeer")
	 (autoresSimilares
	     [Author_1058]
	     [Author_598]
	     [Author_620]
	     [Author75])
	 (sexo male))

	([Author_625] of Autor
	 (idAutor "625")
	 (nombreAutor "Hannu Rajaniemi")
	 (autoresSimilares
	     [Author_935]
	     [Author900])
	 (sexo male))

	([Author_626] of Autor
	 (idAutor "626")
	 (nombreAutor "China Miville")
	 (autoresSimilares
	     [Author_945]
	     [Author_721]
	     [Author_383]
	     [Author_924]
	     [Author_460]
	     [Author_67]
	     [Author_140]
	     [Author_28]
	     [Author_174]
	     [Author_820]
	     [Author_750]
	     [Author_1075]
	     [Author_13]
	     [Author863])
	 (sexo male))

	([Author_627] of Autor
	 (idAutor "627")
	 (nombreAutor "Liu Cixin")
	 (autoresSimilares
	     [Author_229]
	     [Author800])
	 (sexo male))

	([Author_628] of Autor
	 (idAutor "628")
	 (nombreAutor "Peter Watts")
	 (autoresSimilares
	     [Author_575]
	     [Author_485]
	     [Author_350]
	     [Author_722]
	     [Author_345]
	     [Author634])
	 (sexo male))

	([Author_629] of Autor
	 (idAutor "629")
	 (nombreAutor "Robert Charles Wilson")
	 (autoresSimilares
	     [Author_885]
	     [Author_200]
	     [Author_337]
	     [Author_1026]
	     [Author_1002]
	     [Author_869]
	     [Author_877]
	     [Author_593]
	     [Author_558]
	     [Author_732]
	     [Author_740]
	     [Author_53]
	     [Author350])
	 (sexo male))

	([Author_630] of Autor
	 (idAutor "630")
	 (nombreAutor "Ann Leckie")
	 (autoresSimilares
	     [Author_952]
	     [Author_207]
	     [Author_1013]
	     [Author_367]
	     [Author_397]
	     [Author_108]
	     [Author_826]
	     [Author_846]
	     [Author470])
	 (sexo male))

	([Author_631] of Autor
	 (idAutor "631")
	 (nombreAutor "Dorothy Allison")
	 (autoresSimilares
	     [Author_991]
	     [Author_896]
	     [Author_600]
	     [Author_792]
	     [Author_891]
	     [Author_5]
	     [Author_445]
	     [Author_1074]
	     [Author_684]
	     [Author_63]
	     [Author_1046]
	     [Author_1105]
	     [Author642])
	 (sexo male))

	([Author_632] of Autor
	 (idAutor "632")
	 (nombreAutor "Hubert Selby Jr")
	 (autoresSimilares
	     [Author_655]
	     [Author_580]
	     [Author_736]
	     [Author_905]
	     [Author_448]
	     [Author420])
	 (sexo male))

	([Author_633] of Autor
	 (idAutor "633")
	 (nombreAutor "Jay Anson")
	 (autoresSimilares
	     [Author_45]
	     [Author_722]
	     [Author565])
	 (sexo male))

	([Author_634] of Autor
	 (idAutor "634")
	 (nombreAutor "AM Homes")
	 (autoresSimilares
	     [Author_812]
	     [Author_717]
	     [Author_272]
	     [Author_916]
	     [Author_791]
	     [Author_323]
	     [Author_915]
	     [Author_363]
	     [Author_1095]
	     [Author_771]
	     [Author373])
	 (sexo female))

	([Author_635] of Autor
	 (idAutor "635")
	 (nombreAutor "Jerzy Kosiski")
	 (autoresSimilares
	     [Author_351]
	     [Author_52]
	     [Author_178]
	     [Author_1026]
	     [Author_462]
	     [Author_469]
	     [Author_762]
	     [Author_319]
	     [Author_36]
	     [Author203])
	 (sexo male))

	([Author_636] of Autor
	 (idAutor "636")
	 (nombreAutor "Katherine Dunn")
	 (autoresSimilares
	     [Author_302]
	     [Author_173]
	     [Author_900]
	     [Author_932]
	     [Author_91]
	     [Author_854]
	     [Author_1063]
	     [Author_564]
	     [Author_938]
	     [Author_1010]
	     [Author_463]
	     [Author_696]
	     [Author_834]
	     [Author_1083]
	     [Author_237]
	     [Author_798]
	     [Author_627]
	     [Author995])
	 (sexo female))

	([Author_637] of Autor
	 (idAutor "637")
	 (nombreAutor "Marquis de Sade")
	 (autoresSimilares
	     [Author_211]
	     [Author_546]
	     [Author193])
	 (sexo male))

	([Author_638] of Autor
	 (idAutor "638")
	 (nombreAutor "Jack Ketchum")
	 (autoresSimilares
	     [Author_408]
	     [Author_575]
	     [Author_544]
	     [Author817])
	 (sexo male))

	([Author_639] of Autor
	 (idAutor "639")
	 (nombreAutor "Iain Banks")
	 (autoresSimilares
	     [Author_860]
	     [Author_355]
	     [Author_842]
	     [Author_379]
	     [Author_549]
	     [Author_110]
	     [Author_524]
	     [Author_773]
	     [Author_763]
	     [Author_72]
	     [Author_381]
	     [Author_933]
	     [Author_619]
	     [Author_539]
	     [Author_115]
	     [Author_419]
	     [Author449])
	 (sexo male))

	([Author_640] of Autor
	 (idAutor "640")
	 (nombreAutor "Jennifer  McMahon")
	 (autoresSimilares
	     [Author_1083]
	     [Author_607]
	     [Author_653]
	     [Author_736]
	     [Author_320]
	     [Author_231]
	     [Author_501]
	     [Author_940]
	     [Author_772]
	     [Author_777]
	     [Author_132]
	     [Author_977]
	     [Author164])
	 (sexo male))

	([Author_641] of Autor
	 (idAutor "641")
	 (nombreAutor "Rachel Simon")
	 (autoresSimilares
	     [Author_694]
	     [Author_987]
	     [Author_566]
	     [Author_111]
	     [Author_342]
	     [Author_364]
	     [Author_695]
	     [Author549])
	 (sexo female))

	([Author_642] of Autor
	 (idAutor "642")
	 (nombreAutor "David Nicholls")
	 (autoresSimilares
	     [Author_116]
	     [Author_38]
	     [Author_654]
	     [Author_895]
	     [Author_728]
	     [Author_381]
	     [Author_719]
	     [Author_650]
	     [Author925])
	 (sexo male))

	([Author_643] of Autor
	 (idAutor "643")
	 (nombreAutor "Paula McLain")
	 (autoresSimilares
	     [Author_143]
	     [Author_389]
	     [Author_787]
	     [Author_17]
	     [Author_1050]
	     [Author_511]
	     [Author_409]
	     [Author_52]
	     [Author_318]
	     [Author_1014]
	     [Author_893]
	     [Author499])
	 (sexo female))

	([Author_644] of Autor
	 (idAutor "644")
	 (nombreAutor "Alexandra Monir")
	 (autoresSimilares
	     [Author_407]
	     [Author_912]
	     [Author_598]
	     [Author_918]
	     [Author_848]
	     [Author_876]
	     [Author_489]
	     [Author_865]
	     [Author334])
	 (sexo female))

	([Author_645] of Autor
	 (idAutor "645")
	 (nombreAutor "Gwen Cole")
	 (autoresSimilares
	     [Author_770]
	     [Author1002])
	 (sexo female))

	([Author_646] of Autor
	 (idAutor "646")
	 (nombreAutor "Tristina Wright")
	 (autoresSimilares
	     [Author_3]
	     [Author_59]
	     [Author_602]
	     [Author_709]
	     [Author_209]
	     [Author_301]
	     [Author_509]
	     [Author_428]
	     [Author_654]
	     [Author_44]
	     [Author_1099]
	     [Author_60]
	     [Author_329]
	     [Author_863]
	     [Author_1051]
	     [Author_222]
	     [Author_159]
	     [Author992])
	 (sexo female))

	([Author_647] of Autor
	 (idAutor "647")
	 (nombreAutor "Amy Mason Doan")
	 (autoresSimilares
	     [Author_533]
	     [Author_301]
	     [Author_1093]
	     [Author_1102]
	     [Author_545]
	     [Author_355]
	     [Author_246]
	     [Author_1087]
	     [Author_838]
	     [Author_818]
	     [Author_59]
	     [Author_107]
	     [Author_791]
	     [Author_801]
	     [Author_323]
	     [Author_1059]
	     [Author_701]
	     [Author_485]
	     [Author_270]
	     [Author875])
	 (sexo female))

	([Author_648] of Autor
	 (idAutor "648")
	 (nombreAutor "R Scott Bakker")
	 (autoresSimilares
	     [Author_297]
	     [Author_963]
	     [Author_64]
	     [Author_454]
	     [Author_1101]
	     [Author_228]
	     [Author_290]
	     [Author_695]
	     [Author_772]
	     [Author_1010]
	     [Author_0]
	     [Author_481]
	     [Author_242]
	     [Author878])
	 (sexo male))

	([Author_649] of Autor
	 (idAutor "649")
	 (nombreAutor "Lev Grossman")
	 (autoresSimilares
	     [Author_702]
	     [Author_206]
	     [Author_142]
	     [Author_299]
	     [Author_826]
	     [Author_699]
	     [Author_462]
	     [Author_779]
	     [Author_1026]
	     [Author_1]
	     [Author_605]
	     [Author_565]
	     [Author_460]
	     [Author_843]
	     [Author_1088]
	     [Author_1028]
	     [Author_961]
	     [Author601])
	 (sexo male))

	([Author_650] of Autor
	 (idAutor "650")
	 (nombreAutor "Catherynne M Valente")
	 (autoresSimilares
	     [Author_857]
	     [Author_299]
	     [Author531])
	 (sexo female))

	([Author_651] of Autor
	 (idAutor "651")
	 (nombreAutor "Pamela Dean")
	 (autoresSimilares
	     [Author_49]
	     [Author_372]
	     [Author_302]
	     [Author_423]
	     [Author_127]
	     [Author_203]
	     [Author_732]
	     [Author_1077]
	     [Author_952]
	     [Author179])
	 (sexo male))

	([Author_652] of Autor
	 (idAutor "652")
	 (nombreAutor "John Connolly")
	 (autoresSimilares
	     [Author_563]
	     [Author_762]
	     [Author_984]
	     [Author_670]
	     [Author_611]
	     [Author336])
	 (sexo male))

	([Author_653] of Autor
	 (idAutor "653")
	 (nombreAutor "Carl Hiaasen")
	 (autoresSimilares
	     [Author_986]
	     [Author_629]
	     [Author1101])
	 (sexo male))

	([Author_654] of Autor
	 (idAutor "654")
	 (nombreAutor "PG Wodehouse")
	 (autoresSimilares
	     [Author_515]
	     [Author_222]
	     [Author_190]
	     [Author_739]
	     [Author_1014]
	     [Author_903]
	     [Author_874]
	     [Author_564]
	     [Author668])
	 (sexo male))

	([Author_655] of Autor
	 (idAutor "655")
	 (nombreAutor "Paige Singleton")
	 (autoresSimilares
	     [Author_778]
	     [Author_28]
	     [Author_110]
	     [Author_117]
	     [Author_522]
	     [Author_897]
	     [Author_950]
	     [Author_990]
	     [Author422])
	 (sexo male))

	([Author_656] of Autor
	 (idAutor "656")
	 (nombreAutor "Tim Vicary")
	 (autoresSimilares
	     [Author_796]
	     [Author_939]
	     [Author_221]
	     [Author_858]
	     [Author_1034]
	     [Author_102]
	     [Author402])
	 (sexo male))

	([Author_657] of Autor
	 (idAutor "657")
	 (nombreAutor "Ginny Bryce")
	 (autoresSimilares
	     [Author915])
	 (sexo male))

	([Author_658] of Autor
	 (idAutor "658")
	 (nombreAutor "Jinx Schwartz")
	 (autoresSimilares
	     [Author_401]
	     [Author_320]
	     [Author_723]
	     [Author_806]
	     [Author_913]
	     [Author520])
	 (sexo female))

	([Author_659] of Autor
	 (idAutor "659")
	 (nombreAutor "Iain Parke")
	 (autoresSimilares
	     [Author_509]
	     [Author675])
	 (sexo male))

	([Author_660] of Autor
	 (idAutor "660")
	 (nombreAutor "Peter Watson Jenkins")
	 (autoresSimilares
	     [Author_677]
	     [Author1096])
	 (sexo male))

	([Author_661] of Autor
	 (idAutor "661")
	 (nombreAutor "David Prosser")
	 (autoresSimilares
	     [Author_645]
	     [Author_740]
	     [Author_1011]
	     [Author_290]
	     [Author_377]
	     [Author1037])
	 (sexo male))

	([Author_662] of Autor
	 (idAutor "662")
	 (nombreAutor "Tyler Chase")
	 (autoresSimilares
	     [Author_634]
	     [Author_814]
	     [Author_351]
	     [Author42])
	 (sexo male))

	([Author_663] of Autor
	 (idAutor "663")
	 (nombreAutor "Patricia H Graham")
	 (autoresSimilares
	     [Author_954]
	     [Author_4]
	     [Author_672]
	     [Author_746]
	     [Author296])
	 (sexo female))

	([Author_664] of Autor
	 (idAutor "664")
	 (nombreAutor "Carlyle Labuschagne")
	 (autoresSimilares
	     [Author_710]
	     [Author_17]
	     [Author_876]
	     [Author_484]
	     [Author_642]
	     [Author_189]
	     [Author_32]
	     [Author_552]
	     [Author_659]
	     [Author_1052]
	     [Author_862]
	     [Author_537]
	     [Author_487]
	     [Author833])
	 (sexo female))

	([Author_665] of Autor
	 (idAutor "665")
	 (nombreAutor "Tamara Ireland Stone")
	 (autoresSimilares
	     [Author_446]
	     [Author_908]
	     [Author_2]
	     [Author_38]
	     [Author_451]
	     [Author_760]
	     [Author_811]
	     [Author838])
	 (sexo female))

	([Author_666] of Autor
	 (idAutor "666")
	 (nombreAutor "Kate Hawkings")
	 (autoresSimilares
	     [Author298])
	 (sexo male))

	([Author_667] of Autor
	 (idAutor "667")
	 (nombreAutor "Jay Kristoff")
	 (autoresSimilares
	     [Author_611]
	     [Author_695]
	     [Author_1076]
	     [Author_1012]
	     [Author_839]
	     [Author_494]
	     [Author_283]
	     [Author_387]
	     [Author_120]
	     [Author_202]
	     [Author_176]
	     [Author777])
	 (sexo male))

	([Author_668] of Autor
	 (idAutor "668")
	 (nombreAutor "Suzanne Lazear")
	 (autoresSimilares
	     [Author_590]
	     [Author_950]
	     [Author_125]
	     [Author_753]
	     [Author_701]
	     [Author_148]
	     [Author_22]
	     [Author_825]
	     [Author_102]
	     [Author_355]
	     [Author_100]
	     [Author_329]
	     [Author_1052]
	     [Author_926]
	     [Author_70]
	     [Author_471]
	     [Author_833]
	     [Author_155]
	     [Author_1098]
	     [Author344])
	 (sexo female))

	([Author_669] of Autor
	 (idAutor "669")
	 (nombreAutor "Galaxy Craze")
	 (autoresSimilares
	     [Author_28]
	     [Author_739]
	     [Author_596]
	     [Author_673]
	     [Author_595]
	     [Author_252]
	     [Author_649]
	     [Author_1025]
	     [Author_610]
	     [Author_863]
	     [Author_123]
	     [Author_737]
	     [Author_769]
	     [Author_489]
	     [Author_47]
	     [Author_726]
	     [Author44])
	 (sexo female))

	([Author_670] of Autor
	 (idAutor "670")
	 (nombreAutor "Trisha Wolfe")
	 (autoresSimilares
	     [Author_929]
	     [Author_895]
	     [Author_1052]
	     [Author_399]
	     [Author_477]
	     [Author_682]
	     [Author_418]
	     [Author_268]
	     [Author_186]
	     [Author_869]
	     [Author_475]
	     [Author_171]
	     [Author_121]
	     [Author_745]
	     [Author_157]
	     [Author153])
	 (sexo female))

	([Author_671] of Autor
	 (idAutor "671")
	 (nombreAutor "Susanne Winnacker")
	 (autoresSimilares
	     [Author_808]
	     [Author_790]
	     [Author_439]
	     [Author_288]
	     [Author_36]
	     [Author_715]
	     [Author_1003]
	     [Author_654]
	     [Author_192]
	     [Author_0]
	     [Author_197]
	     [Author112])
	 (sexo female))

	([Author_672] of Autor
	 (idAutor "672")
	 (nombreAutor "Melissa  West")
	 (autoresSimilares
	     [Author_871]
	     [Author_62]
	     [Author_486]
	     [Author_489]
	     [Author_982]
	     [Author_729]
	     [Author_401]
	     [Author_1087]
	     [Author_1035]
	     [Author_556]
	     [Author_279]
	     [Author_611]
	     [Author_467]
	     [Author_166]
	     [Author_446]
	     [Author_885]
	     [Author_603]
	     [Author_1007]
	     [Author_516]
	     [Author641])
	 (sexo female))

	([Author_673] of Autor
	 (idAutor "673")
	 (nombreAutor "Claire Merle")
	 (autoresSimilares
	     [Author_869]
	     [Author_168]
	     [Author_681]
	     [Author_890]
	     [Author_1024]
	     [Author_798]
	     [Author_635]
	     [Author_216]
	     [Author_982]
	     [Author_496]
	     [Author_615]
	     [Author_627]
	     [Author_27]
	     [Author_344]
	     [Author_390]
	     [Author910])
	 (sexo female))

	([Author_674] of Autor
	 (idAutor "674")
	 (nombreAutor "Jennifer Bosworth")
	 (autoresSimilares
	     [Author_991]
	     [Author_942]
	     [Author53])
	 (sexo female))

	([Author_675] of Autor
	 (idAutor "675")
	 (nombreAutor "Tom Clancy")
	 (autoresSimilares
	     [Author_583]
	     [Author_110]
	     [Author212])
	 (sexo male))

	([Author_676] of Autor
	 (idAutor "676")
	 (nombreAutor "Dean Koontz")
	 (autoresSimilares
	     [Author_1035]
	     [Author_601]
	     [Author_542]
	     [Author_343]
	     [Author_960]
	     [Author_222]
	     [Author_205]
	     [Author_720]
	     [Author_802]
	     [Author_416]
	     [Author_285]
	     [Author_1066]
	     [Author_1048]
	     [Author_27]
	     [Author175])
	 (sexo male))

	([Author_677] of Autor
	 (idAutor "677")
	 (nombreAutor "Woody Allen")
	 (autoresSimilares
	     [Author1093])
	 (sexo male))

	([Author_678] of Autor
	 (idAutor "678")
	 (nombreAutor "Kingsley Amis")
	 (autoresSimilares
	     [Author812])
	 (sexo male))

	([Author_679] of Autor
	 (idAutor "679")
	 (nombreAutor "Edward Gorey")
	 (autoresSimilares
	     [Author_121]
	     [Author_529]
	     [Author_623]
	     [Author_193]
	     [Author_831]
	     [Author_684]
	     [Author_167]
	     [Author_328]
	     [Author_277]
	     [Author_470]
	     [Author_413]
	     [Author_534]
	     [Author169])
	 (sexo male))

	([Author_680] of Autor
	 (idAutor "680")
	 (nombreAutor "Jonas Jonasson")
	 (autoresSimilares
	     [Author_156]
	     [Author_356]
	     [Author_1092]
	     [Author_176]
	     [Author_781]
	     [Author_1079]
	     [Author_165]
	     [Author_542]
	     [Author_1]
	     [Author_1070]
	     [Author_524]
	     [Author_688]
	     [Author_346]
	     [Author_1015]
	     [Author_708]
	     [Author519])
	 (sexo male))

	([Author_681] of Autor
	 (idAutor "681")
	 (nombreAutor "Lance Carbuncle")
	 (autoresSimilares
	     [Author_838]
	     [Author_721]
	     [Author_423]
	     [Author1039])
	 (sexo male))

	([Author_682] of Autor
	 (idAutor "682")
	 (nombreAutor "Stella Gibbons")
	 (autoresSimilares
	     [Author_545]
	     [Author_512]
	     [Author_900]
	     [Author_298]
	     [Author_717]
	     [Author_222]
	     [Author_340]
	     [Author_504]
	     [Author_288]
	     [Author_727]
	     [Author_1054]
	     [Author_54]
	     [Author_992]
	     [Author_874]
	     [Author_297]
	     [Author_805]
	     [Author_29]
	     [Author_1083]
	     [Author_91]
	     [Author509])
	 (sexo male))

	([Author_683] of Autor
	 (idAutor "683")
	 (nombreAutor "Voltaire")
	 (autoresSimilares
	     [Author_535]
	     [Author_304]
	     [Author_10]
	     [Author_1022]
	     [Author_848]
	     [Author_490]
	     [Author_347]
	     [Author_985]
	     [Author_340]
	     [Author_9]
	     [Author_68]
	     [Author_946]
	     [Author_836]
	     [Author_979]
	     [Author_844]
	     [Author_1084]
	     [Author_100]
	     [Author_361]
	     [Author659])
	 (sexo male))

	([Author_684] of Autor
	 (idAutor "684")
	 (nombreAutor "Jerome K Jerome")
	 (autoresSimilares
	     [Author_78]
	     [Author_160]
	     [Author_16]
	     [Author137])
	 (sexo male))

	([Author_685] of Autor
	 (idAutor "685")
	 (nombreAutor "Caitlin Kittredge")
	 (autoresSimilares
	     [Author_756]
	     [Author_257]
	     [Author_793]
	     [Author_446]
	     [Author_639]
	     [Author_52]
	     [Author_28]
	     [Author_800]
	     [Author_447]
	     [Author_485]
	     [Author264])
	 (sexo female))

	([Author_686] of Autor
	 (idAutor "686")
	 (nombreAutor "Thomas Mann")
	 (autoresSimilares
	     [Author_903]
	     [Author555])
	 (sexo male))

	([Author_687] of Autor
	 (idAutor "687")
	 (nombreAutor "Vikram Seth")
	 (autoresSimilares
	     [Author_1069]
	     [Author_578]
	     [Author_93]
	     [Author_995]
	     [Author930])
	 (sexo male))

	([Author_688] of Autor
	 (idAutor "688")
	 (nombreAutor "Rohinton Mistry")
	 (autoresSimilares
	     [Author_469]
	     [Author9])
	 (sexo male))

	([Author_689] of Autor
	 (idAutor "689")
	 (nombreAutor "George Eliot")
	 (autoresSimilares
	     [Author_240]
	     [Author_137]
	     [Author_105]
	     [Author_771]
	     [Author817])
	 (sexo female))

	([Author_690] of Autor
	 (idAutor "690")
	 (nombreAutor "Robert Jackson Bennett")
	 (autoresSimilares
	     [Author_889]
	     [Author_799]
	     [Author_906]
	     [Author_756]
	     [Author_1089]
	     [Author_438]
	     [Author_1021]
	     [Author_702]
	     [Author_616]
	     [Author_900]
	     [Author_758]
	     [Author_661]
	     [Author_189]
	     [Author_318]
	     [Author1019])
	 (sexo male))

	([Author_691] of Autor
	 (idAutor "691")
	 (nombreAutor "Lorrie Moore")
	 (autoresSimilares
	     [Author_992]
	     [Author_447]
	     [Author_294]
	     [Author_462]
	     [Author_13]
	     [Author_555]
	     [Author_231]
	     [Author_981]
	     [Author_803]
	     [Author349])
	 (sexo female))

	([Author_692] of Autor
	 (idAutor "692")
	 (nombreAutor "Ted Dekker")
	 (autoresSimilares
	     [Author_914]
	     [Author1020])
	 (sexo male))

	([Author_693] of Autor
	 (idAutor "693")
	 (nombreAutor "Dan Chaon")
	 (autoresSimilares
	     [Author866])
	 (sexo male))

	([Author_694] of Autor
	 (idAutor "694")
	 (nombreAutor "Heather Gudenkauf")
	 (autoresSimilares
	     [Author_1055]
	     [Author_326]
	     [Author_158]
	     [Author_734]
	     [Author_523]
	     [Author_748]
	     [Author_384]
	     [Author_751]
	     [Author837])
	 (sexo male))

	([Author_695] of Autor
	 (idAutor "695")
	 (nombreAutor "Colm Tibn")
	 (autoresSimilares
	     [Author_173]
	     [Author_338]
	     [Author_94]
	     [Author_552]
	     [Author_744]
	     [Author_816]
	     [Author_1009]
	     [Author_414]
	     [Author_392]
	     [Author_265]
	     [Author_675]
	     [Author_1089]
	     [Author_137]
	     [Author399])
	 (sexo male))

	([Author_696] of Autor
	 (idAutor "696")
	 (nombreAutor "David Cristofano")
	 (autoresSimilares
	     [Author_246]
	     [Author_598]
	     [Author_547]
	     [Author499])
	 (sexo male))

	([Author_697] of Autor
	 (idAutor "697")
	 (nombreAutor "Jonathan Tropper")
	 (autoresSimilares
	     [Author_763]
	     [Author_910]
	     [Author_914]
	     [Author_1072]
	     [Author830])
	 (sexo male))

	([Author_698] of Autor
	 (idAutor "698")
	 (nombreAutor "Robert Goolrick")
	 (autoresSimilares
	     [Author_469]
	     [Author_649]
	     [Author_1070]
	     [Author_748]
	     [Author_478]
	     [Author_680]
	     [Author_209]
	     [Author759])
	 (sexo male))

	([Author_699] of Autor
	 (idAutor "699")
	 (nombreAutor "Colum McCann")
	 (autoresSimilares
	     [Author_841]
	     [Author_546]
	     [Author122])
	 (sexo male))

	([Author_700] of Autor
	 (idAutor "700")
	 (nombreAutor "Katherine Howe")
	 (autoresSimilares
	     [Author_103]
	     [Author_588]
	     [Author_487]
	     [Author_375]
	     [Author_646]
	     [Author_600]
	     [Author37])
	 (sexo female))

	([Author_701] of Autor
	 (idAutor "701")
	 (nombreAutor "V Kelly")
	 (autoresSimilares
	     [Author_509]
	     [Author_1082]
	     [Author_770]
	     [Author_951]
	     [Author_809]
	     [Author258])
	 (sexo male))

	([Author_702] of Autor
	 (idAutor "702")
	 (nombreAutor "Johann Wolfgang von Goethe")
	 (autoresSimilares
	     [Author_917]
	     [Author_381]
	     [Author_269]
	     [Author_1102]
	     [Author_774]
	     [Author_255]
	     [Author_791]
	     [Author_619]
	     [Author_27]
	     [Author_472]
	     [Author_1017]
	     [Author_112]
	     [Author_892]
	     [Author796])
	 (sexo male))

	([Author_703] of Autor
	 (idAutor "703")
	 (nombreAutor "Ivan Turgenev")
	 (autoresSimilares
	     [Author_639]
	     [Author_584]
	     [Author_127]
	     [Author_682]
	     [Author_1025]
	     [Author_65]
	     [Author_486]
	     [Author56])
	 (sexo male))

	([Author_704] of Autor
	 (idAutor "704")
	 (nombreAutor "Honor de Balzac")
	 (autoresSimilares
	     [Author_571]
	     [Author_1032]
	     [Author_863]
	     [Author_946]
	     [Author_317]
	     [Author_922]
	     [Author_547]
	     [Author_684]
	     [Author_723]
	     [Author_1069]
	     [Author634])
	 (sexo male))

	([Author_705] of Autor
	 (idAutor "705")
	 (nombreAutor "Knut Hamsun")
	 (autoresSimilares
	     [Author_182]
	     [Author_222]
	     [Author_19]
	     [Author_572]
	     [Author_179]
	     [Author_474]
	     [Author552])
	 (sexo male))

	([Author_706] of Autor
	 (idAutor "706")
	 (nombreAutor "Henry James")
	 (autoresSimilares
	     [Author_742]
	     [Author_945]
	     [Author_1021]
	     [Author_585]
	     [Author_544]
	     [Author_1005]
	     [Author_220]
	     [Author_931]
	     [Author_560]
	     [Author_537]
	     [Author_710]
	     [Author_162]
	     [Author692])
	 (sexo male))

	([Author_707] of Autor
	 (idAutor "707")
	 (nombreAutor "Nikolai Gogol")
	 (autoresSimilares
	     [Author_508]
	     [Author_160]
	     [Author352])
	 (sexo male))

	([Author_708] of Autor
	 (idAutor "708")
	 (nombreAutor "Stendhal")
	 (autoresSimilares
	     [Author_516]
	     [Author_1064]
	     [Author_104]
	     [Author_807]
	     [Author_1009]
	     [Author157])
	 (sexo male))

	([Author_709] of Autor
	 (idAutor "709")
	 (nombreAutor "Kate Chopin")
	 (autoresSimilares
	     [Author_175]
	     [Author_130]
	     [Author_210]
	     [Author_1096]
	     [Author_779]
	     [Author288])
	 (sexo female))

	([Author_710] of Autor
	 (idAutor "710")
	 (nombreAutor "Anne Bront")
	 (autoresSimilares
	     [Author_923]
	     [Author_407]
	     [Author_136]
	     [Author_985]
	     [Author_715]
	     [Author_871]
	     [Author_493]
	     [Author_1031]
	     [Author_601]
	     [Author_975]
	     [Author_651]
	     [Author_693]
	     [Author_1087]
	     [Author_450]
	     [Author_1096]
	     [Author_1035]
	     [Author_1037]
	     [Author_910]
	     [Author_607]
	     [Author251])
	 (sexo female))

	([Author_711] of Autor
	 (idAutor "711")
	 (nombreAutor "Ali Marsman")
	 (autoresSimilares
	     [Author_228]
	     [Author_238]
	     [Author_1032]
	     [Author_470]
	     [Author_874]
	     [Author_830]
	     [Author_871]
	     [Author_735]
	     [Author_337]
	     [Author_514]
	     [Author220])
	 (sexo female))

	([Author_712] of Autor
	 (idAutor "712")
	 (nombreAutor "Lane Robins")
	 (autoresSimilares
	     [Author_720]
	     [Author195])
	 (sexo female))

	([Author_713] of Autor
	 (idAutor "713")
	 (nombreAutor "Deborah ONeill Cordes")
	 (autoresSimilares
	     [Author_691]
	     [Author_208]
	     [Author_758]
	     [Author_1020]
	     [Author_961]
	     [Author_592]
	     [Author_167]
	     [Author_709]
	     [Author_775]
	     [Author_712]
	     [Author_875]
	     [Author_399]
	     [Author_235]
	     [Author_894]
	     [Author650])
	 (sexo female))

	([Author_714] of Autor
	 (idAutor "714")
	 (nombreAutor "Kevin Brockmeier")
	 (autoresSimilares
	     [Author_695]
	     [Author_287]
	     [Author_98]
	     [Author_977]
	     [Author_286]
	     [Author_259]
	     [Author_283]
	     [Author_766]
	     [Author_720]
	     [Author_53]
	     [Author_573]
	     [Author_665]
	     [Author_13]
	     [Author_1079]
	     [Author_51]
	     [Author_566]
	     [Author_954]
	     [Author_1100]
	     [Author_1057]
	     [Author322])
	 (sexo male))

	([Author_715] of Autor
	 (idAutor "715")
	 (nombreAutor "Alexander Key")
	 (autoresSimilares
	     [Author_937]
	     [Author_145]
	     [Author_908]
	     [Author_467]
	     [Author_992]
	     [Author118])
	 (sexo male))

	([Author_716] of Autor
	 (idAutor "716")
	 (nombreAutor "Jim Harrison")
	 (autoresSimilares
	     [Author_488]
	     [Author_627]
	     [Author_534]
	     [Author_204]
	     [Author_238]
	     [Author_355]
	     [Author_1028]
	     [Author_1091]
	     [Author_52]
	     [Author_770]
	     [Author_997]
	     [Author_972]
	     [Author_148]
	     [Author1002])
	 (sexo male))

	([Author_717] of Autor
	 (idAutor "717")
	 (nombreAutor "Catherine Ryan Hyde")
	 (autoresSimilares
	     [Author_1030]
	     [Author_132]
	     [Author_53]
	     [Author229])
	 (sexo male))

	([Author_718] of Autor
	 (idAutor "718")
	 (nombreAutor "Kji Suzuki")
	 (autoresSimilares
	     [Author_951]
	     [Author_396]
	     [Author_665]
	     [Author_507]
	     [Author_168]
	     [Author_942]
	     [Author_612]
	     [Author_570]
	     [Author_341]
	     [Author_34]
	     [Author_289]
	     [Author_138]
	     [Author_1008]
	     [Author840])
	 (sexo male))

	([Author_719] of Autor
	 (idAutor "719")
	 (nombreAutor "Anne Fine")
	 (autoresSimilares
	     [Author_62]
	     [Author_58]
	     [Author_1066]
	     [Author_351]
	     [Author_251]
	     [Author_651]
	     [Author_33]
	     [Author_56]
	     [Author_427]
	     [Author_745]
	     [Author773])
	 (sexo female))

	([Author_720] of Autor
	 (idAutor "720")
	 (nombreAutor "Christianna Brand")
	 (autoresSimilares
	     [Author_341]
	     [Author_889]
	     [Author_832]
	     [Author_850]
	     [Author_1013]
	     [Author_240]
	     [Author_33]
	     [Author_1078]
	     [Author_616]
	     [Author_1059]
	     [Author151])
	 (sexo female))

	([Author_721] of Autor
	 (idAutor "721")
	 (nombreAutor "NH Kleinbaum")
	 (autoresSimilares
	     [Author_391]
	     [Author_161]
	     [Author_523]
	     [Author_1055]
	     [Author_848]
	     [Author_84]
	     [Author_68]
	     [Author647])
	 (sexo male))

	([Author_722] of Autor
	 (idAutor "722")
	 (nombreAutor "Felix Salten")
	 (autoresSimilares
	     [Author432])
	 (sexo male))

	([Author_723] of Autor
	 (idAutor "723")
	 (nombreAutor "Nicole Snooki Polizzi")
	 (autoresSimilares
	     [Author_498]
	     [Author_375]
	     [Author_945]
	     [Author_565]
	     [Author_1044]
	     [Author_499]
	     [Author_911]
	     [Author_103]
	     [Author_824]
	     [Author_709]
	     [Author_658]
	     [Author_23]
	     [Author489])
	 (sexo female))

	([Author_724] of Autor
	 (idAutor "724")
	 (nombreAutor "Cecily von Ziegesar")
	 (autoresSimilares
	     [Author_268]
	     [Author_919]
	     [Author_882]
	     [Author_1039]
	     [Author_373]
	     [Author_571]
	     [Author_491]
	     [Author_695]
	     [Author_384]
	     [Author_370]
	     [Author251])
	 (sexo female))

	([Author_725] of Autor
	 (idAutor "725")
	 (nombreAutor "GS Jennsen")
	 (autoresSimilares
	     [Author_82]
	     [Author_668]
	     [Author_976]
	     [Author_868]
	     [Author933])
	 (sexo female))

	([Author_726] of Autor
	 (idAutor "726")
	 (nombreAutor "Kenneth Jarrett Singleton")
	 (autoresSimilares
	     [Author_429]
	     [Author86])
	 (sexo male))

	([Author_727] of Autor
	 (idAutor "727")
	 (nombreAutor "Anita Loos")
	 (autoresSimilares
	     [Author_915]
	     [Author_186]
	     [Author_836]
	     [Author_671]
	     [Author_334]
	     [Author_479]
	     [Author_26]
	     [Author_988]
	     [Author_654]
	     [Author_510]
	     [Author_917]
	     [Author_797]
	     [Author_62]
	     [Author_203]
	     [Author573])
	 (sexo female))

	([Author_728] of Autor
	 (idAutor "728")
	 (nombreAutor "Julie Cantrell")
	 (autoresSimilares
	     [Author_42]
	     [Author_251]
	     [Author_344]
	     [Author_519]
	     [Author_334]
	     [Author_1057]
	     [Author_131]
	     [Author_1103]
	     [Author543])
	 (sexo female))

	([Author_729] of Autor
	 (idAutor "729")
	 (nombreAutor "Cristiane Serruya")
	 (autoresSimilares
	     [Author_758]
	     [Author_599]
	     [Author962])
	 (sexo female))

	([Author_730] of Autor
	 (idAutor "730")
	 (nombreAutor "Ceri London")
	 (autoresSimilares
	     [Author_72]
	     [Author_890]
	     [Author_879]
	     [Author_412]
	     [Author_689]
	     [Author_598]
	     [Author_807]
	     [Author_678]
	     [Author_358]
	     [Author_1066]
	     [Author_1093]
	     [Author_409]
	     [Author_147]
	     [Author_665]
	     [Author_753]
	     [Author_955]
	     [Author_29]
	     [Author_90]
	     [Author476])
	 (sexo male))

	([Author_731] of Autor
	 (idAutor "731")
	 (nombreAutor "Sherry Jones")
	 (autoresSimilares
	     [Author_31]
	     [Author_80]
	     [Author_981]
	     [Author_696]
	     [Author_806]
	     [Author_927]
	     [Author_1107]
	     [Author_157]
	     [Author_466]
	     [Author_683]
	     [Author_16]
	     [Author_999]
	     [Author_639]
	     [Author_1064]
	     [Author_554]
	     [Author_547]
	     [Author_273]
	     [Author_458]
	     [Author_930]
	     [Author798])
	 (sexo female))

	([Author_732] of Autor
	 (idAutor "732")
	 (nombreAutor "Terri Giuliano Long")
	 (autoresSimilares
	     [Author_1093]
	     [Author_305]
	     [Author_724]
	     [Author_208]
	     [Author_406]
	     [Author_927]
	     [Author_295]
	     [Author_308]
	     [Author_936]
	     [Author_722]
	     [Author948])
	 (sexo female))

	([Author_733] of Autor
	 (idAutor "733")
	 (nombreAutor "Andrew Seaward")
	 (autoresSimilares
	     [Author_83]
	     [Author_693]
	     [Author_532]
	     [Author308])
	 (sexo male))

	([Author_734] of Autor
	 (idAutor "734")
	 (nombreAutor "James Herbert")
	 (autoresSimilares
	     [Author_457]
	     [Author_431]
	     [Author_60]
	     [Author_885]
	     [Author_322]
	     [Author_256]
	     [Author666])
	 (sexo male))

	([Author_735] of Autor
	 (idAutor "735")
	 (nombreAutor "Clive Barker")
	 (autoresSimilares
	     [Author_1070]
	     [Author_764]
	     [Author_55]
	     [Author_310]
	     [Author_497]
	     [Author_339]
	     [Author_428]
	     [Author975])
	 (sexo male))

	([Author_736] of Autor
	 (idAutor "736")
	 (nombreAutor "Dean R Koontz")
	 (autoresSimilares
	     [Author_48]
	     [Author_764]
	     [Author_657]
	     [Author_995]
	     [Author16])
	 (sexo male))

	([Author_737] of Autor
	 (idAutor "737")
	 (nombreAutor "Thomas Tryon")
	 (autoresSimilares
	     [Author401])
	 (sexo male))

	([Author_738] of Autor
	 (idAutor "738")
	 (nombreAutor "Susan Hill")
	 (autoresSimilares
	     [Author_71]
	     [Author_251]
	     [Author621])
	 (sexo female))

	([Author_739] of Autor
	 (idAutor "739")
	 (nombreAutor "Ira Levin")
	 (autoresSimilares
	     [Author_685]
	     [Author_250]
	     [Author_668]
	     [Author244])
	 (sexo male))

	([Author_740] of Autor
	 (idAutor "740")
	 (nombreAutor "David Seltzer")
	 (autoresSimilares
	     [Author_1092]
	     [Author_1088]
	     [Author_770]
	     [Author_260]
	     [Author_233]
	     [Author_629]
	     [Author766])
	 (sexo male))

	([Author_741] of Autor
	 (idAutor "741")
	 (nombreAutor "Scott B Smith")
	 (autoresSimilares
	     [Author_999]
	     [Author_197]
	     [Author_179]
	     [Author_265]
	     [Author_292]
	     [Author_171]
	     [Author_899]
	     [Author_18]
	     [Author_97]
	     [Author_669]
	     [Author_60]
	     [Author_715]
	     [Author_944]
	     [Author_573]
	     [Author_165]
	     [Author_825]
	     [Author52])
	 (sexo male))

	([Author_742] of Autor
	 (idAutor "742")
	 (nombreAutor "Shirley Jackson")
	 (autoresSimilares
	     [Author_795]
	     [Author_877]
	     [Author_77]
	     [Author_849]
	     [Author_778]
	     [Author_476]
	     [Author_1034]
	     [Author_712]
	     [Author_219]
	     [Author_549]
	     [Author_39]
	     [Author_594]
	     [Author_359]
	     [Author_1065]
	     [Author_485]
	     [Author_202]
	     [Author_1031]
	     [Author_154]
	     [Author201])
	 (sexo female))

	([Author_743] of Autor
	 (idAutor "743")
	 (nombreAutor "Nnedi Okorafor")
	 (autoresSimilares
	     [Author_460]
	     [Author_427]
	     [Author_865]
	     [Author_88]
	     [Author_920]
	     [Author_792]
	     [Author_295]
	     [Author_797]
	     [Author_788]
	     [Author_294]
	     [Author_546]
	     [Author_302]
	     [Author_440]
	     [Author_939]
	     [Author_55]
	     [Author_1026]
	     [Author_638]
	     [Author_584]
	     [Author_151]
	     [Author558])
	 (sexo female))

	([Author_744] of Autor
	 (idAutor "744")
	 (nombreAutor "Anna  Quinn")
	 (autoresSimilares
	     [Author_302]
	     [Author_36]
	     [Author_226]
	     [Author_539]
	     [Author_823]
	     [Author_599]
	     [Author1074])
	 (sexo male))

	([Author_745] of Autor
	 (idAutor "745")
	 (nombreAutor "Eldonna Edwards")
	 (autoresSimilares
	     [Author_818]
	     [Author_521]
	     [Author_102]
	     [Author_628]
	     [Author_562]
	     [Author_358]
	     [Author_969]
	     [Author_538]
	     [Author_340]
	     [Author_1064]
	     [Author_934]
	     [Author_285]
	     [Author_977]
	     [Author_741]
	     [Author_412]
	     [Author_126]
	     [Author_796]
	     [Author_50]
	     [Author928])
	 (sexo female))

	([Author_746] of Autor
	 (idAutor "746")
	 (nombreAutor "Suanne Schafer")
	 (autoresSimilares
	     [Author_556]
	     [Author_752]
	     [Author_968]
	     [Author_25]
	     [Author_316]
	     [Author_1095]
	     [Author_307]
	     [Author_49]
	     [Author_228]
	     [Author_661]
	     [Author_773]
	     [Author_913]
	     [Author_871]
	     [Author_211]
	     [Author_522]
	     [Author_805]
	     [Author_915]
	     [Author_1055]
	     [Author945])
	 (sexo female))

	([Author_747] of Autor
	 (idAutor "747")
	 (nombreAutor "Lyndsay Ely")
	 (autoresSimilares
	     [Author_82]
	     [Author_388]
	     [Author_478]
	     [Author_1067]
	     [Author_152]
	     [Author_272]
	     [Author_1095]
	     [Author_956]
	     [Author_1044]
	     [Author_504]
	     [Author_538]
	     [Author_1060]
	     [Author_1026]
	     [Author_616]
	     [Author_28]
	     [Author_638]
	     [Author_967]
	     [Author_71]
	     [Author554])
	 (sexo male))

	([Author_748] of Autor
	 (idAutor "748")
	 (nombreAutor "Clarissa Goenawan")
	 (autoresSimilares
	     [Author_92]
	     [Author_314]
	     [Author_673]
	     [Author_803]
	     [Author_453]
	     [Author_866]
	     [Author_373]
	     [Author29])
	 (sexo female))

	([Author_749] of Autor
	 (idAutor "749")
	 (nombreAutor "Kimmery Martin")
	 (autoresSimilares
	     [Author_111]
	     [Author_1041]
	     [Author_660]
	     [Author_776]
	     [Author_761]
	     [Author_804]
	     [Author_533]
	     [Author145])
	 (sexo female))

	([Author_750] of Autor
	 (idAutor "750")
	 (nombreAutor "Shay Savage")
	 (autoresSimilares
	     [Author_585]
	     [Author_846]
	     [Author_417]
	     [Author_992]
	     [Author_823]
	     [Author_979]
	     [Author_265]
	     [Author_416]
	     [Author_1033]
	     [Author_798]
	     [Author_921]
	     [Author_316]
	     [Author_888]
	     [Author765])
	 (sexo female))

	([Author_751] of Autor
	 (idAutor "751")
	 (nombreAutor "Amin Maalouf")
	 (autoresSimilares
	     [Author_1034]
	     [Author_535]
	     [Author_665]
	     [Author_1073]
	     [Author_1]
	     [Author_546]
	     [Author481])
	 (sexo male))

	([Author_752] of Autor
	 (idAutor "752")
	 (nombreAutor "Tayeb Salih")
	 (autoresSimilares
	     [Author_856]
	     [Author_306]
	     [Author_693]
	     [Author371])
	 (sexo male))

	([Author_753] of Autor
	 (idAutor "753")
	 (nombreAutor "Dawn  Robertson")
	 (autoresSimilares
	     [Author_892]
	     [Author923])
	 (sexo female))

	([Author_754] of Autor
	 (idAutor "754")
	 (nombreAutor "Dodie Smith")
	 (autoresSimilares
	     [Author_760]
	     [Author_699]
	     [Author_462]
	     [Author_1068]
	     [Author_282]
	     [Author_732]
	     [Author_874]
	     [Author_176]
	     [Author_564]
	     [Author_163]
	     [Author_27]
	     [Author_141]
	     [Author_901]
	     [Author_840]
	     [Author_585]
	     [Author_933]
	     [Author_287]
	     [Author_602]
	     [Author_683]
	     [Author507])
	 (sexo female))

	([Author_755] of Autor
	 (idAutor "755")
	 (nombreAutor "Marge Piercy")
	 (autoresSimilares
	     [Author_889]
	     [Author_132]
	     [Author_346]
	     [Author_1061]
	     [Author_729]
	     [Author_1022]
	     [Author_1101]
	     [Author_1098]
	     [Author745])
	 (sexo female))

	([Author_756] of Autor
	 (idAutor "756")
	 (nombreAutor "Lorna Landvik")
	 (autoresSimilares
	     [Author_21]
	     [Author573])
	 (sexo female))

	([Author_757] of Autor
	 (idAutor "757")
	 (nombreAutor "Arkady Strugatsky")
	 (autoresSimilares
	     [Author_991]
	     [Author_141]
	     [Author_873]
	     [Author_877]
	     [Author_1101]
	     [Author_496]
	     [Author_748]
	     [Author_298]
	     [Author_660]
	     [Author_1020]
	     [Author_699]
	     [Author_47]
	     [Author_323]
	     [Author_386]
	     [Author_915]
	     [Author_41]
	     [Author_501]
	     [Author264])
	 (sexo male))

	([Author_758] of Autor
	 (idAutor "758")
	 (nombreAutor "Clifford D Simak")
	 (autoresSimilares
	     [Author_943]
	     [Author_225]
	     [Author_859]
	     [Author_576]
	     [Author_271]
	     [Author_541]
	     [Author_1038]
	     [Author_171]
	     [Author_916]
	     [Author_776]
	     [Author_605]
	     [Author_1042]
	     [Author_974]
	     [Author_958]
	     [Author912])
	 (sexo male))

	([Author_759] of Autor
	 (idAutor "759")
	 (nombreAutor "Edgar Rice Burroughs")
	 (autoresSimilares
	     [Author1047])
	 (sexo male))

	([Author_760] of Autor
	 (idAutor "760")
	 (nombreAutor "Upton Sinclair")
	 (autoresSimilares
	     [Author_534]
	     [Author596])
	 (sexo male))

	([Author_761] of Autor
	 (idAutor "761")
	 (nombreAutor "Marian Keyes")
	 (autoresSimilares
	     [Author_933]
	     [Author_604]
	     [Author138])
	 (sexo female))

	([Author_762] of Autor
	 (idAutor "762")
	 (nombreAutor "Plum Sykes")
	 (autoresSimilares
	     [Author570])
	 (sexo male))

	([Author_763] of Autor
	 (idAutor "763")
	 (nombreAutor "Shanna Swendson")
	 (autoresSimilares
	     [Author_867]
	     [Author_465]
	     [Author_952]
	     [Author791])
	 (sexo female))

	([Author_764] of Autor
	 (idAutor "764")
	 (nombreAutor "Hester Browne")
	 (autoresSimilares
	     [Author_1062]
	     [Author_1046]
	     [Author_255]
	     [Author445])
	 (sexo male))

	([Author_765] of Autor
	 (idAutor "765")
	 (nombreAutor "Jane Green")
	 (autoresSimilares
	     [Author_722]
	     [Author_575]
	     [Author_793]
	     [Author_599]
	     [Author_691]
	     [Author_751]
	     [Author_141]
	     [Author_0]
	     [Author_533]
	     [Author_608]
	     [Author_860]
	     [Author_70]
	     [Author847])
	 (sexo female))

	([Author_766] of Autor
	 (idAutor "766")
	 (nombreAutor "Gemma Burgess")
	 (autoresSimilares
	     [Author_777]
	     [Author_116]
	     [Author_59]
	     [Author_910]
	     [Author_100]
	     [Author_310]
	     [Author_1082]
	     [Author_489]
	     [Author_361]
	     [Author550])
	 (sexo male))

	([Author_767] of Autor
	 (idAutor "767")
	 (nombreAutor "Morgan ONeill")
	 (autoresSimilares
	     [Author_291]
	     [Author_394]
	     [Author_693]
	     [Author_4]
	     [Author_468]
	     [Author_29]
	     [Author_1063]
	     [Author_901]
	     [Author_262]
	     [Author_163]
	     [Author_819]
	     [Author_448]
	     [Author127])
	 (sexo male))

	([Author_768] of Autor
	 (idAutor "768")
	 (nombreAutor "Flix J Palma")
	 (autoresSimilares
	     [Author_1037]
	     [Author_702]
	     [Author_620]
	     [Author_26]
	     [Author_331]
	     [Author_289]
	     [Author_358]
	     [Author_486]
	     [Author_1054]
	     [Author_123]
	     [Author_765]
	     [Author_381]
	     [Author_359]
	     [Author_20]
	     [Author_41]
	     [Author_1080]
	     [Author_822]
	     [Author159])
	 (sexo male))

	([Author_769] of Autor
	 (idAutor "769")
	 (nombreAutor "Rysa Walker")
	 (autoresSimilares
	     [Author_248]
	     [Author_1043]
	     [Author_533]
	     [Author147])
	 (sexo female))

	([Author_770] of Autor
	 (idAutor "770")
	 (nombreAutor "Stephen Baxter")
	 (autoresSimilares
	     [Author_155]
	     [Author_783]
	     [Author_911]
	     [Author_16]
	     [Author_592]
	     [Author_278]
	     [Author_1092]
	     [Author_1055]
	     [Author516])
	 (sexo male))

	([Author_771] of Autor
	 (idAutor "771")
	 (nombreAutor "Dinah Lee Kng")
	 (autoresSimilares
	     [Author844])
	 (sexo male))

	([Author_772] of Autor
	 (idAutor "772")
	 (nombreAutor "Harry Turtledove")
	 (autoresSimilares
	     [Author_14]
	     [Author_855]
	     [Author966])
	 (sexo male))

	([Author_773] of Autor
	 (idAutor "773")
	 (nombreAutor "Poul Anderson")
	 (autoresSimilares
	     [Author_54]
	     [Author_75]
	     [Author_41]
	     [Author_366]
	     [Author_55]
	     [Author_540]
	     [Author_594]
	     [Author_438]
	     [Author_721]
	     [Author_1007]
	     [Author_1071]
	     [Author_733]
	     [Author_78]
	     [Author_32]
	     [Author_785]
	     [Author_1026]
	     [Author_185]
	     [Author_380]
	     [Author247])
	 (sexo male))

	([Author_774] of Autor
	 (idAutor "774")
	 (nombreAutor "L Sprague de Camp")
	 (autoresSimilares
	     [Author_714]
	     [Author_375]
	     [Author_238]
	     [Author_484]
	     [Author_731]
	     [Author_196]
	     [Author_289]
	     [Author_572]
	     [Author_871]
	     [Author_672]
	     [Author_95]
	     [Author_439]
	     [Author502])
	 (sexo male))

	([Author_775] of Autor
	 (idAutor "775")
	 (nombreAutor "Alan Lightman")
	 (autoresSimilares
	     [Author_1104]
	     [Author_248]
	     [Author_957]
	     [Author_753]
	     [Author_174]
	     [Author_831]
	     [Author_939]
	     [Author_943]
	     [Author_498]
	     [Author_100]
	     [Author597])
	 (sexo male))

	([Author_776] of Autor
	 (idAutor "776")
	 (nombreAutor "Jodi Taylor")
	 (autoresSimilares
	     [Author_615]
	     [Author_120]
	     [Author_962]
	     [Author202])
	 (sexo female))

	([Author_777] of Autor
	 (idAutor "777")
	 (nombreAutor "Stephen R Lawhead")
	 (autoresSimilares
	     [Author518])
	 (sexo male))

	([Author_778] of Autor
	 (idAutor "778")
	 (nombreAutor "Harlan Ellison")
	 (autoresSimilares
	     [Author_680]
	     [Author_605]
	     [Author_625]
	     [Author_345]
	     [Author_108]
	     [Author_931]
	     [Author_223]
	     [Author_1002]
	     [Author1050])
	 (sexo male))

	([Author_779] of Autor
	 (idAutor "779")
	 (nombreAutor "Kage Baker")
	 (autoresSimilares
	     [Author_797]
	     [Author_289]
	     [Author_344]
	     [Author_641]
	     [Author_16]
	     [Author_253]
	     [Author_379]
	     [Author_873]
	     [Author_852]
	     [Author_42]
	     [Author_573]
	     [Author_782]
	     [Author_761]
	     [Author_681]
	     [Author_812]
	     [Author_1040]
	     [Author_931]
	     [Author_167]
	     [Author_546]
	     [Author522])
	 (sexo male))

	([Author_780] of Autor
	 (idAutor "780")
	 (nombreAutor "SM Stirling")
	 (autoresSimilares
	     [Author_712]
	     [Author_851]
	     [Author_737]
	     [Author392])
	 (sexo male))

	([Author_781] of Autor
	 (idAutor "781")
	 (nombreAutor "Gregory Benford")
	 (autoresSimilares
	     [Author_352]
	     [Author_434]
	     [Author_890]
	     [Author479])
	 (sexo male))

	([Author_782] of Autor
	 (idAutor "782")
	 (nombreAutor "Eric Flint")
	 (autoresSimilares
	     [Author_447]
	     [Author_185]
	     [Author_60]
	     [Author_241]
	     [Author_710]
	     [Author_260]
	     [Author991])
	 (sexo male))

	([Author_783] of Autor
	 (idAutor "783")
	 (nombreAutor "Rebecca Stead")
	 (autoresSimilares
	     [Author_804]
	     [Author_1022]
	     [Author_557]
	     [Author507])
	 (sexo male))

	([Author_784] of Autor
	 (idAutor "784")
	 (nombreAutor "Jack Finney")
	 (autoresSimilares
	     [Author_837]
	     [Author_274]
	     [Author_553]
	     [Author_233]
	     [Author_1038]
	     [Author_404]
	     [Author_591]
	     [Author229])
	 (sexo male))

	([Author_785] of Autor
	 (idAutor "785")
	 (nombreAutor "Claire North")
	 (autoresSimilares
	     [Author_569]
	     [Author_161]
	     [Author_470]
	     [Author_302]
	     [Author_247]
	     [Author_560]
	     [Author_429]
	     [Author5])
	 (sexo female))

	([Author_786] of Autor
	 (idAutor "786")
	 (nombreAutor "Marlys Millhiser")
	 (autoresSimilares
	     [Author_433]
	     [Author_880]
	     [Author_61]
	     [Author_675]
	     [Author_1036]
	     [Author_720]
	     [Author_119]
	     [Author_444]
	     [Author_497]
	     [Author_419]
	     [Author_665]
	     [Author_229]
	     [Author_155]
	     [Author1038])
	 (sexo female))

	([Author_787] of Autor
	 (idAutor "787")
	 (nombreAutor "Ken Grimwood")
	 (autoresSimilares
	     [Author_1087]
	     [Author_495]
	     [Author_329]
	     [Author_270]
	     [Author_11]
	     [Author_1085]
	     [Author_713]
	     [Author_501]
	     [Author_1106]
	     [Author_414]
	     [Author_492]
	     [Author450])
	 (sexo male))

	([Author_788] of Autor
	 (idAutor "788")
	 (nombreAutor "Alexandra Ripley")
	 (autoresSimilares
	     [Author_222]
	     [Author_195]
	     [Author176])
	 (sexo female))

	([Author_789] of Autor
	 (idAutor "789")
	 (nombreAutor "Melissa Foster")
	 (autoresSimilares
	     [Author_776]
	     [Author_107]
	     [Author_455]
	     [Author_1052]
	     [Author_895]
	     [Author_525]
	     [Author_294]
	     [Author_159]
	     [Author_19]
	     [Author_912]
	     [Author_246]
	     [Author_469]
	     [Author_1060]
	     [Author_198]
	     [Author_836]
	     [Author_1010]
	     [Author890])
	 (sexo female))

	([Author_790] of Autor
	 (idAutor "790")
	 (nombreAutor "Tammy Robinson")
	 (autoresSimilares
	     [Author_112]
	     [Author_122]
	     [Author_418]
	     [Author_499]
	     [Author1073])
	 (sexo female))

	([Author_791] of Autor
	 (idAutor "791")
	 (nombreAutor "Andrew E Kaufman")
	 (autoresSimilares
	     [Author_660]
	     [Author_219]
	     [Author_1066]
	     [Author_560]
	     [Author_929]
	     [Author_91]
	     [Author_510]
	     [Author_544]
	     [Author_993]
	     [Author_555]
	     [Author_1096]
	     [Author_568]
	     [Author_652]
	     [Author468])
	 (sexo male))

	([Author_792] of Autor
	 (idAutor "792")
	 (nombreAutor "Thom  Stark")
	 (autoresSimilares
	     [Author_698]
	     [Author_997]
	     [Author_810]
	     [Author_845]
	     [Author71])
	 (sexo male))

	([Author_793] of Autor
	 (idAutor "793")
	 (nombreAutor "Sara Furlong Burr")
	 (autoresSimilares
	     [Author_242]
	     [Author_556]
	     [Author_449]
	     [Author_344]
	     [Author_703]
	     [Author_1059]
	     [Author_224]
	     [Author_1083]
	     [Author659])
	 (sexo female))

	([Author_794] of Autor
	 (idAutor "794")
	 (nombreAutor "Chris   Rose")
	 (autoresSimilares
	     [Author_51]
	     [Author_588]
	     [Author_796]
	     [Author_256]
	     [Author_147]
	     [Author_973]
	     [Author_586]
	     [Author_281]
	     [Author_1085]
	     [Author681])
	 (sexo female))

	([Author_795] of Autor
	 (idAutor "795")
	 (nombreAutor "Heide Goody")
	 (autoresSimilares
	     [Author_134]
	     [Author_104]
	     [Author_739]
	     [Author_1062]
	     [Author_1018]
	     [Author_756]
	     [Author_692]
	     [Author_1023]
	     [Author_447]
	     [Author_741]
	     [Author_586]
	     [Author_540]
	     [Author_345]
	     [Author_462]
	     [Author_754]
	     [Author_1091]
	     [Author_34]
	     [Author_232]
	     [Author_1105]
	     [Author463])
	 (sexo male))

	([Author_796] of Autor
	 (idAutor "796")
	 (nombreAutor "Karen Luellen")
	 (autoresSimilares
	     [Author_239]
	     [Author_631]
	     [Author756])
	 (sexo female))

	([Author_797] of Autor
	 (idAutor "797")
	 (nombreAutor "Liane Moriarty")
	 (autoresSimilares
	     [Author_41]
	     [Author_955]
	     [Author_632]
	     [Author_1047]
	     [Author_463]
	     [Author_580]
	     [Author_581]
	     [Author913])
	 (sexo female))

	([Author_798] of Autor
	 (idAutor "798")
	 (nombreAutor "Nelson DeMille")
	 (autoresSimilares
	     [Author_1002]
	     [Author_1066]
	     [Author_394]
	     [Author_420]
	     [Author_321]
	     [Author_821]
	     [Author_1095]
	     [Author_265]
	     [Author290])
	 (sexo male))

	([Author_799] of Autor
	 (idAutor "799")
	 (nombreAutor "Ted Bernal Guevara")
	 (autoresSimilares
	     [Author_954]
	     [Author_907]
	     [Author_569]
	     [Author_779]
	     [Author_196]
	     [Author_586]
	     [Author_330]
	     [Author_509]
	     [Author_854]
	     [Author_71]
	     [Author_810]
	     [Author_369]
	     [Author_797]
	     [Author_324]
	     [Author950])
	 (sexo male))

	([Author_800] of Autor
	 (idAutor "800")
	 (nombreAutor "David Baldacci")
	 (autoresSimilares
	     [Author_77]
	     [Author_0]
	     [Author_1031]
	     [Author_366]
	     [Author_434]
	     [Author_370]
	     [Author_495]
	     [Author_611]
	     [Author_202]
	     [Author_561]
	     [Author_132]
	     [Author_1010]
	     [Author_779]
	     [Author_368]
	     [Author_923]
	     [Author_798]
	     [Author_473]
	     [Author_955]
	     [Author_844]
	     [Author62])
	 (sexo male))

	([Author_801] of Autor
	 (idAutor "801")
	 (nombreAutor "William Diehl")
	 (autoresSimilares
	     [Author_193]
	     [Author_440]
	     [Author_964]
	     [Author_817]
	     [Author_307]
	     [Author_612]
	     [Author_373]
	     [Author_928]
	     [Author_548]
	     [Author_929]
	     [Author_131]
	     [Author_622]
	     [Author288])
	 (sexo male))

	([Author_802] of Autor
	 (idAutor "802")
	 (nombreAutor "Alexa Donne")
	 (autoresSimilares
	     [Author_821]
	     [Author_264]
	     [Author_770]
	     [Author_277]
	     [Author1090])
	 (sexo male))

	([Author_803] of Autor
	 (idAutor "803")
	 (nombreAutor "Tony Perez-Giese")
	 (autoresSimilares
	     [Author_758]
	     [Author_192]
	     [Author_849]
	     [Author_261]
	     [Author_134]
	     [Author_833]
	     [Author_94]
	     [Author_333]
	     [Author_743]
	     [Author_891]
	     [Author_350]
	     [Author_1071]
	     [Author_961]
	     [Author_626]
	     [Author259])
	 (sexo male))

	([Author_804] of Autor
	 (idAutor "804")
	 (nombreAutor "Cindy Spencer Pape")
	 (autoresSimilares
	     [Author_809]
	     [Author_601]
	     [Author_649]
	     [Author_66]
	     [Author_521]
	     [Author_1019]
	     [Author_344]
	     [Author780])
	 (sexo female))

	([Author_805] of Autor
	 (idAutor "805")
	 (nombreAutor "Catherine Bybee")
	 (autoresSimilares
	     [Author_1023]
	     [Author_611]
	     [Author_117]
	     [Author_1086]
	     [Author_341]
	     [Author_27]
	     [Author_715]
	     [Author_320]
	     [Author_653]
	     [Author_949]
	     [Author_656]
	     [Author_39]
	     [Author_561]
	     [Author_854]
	     [Author_716]
	     [Author_60]
	     [Author_751]
	     [Author283])
	 (sexo female))

	([Author_806] of Autor
	 (idAutor "806")
	 (nombreAutor "Jo Barrett")
	 (autoresSimilares
	     [Author_1031]
	     [Author_71]
	     [Author_867]
	     [Author_384]
	     [Author_698]
	     [Author_495]
	     [Author_502]
	     [Author_29]
	     [Author_958]
	     [Author1073])
	 (sexo female))

	([Author_807] of Autor
	 (idAutor "807")
	 (nombreAutor "Caroline B Cooney")
	 (autoresSimilares
	     [Author_42]
	     [Author_619]
	     [Author_643]
	     [Author_251]
	     [Author_849]
	     [Author_166]
	     [Author_1060]
	     [Author_452]
	     [Author_826]
	     [Author_1025]
	     [Author_508]
	     [Author_90]
	     [Author_880]
	     [Author_1061]
	     [Author605])
	 (sexo female))

	([Author_808] of Autor
	 (idAutor "808")
	 (nombreAutor "Sandra Hill")
	 (autoresSimilares
	     [Author_414]
	     [Author_1042]
	     [Author_912]
	     [Author_83]
	     [Author_54]
	     [Author_192]
	     [Author_1089]
	     [Author_891]
	     [Author_365]
	     [Author_970]
	     [Author_105]
	     [Author_1101]
	     [Author_634]
	     [Author_227]
	     [Author_954]
	     [Author_130]
	     [Author_173]
	     [Author_514]
	     [Author_858]
	     [Author452])
	 (sexo female))

	([Author_809] of Autor
	 (idAutor "809")
	 (nombreAutor "Tammy Tate")
	 (autoresSimilares
	     [Author_290]
	     [Author232])
	 (sexo female))

	([Author_810] of Autor
	 (idAutor "810")
	 (nombreAutor "Laura Hunsaker")
	 (autoresSimilares
	     [Author_794]
	     [Author_592]
	     [Author_930]
	     [Author_1071]
	     [Author_490]
	     [Author_190]
	     [Author_812]
	     [Author_560]
	     [Author1091])
	 (sexo male))

	([Author_811] of Autor
	 (idAutor "811")
	 (nombreAutor "Suzanne Frank")
	 (autoresSimilares
	     [Author_507]
	     [Author_845]
	     [Author_822]
	     [Author_1022]
	     [Author30])
	 (sexo female))

	([Author_812] of Autor
	 (idAutor "812")
	 (nombreAutor "Anita Clenney")
	 (autoresSimilares
	     [Author_712]
	     [Author_532]
	     [Author_1056]
	     [Author318])
	 (sexo female))

	([Author_813] of Autor
	 (idAutor "813")
	 (nombreAutor "Shelly Thacker")
	 (autoresSimilares
	     [Author_800]
	     [Author_448]
	     [Author_326]
	     [Author_224]
	     [Author_934]
	     [Author_857]
	     [Author_264]
	     [Author_528]
	     [Author_86]
	     [Author_1105]
	     [Author_457]
	     [Author_656]
	     [Author403])
	 (sexo female))

	([Author_814] of Autor
	 (idAutor "814")
	 (nombreAutor "Linda Lael Miller")
	 (autoresSimilares
	     [Author_1068]
	     [Author_170]
	     [Author_358]
	     [Author_408]
	     [Author_229]
	     [Author_824]
	     [Author_410]
	     [Author_138]
	     [Author_497]
	     [Author_568]
	     [Author_441]
	     [Author_964]
	     [Author_67]
	     [Author_84]
	     [Author_878]
	     [Author_385]
	     [Author781])
	 (sexo female))

	([Author_815] of Autor
	 (idAutor "815")
	 (nombreAutor "June Kramin")
	 (autoresSimilares
	     [Author_305]
	     [Author_289]
	     [Author_73]
	     [Author_765]
	     [Author_1093]
	     [Author_556]
	     [Author_70]
	     [Author_854]
	     [Author_564]
	     [Author_575]
	     [Author_1068]
	     [Author_441]
	     [Author_448]
	     [Author_495]
	     [Author1018])
	 (sexo female))

	([Author_816] of Autor
	 (idAutor "816")
	 (nombreAutor "Lisa Tawn Bergren")
	 (autoresSimilares
	     [Author_309]
	     [Author_957]
	     [Author_14]
	     [Author_241]
	     [Author532])
	 (sexo male))

	([Author_817] of Autor
	 (idAutor "817")
	 (nombreAutor "Jane Goodger")
	 (autoresSimilares
	     [Author_296]
	     [Author_31]
	     [Author_707]
	     [Author_837]
	     [Author_188]
	     [Author_1040]
	     [Author_726]
	     [Author_738]
	     [Author_59]
	     [Author239])
	 (sexo male))

	([Author_818] of Autor
	 (idAutor "818")
	 (nombreAutor "Monique Martin")
	 (autoresSimilares
	     [Author_72]
	     [Author_913]
	     [Author_636]
	     [Author_570]
	     [Author_630]
	     [Author_63]
	     [Author_587]
	     [Author_568]
	     [Author_595]
	     [Author857])
	 (sexo female))

	([Author_819] of Autor
	 (idAutor "819")
	 (nombreAutor "Beatriz Williams")
	 (autoresSimilares
	     [Author_815]
	     [Author_270]
	     [Author456])
	 (sexo male))

	([Author_820] of Autor
	 (idAutor "820")
	 (nombreAutor "Katherine Lowry Logan")
	 (autoresSimilares
	     [Author_166]
	     [Author_433]
	     [Author_13]
	     [Author_306]
	     [Author_595]
	     [Author_806]
	     [Author943])
	 (sexo female))

	([Author_821] of Autor
	 (idAutor "821")
	 (nombreAutor "Constance ODay-Flannery")
	 (autoresSimilares
	     [Author_67]
	     [Author_252]
	     [Author_523]
	     [Author_341]
	     [Author_599]
	     [Author_374]
	     [Author421])
	 (sexo female))

	([Author_822] of Autor
	 (idAutor "822")
	 (nombreAutor "Teresa Medeiros")
	 (autoresSimilares
	     [Author_523]
	     [Author_681]
	     [Author_914]
	     [Author_522]
	     [Author_255]
	     [Author_337]
	     [Author_63]
	     [Author_207]
	     [Author_958]
	     [Author_532]
	     [Author_537]
	     [Author_935]
	     [Author_252]
	     [Author_949]
	     [Author_889]
	     [Author_1023]
	     [Author_577]
	     [Author_1046]
	     [Author_915]
	     [Author1035])
	 (sexo female))

	([Author_823] of Autor
	 (idAutor "823")
	 (nombreAutor "Melissa Mayhue")
	 (autoresSimilares
	     [Author_651]
	     [Author_1087]
	     [Author_526]
	     [Author_334]
	     [Author887])
	 (sexo female))

	([Author_824] of Autor
	 (idAutor "824")
	 (nombreAutor "Flannery OConnor")
	 (autoresSimilares
	     [Author_989]
	     [Author_899]
	     [Author_1059]
	     [Author_519]
	     [Author_38]
	     [Author_44]
	     [Author_902]
	     [Author_394]
	     [Author_293]
	     [Author_705]
	     [Author_270]
	     [Author_525]
	     [Author_1024]
	     [Author_475]
	     [Author_466]
	     [Author_793]
	     [Author265])
	 (sexo female))

	([Author_825] of Autor
	 (idAutor "825")
	 (nombreAutor "Carson McCullers")
	 (autoresSimilares
	     [Author_939]
	     [Author_310]
	     [Author_238]
	     [Author_355]
	     [Author_123]
	     [Author_887]
	     [Author_497]
	     [Author_772]
	     [Author_329]
	     [Author_567]
	     [Author_614]
	     [Author_1107]
	     [Author_93]
	     [Author_337]
	     [Author_100]
	     [Author_418]
	     [Author_685]
	     [Author519])
	 (sexo female))

	([Author_826] of Autor
	 (idAutor "826")
	 (nombreAutor "Audrey Grey")
	 (autoresSimilares
	     [Author_239]
	     [Author_1105]
	     [Author_476]
	     [Author_777]
	     [Author_1031]
	     [Author_182]
	     [Author_434]
	     [Author_643]
	     [Author_1051]
	     [Author_669]
	     [Author_863]
	     [Author_813]
	     [Author_112]
	     [Author_902]
	     [Author_769]
	     [Author152])
	 (sexo male))

	([Author_827] of Autor
	 (idAutor "827")
	 (nombreAutor "Mary Brown")
	 (autoresSimilares
	     [Author_53]
	     [Author_902]
	     [Author_708]
	     [Author_848]
	     [Author_105]
	     [Author_788]
	     [Author683])
	 (sexo male))

	([Author_828] of Autor
	 (idAutor "828")
	 (nombreAutor "Gwendolyn Field")
	 (autoresSimilares
	     [Author_1009]
	     [Author_494]
	     [Author_863]
	     [Author_885]
	     [Author_962]
	     [Author_693]
	     [Author_448]
	     [Author371])
	 (sexo male))

	([Author_829] of Autor
	 (idAutor "829")
	 (nombreAutor "Abi Ketner")
	 (autoresSimilares
	     [Author_889]
	     [Author_177]
	     [Author_1088]
	     [Author_910]
	     [Author_581]
	     [Author_81]
	     [Author87])
	 (sexo female))

	([Author_830] of Autor
	 (idAutor "830")
	 (nombreAutor "Magda Alexander")
	 (autoresSimilares
	     [Author_315]
	     [Author_608]
	     [Author_960]
	     [Author_362]
	     [Author_163]
	     [Author_240]
	     [Author249])
	 (sexo male))

	([Author_831] of Autor
	 (idAutor "831")
	 (nombreAutor "KI Lynn")
	 (autoresSimilares
	     [Author_1107]
	     [Author_1045]
	     [Author328])
	 (sexo female))

	([Author_832] of Autor
	 (idAutor "832")
	 (nombreAutor "Daniel Silva")
	 (autoresSimilares
	     [Author_930]
	     [Author_209]
	     [Author_429]
	     [Author_695]
	     [Author_462]
	     [Author_997]
	     [Author_1046]
	     [Author_986]
	     [Author_989]
	     [Author_8]
	     [Author_423]
	     [Author_860]
	     [Author_53]
	     [Author_1103]
	     [Author_682]
	     [Author556])
	 (sexo male))

	([Author_833] of Autor
	 (idAutor "833")
	 (nombreAutor "Trevanian")
	 (autoresSimilares
	     [Author_311]
	     [Author_347]
	     [Author588])
	 (sexo male))

	([Author_834] of Autor
	 (idAutor "834")
	 (nombreAutor "Lawrence Block")
	 (autoresSimilares
	     [Author_769]
	     [Author_139]
	     [Author_318]
	     [Author_471]
	     [Author_1034]
	     [Author_588]
	     [Author_767]
	     [Author_230]
	     [Author_348]
	     [Author_1013]
	     [Author_25]
	     [Author_955]
	     [Author_943]
	     [Author_411]
	     [Author_141]
	     [Author_897]
	     [Author387])
	 (sexo male))

	([Author_835] of Autor
	 (idAutor "835")
	 (nombreAutor "Barry Eisler")
	 (autoresSimilares
	     [Author_679]
	     [Author_955]
	     [Author_1083]
	     [Author_825]
	     [Author_208]
	     [Author_633]
	     [Author_715]
	     [Author_841]
	     [Author_795]
	     [Author_104]
	     [Author_935]
	     [Author_191]
	     [Author_730]
	     [Author_665]
	     [Author_394]
	     [Author_1046]
	     [Author_339]
	     [Author464])
	 (sexo male))

	([Author_836] of Autor
	 (idAutor "836")
	 (nombreAutor "Colson Whitehead")
	 (autoresSimilares
	     [Author_606]
	     [Author_587]
	     [Author_1019]
	     [Author_21]
	     [Author_559]
	     [Author_920]
	     [Author_267]
	     [Author_817]
	     [Author_503]
	     [Author_789]
	     [Author_320]
	     [Author_1032]
	     [Author_859]
	     [Author_719]
	     [Author_205]
	     [Author_1104]
	     [Author222])
	 (sexo male))

	([Author_837] of Autor
	 (idAutor "837")
	 (nombreAutor "Isaac Marion")
	 (autoresSimilares
	     [Author_1038]
	     [Author_70]
	     [Author_1042]
	     [Author_343]
	     [Author_814]
	     [Author_78]
	     [Author_284]
	     [Author_955]
	     [Author_258]
	     [Author_668]
	     [Author_293]
	     [Author_0]
	     [Author_619]
	     [Author_568]
	     [Author_150]
	     [Author153])
	 (sexo male))

	([Author_838] of Autor
	 (idAutor "838")
	 (nombreAutor "Peter Golden")
	 (autoresSimilares
	     [Author_169]
	     [Author_429]
	     [Author_583]
	     [Author_366]
	     [Author_441]
	     [Author_573]
	     [Author_635]
	     [Author_594]
	     [Author_974]
	     [Author_560]
	     [Author_858]
	     [Author_750]
	     [Author_593]
	     [Author_699]
	     [Author1106])
	 (sexo male))

	([Author_839] of Autor
	 (idAutor "839")
	 (nombreAutor "Cynthia B Ainsworthe")
	 (autoresSimilares
	     [Author_565]
	     [Author_52]
	     [Author_158]
	     [Author_29]
	     [Author_726]
	     [Author_137]
	     [Author_271]
	     [Author_421]
	     [Author_919]
	     [Author_611]
	     [Author_930]
	     [Author_1090]
	     [Author1107])
	 (sexo female))

	([Author_840] of Autor
	 (idAutor "840")
	 (nombreAutor "Janet E Morris")
	 (autoresSimilares
	     [Author_394]
	     [Author_48]
	     [Author204])
	 (sexo female))

	([Author_841] of Autor
	 (idAutor "841")
	 (nombreAutor "Joan W Blos")
	 (autoresSimilares
	     [Author_442]
	     [Author_591]
	     [Author_377]
	     [Author_100]
	     [Author_771]
	     [Author_251]
	     [Author369])
	 (sexo male))

	([Author_842] of Autor
	 (idAutor "842")
	 (nombreAutor "Julieanne Lynch")
	 (autoresSimilares
	     [Author_946]
	     [Author_63]
	     [Author_109]
	     [Author_1018]
	     [Author_234]
	     [Author_64]
	     [Author_91]
	     [Author_755]
	     [Author_156]
	     [Author_486]
	     [Author_841]
	     [Author_1086]
	     [Author_401]
	     [Author_231]
	     [Author_341]
	     [Author_1102]
	     [Author_237]
	     [Author1000])
	 (sexo female))

	([Author_843] of Autor
	 (idAutor "843")
	 (nombreAutor "Ashley S Clancy")
	 (autoresSimilares
	     [Author_282]
	     [Author_122]
	     [Author_459]
	     [Author_393]
	     [Author_238]
	     [Author_47]
	     [Author_35]
	     [Author_1055]
	     [Author_964]
	     [Author_178]
	     [Author_696]
	     [Author_581]
	     [Author712])
	 (sexo male))

	([Author_844] of Autor
	 (idAutor "844")
	 (nombreAutor "Skye Warren")
	 (autoresSimilares
	     [Author_445]
	     [Author_542]
	     [Author_109]
	     [Author_1014]
	     [Author677])
	 (sexo male))

	([Author_845] of Autor
	 (idAutor "845")
	 (nombreAutor "Nina  Levine")
	 (autoresSimilares
	     [Author_752]
	     [Author_524]
	     [Author_684]
	     [Author_961]
	     [Author318])
	 (sexo female))

	([Author_846] of Autor
	 (idAutor "846")
	 (nombreAutor "Varian Krylov")
	 (autoresSimilares
	     [Author_778]
	     [Author_495]
	     [Author_326]
	     [Author_507]
	     [Author_439]
	     [Author_800]
	     [Author_715]
	     [Author_839]
	     [Author_637]
	     [Author_365]
	     [Author_437]
	     [Author_997]
	     [Author_539]
	     [Author_1048]
	     [Author_119]
	     [Author432])
	 (sexo male))

	([Author_847] of Autor
	 (idAutor "847")
	 (nombreAutor "CD Reiss")
	 (autoresSimilares
	     [Author_135]
	     [Author_25]
	     [Author_941]
	     [Author_1018]
	     [Author_962]
	     [Author_365]
	     [Author_174]
	     [Author_59]
	     [Author_499]
	     [Author_263]
	     [Author_828]
	     [Author_981]
	     [Author_986]
	     [Author_766]
	     [Author_717]
	     [Author952])
	 (sexo female))

	([Author_848] of Autor
	 (idAutor "848")
	 (nombreAutor "Lucian Bane")
	 (autoresSimilares
	     [Author_776]
	     [Author_1064]
	     [Author_762]
	     [Author_1096]
	     [Author_265]
	     [Author_630]
	     [Author_650]
	     [Author_649]
	     [Author_557]
	     [Author_400]
	     [Author_912]
	     [Author_471]
	     [Author_1068]
	     [Author_416]
	     [Author407])
	 (sexo male))

	([Author_849] of Autor
	 (idAutor "849")
	 (nombreAutor "Shashi Tharoor")
	 (autoresSimilares
	     [Author_997]
	     [Author_977]
	     [Author_896]
	     [Author682])
	 (sexo male))

	([Author_850] of Autor
	 (idAutor "850")
	 (nombreAutor "Jessie B Tyson")
	 (autoresSimilares
	     [Author_704]
	     [Author_879]
	     [Author_916]
	     [Author_837]
	     [Author_292]
	     [Author_906]
	     [Author_818]
	     [Author_870]
	     [Author_85]
	     [Author_776]
	     [Author_154]
	     [Author429])
	 (sexo female))

	([Author_851] of Autor
	 (idAutor "851")
	 (nombreAutor "AN Roquelaure")
	 (autoresSimilares
	     [Author_885]
	     [Author_307]
	     [Author_263]
	     [Author_1057]
	     [Author_469]
	     [Author_1028]
	     [Author_935]
	     [Author_932]
	     [Author_166]
	     [Author_408]
	     [Author_181]
	     [Author_453]
	     [Author_114]
	     [Author_73]
	     [Author_1102]
	     [Author592])
	 (sexo male))

	([Author_852] of Autor
	 (idAutor "852")
	 (nombreAutor "Joanna Wylde")
	 (autoresSimilares
	     [Author_536]
	     [Author_1041]
	     [Author_695]
	     [Author_492]
	     [Author_1062]
	     [Author_809]
	     [Author_1000]
	     [Author_371]
	     [Author_1058]
	     [Author_742]
	     [Author_907]
	     [Author_538]
	     [Author_670]
	     [Author_1070]
	     [Author_472]
	     [Author_733]
	     [Author_1069]
	     [Author285])
	 (sexo female))

	([Author_853] of Autor
	 (idAutor "853")
	 (nombreAutor "Anthony  Bryan")
	 (autoresSimilares
	     [Author_456]
	     [Author_1021]
	     [Author_445]
	     [Author_45]
	     [Author_953]
	     [Author_1059]
	     [Author_977]
	     [Author_331]
	     [Author_589]
	     [Author_586]
	     [Author_1064]
	     [Author_831]
	     [Author1020])
	 (sexo male))

	([Author_854] of Autor
	 (idAutor "854")
	 (nombreAutor "Patrick Ness")
	 (autoresSimilares
	     [Author_945]
	     [Author218])
	 (sexo male))

	([Author_855] of Autor
	 (idAutor "855")
	 (nombreAutor "Gail Giles")
	 (autoresSimilares
	     [Author_1104]
	     [Author_548]
	     [Author_620]
	     [Author_759]
	     [Author_954]
	     [Author_484]
	     [Author_276]
	     [Author_1091]
	     [Author_700]
	     [Author49])
	 (sexo female))

	([Author_856] of Autor
	 (idAutor "856")
	 (nombreAutor "Carrie Ryan")
	 (autoresSimilares
	     [Author_1012]
	     [Author_622]
	     [Author_603]
	     [Author_228]
	     [Author_874]
	     [Author_912]
	     [Author_980]
	     [Author_734]
	     [Author_1017]
	     [Author_594]
	     [Author_769]
	     [Author_115]
	     [Author623])
	 (sexo female))

	([Author_857] of Autor
	 (idAutor "857")
	 (nombreAutor "Elif Shafak")
	 (autoresSimilares
	     [Author_521]
	     [Author_678]
	     [Author_838]
	     [Author_951]
	     [Author_482]
	     [Author_390]
	     [Author_153]
	     [Author_401]
	     [Author329])
	 (sexo female))

	([Author_858] of Autor
	 (idAutor "858")
	 (nombreAutor "Alaa Al Aswany")
	 (autoresSimilares
	     [Author_899]
	     [Author_803]
	     [Author_985]
	     [Author_735]
	     [Author_875]
	     [Author_215]
	     [Author_569]
	     [Author_681]
	     [Author_1055]
	     [Author_647]
	     [Author_676]
	     [Author_804]
	     [Author_751]
	     [Author911])
	 (sexo male))

	([Author_859] of Autor
	 (idAutor "859")
	 (nombreAutor "Danielle Rohr")
	 (autoresSimilares
	     [Author_960]
	     [Author498])
	 (sexo male))

	([Author_860] of Autor
	 (idAutor "860")
	 (nombreAutor "Jodi Ellen Malpas")
	 (autoresSimilares
	     [Author_369]
	     [Author_962]
	     [Author_958]
	     [Author_546]
	     [Author_586]
	     [Author_616]
	     [Author_62]
	     [Author_529]
	     [Author_711]
	     [Author_385]
	     [Author_0]
	     [Author_570]
	     [Author_1083]
	     [Author_891]
	     [Author_1043]
	     [Author_517]
	     [Author_994]
	     [Author_547]
	     [Author848])
	 (sexo female))

	([Author_861] of Autor
	 (idAutor "861")
	 (nombreAutor "Christina Lauren")
	 (autoresSimilares
	     [Author_875]
	     [Author_746]
	     [Author_691]
	     [Author_853]
	     [Author_727]
	     [Author_649]
	     [Author_11]
	     [Author_494]
	     [Author_740]
	     [Author_1068]
	     [Author_705]
	     [Author_88]
	     [Author_166]
	     [Author_474]
	     [Author235])
	 (sexo male))

	([Author_862] of Autor
	 (idAutor "862")
	 (nombreAutor "Dhan Gopal Mukerji")
	 (autoresSimilares
	     [Author_92]
	     [Author_982]
	     [Author_230]
	     [Author_222]
	     [Author_370]
	     [Author584])
	 (sexo male))

	([Author_863] of Autor
	 (idAutor "863")
	 (nombreAutor "Erin Entrada Kelly")
	 (autoresSimilares
	     [Author_1106]
	     [Author_1094]
	     [Author_1022]
	     [Author_1103]
	     [Author_370]
	     [Author_494]
	     [Author_413]
	     [Author_677]
	     [Author_298]
	     [Author_47]
	     [Author_212]
	     [Author_222]
	     [Author_768]
	     [Author_1057]
	     [Author_874]
	     [Author_555]
	     [Author_949]
	     [Author_329]
	     [Author_1068]
	     [Author299])
	 (sexo male))

	([Author_864] of Autor
	 (idAutor "864")
	 (nombreAutor "Joseph Krumgold")
	 (autoresSimilares
	     [Author_921]
	     [Author_1066]
	     [Author214])
	 (sexo male))

	([Author_865] of Autor
	 (idAutor "865")
	 (nombreAutor "Lynne Rae Perkins")
	 (autoresSimilares
	     [Author_519]
	     [Author_748]
	     [Author_970]
	     [Author811])
	 (sexo female))

	([Author_866] of Autor
	 (idAutor "866")
	 (nombreAutor "Elizabeth Yates")
	 (autoresSimilares
	     [Author_624]
	     [Author_262]
	     [Author_1087]
	     [Author_147]
	     [Author_324]
	     [Author_530]
	     [Author_1038]
	     [Author_729]
	     [Author_81]
	     [Author_402]
	     [Author_54]
	     [Author_272]
	     [Author902])
	 (sexo female))

	([Author_867] of Autor
	 (idAutor "867")
	 (nombreAutor "Elizabeth Enright")
	 (autoresSimilares
	     [Author_361]
	     [Author_14]
	     [Author_1092]
	     [Author_427]
	     [Author_242]
	     [Author_558]
	     [Author_172]
	     [Author_87]
	     [Author_83]
	     [Author_507]
	     [Author_815]
	     [Author_1095]
	     [Author_61]
	     [Author_228]
	     [Author_433]
	     [Author_1000]
	     [Author_757]
	     [Author884])
	 (sexo female))

	([Author_868] of Autor
	 (idAutor "868")
	 (nombreAutor "Elizabeth Foreman Lewis")
	 (autoresSimilares
	     [Author_910]
	     [Author_193]
	     [Author_501]
	     [Author_1089]
	     [Author_632]
	     [Author_408]
	     [Author543])
	 (sexo male))

	([Author_869] of Autor
	 (idAutor "869")
	 (nombreAutor "Emily Cheney Neville")
	 (autoresSimilares
	     [Author_323]
	     [Author_973]
	     [Author_562]
	     [Author_633]
	     [Author_865]
	     [Author_1098]
	     [Author_1040]
	     [Author_1085]
	     [Author_215]
	     [Author_726]
	     [Author_682]
	     [Author_328]
	     [Author_561]
	     [Author_84]
	     [Author_855]
	     [Author_377]
	     [Author130])
	 (sexo female))

	([Author_870] of Autor
	 (idAutor "870")
	 (nombreAutor "Maia Wojciechowska")
	 (autoresSimilares
	     [Author_534]
	     [Author_511]
	     [Author_245]
	     [Author_954]
	     [Author_1080]
	     [Author_481]
	     [Author_115]
	     [Author_444]
	     [Author_875]
	     [Author_391]
	     [Author_439]
	     [Author_926]
	     [Author_567]
	     [Author_828]
	     [Author_251]
	     [Author_363]
	     [Author26])
	 (sexo female))

	([Author_871] of Autor
	 (idAutor "871")
	 (nombreAutor "Kate Seredy")
	 (autoresSimilares
	     [Author_449]
	     [Author_480]
	     [Author643])
	 (sexo female))

	([Author_872] of Autor
	 (idAutor "872")
	 (nombreAutor "Elizabeth Coatsworth")
	 (autoresSimilares
	     [Author_409]
	     [Author_424]
	     [Author_560]
	     [Author_916]
	     [Author_488]
	     [Author_434]
	     [Author_571]
	     [Author_944]
	     [Author_379]
	     [Author_383]
	     [Author_390]
	     [Author_833]
	     [Author_875]
	     [Author_675]
	     [Author_609]
	     [Author_1068]
	     [Author_823]
	     [Author_777]
	     [Author1072])
	 (sexo female))

	([Author_873] of Autor
	 (idAutor "873")
	 (nombreAutor "Virginia Sorensen")
	 (autoresSimilares
	     [Author_645]
	     [Author538])
	 (sexo female))

	([Author_874] of Autor
	 (idAutor "874")
	 (nombreAutor "Elizabeth Gray Vining")
	 (autoresSimilares
	     [Author_86]
	     [Author_252]
	     [Author_777]
	     [Author_581]
	     [Author_541]
	     [Author_596]
	     [Author1023])
	 (sexo female))

	([Author_875] of Autor
	 (idAutor "875")
	 (nombreAutor "Eric P Kelly")
	 (autoresSimilares
	     [Author_724]
	     [Author_798]
	     [Author_346]
	     [Author_65]
	     [Author1063])
	 (sexo male))

	([Author_876] of Autor
	 (idAutor "876")
	 (nombreAutor "Betsy Byars")
	 (autoresSimilares
	     [Author_616]
	     [Author_853]
	     [Author_758]
	     [Author_206]
	     [Author_126]
	     [Author_439]
	     [Author_88]
	     [Author_877]
	     [Author_935]
	     [Author_350]
	     [Author_54]
	     [Author_1010]
	     [Author_114]
	     [Author_810]
	     [Author978])
	 (sexo female))

	([Author_877] of Autor
	 (idAutor "877")
	 (nombreAutor "Cynthia Rylant")
	 (autoresSimilares
	     [Author_730]
	     [Author_910]
	     [Author_783]
	     [Author_247]
	     [Author_59]
	     [Author_259]
	     [Author684])
	 (sexo female))

	([Author_878] of Autor
	 (idAutor "878")
	 (nombreAutor "Robert Lawson")
	 (autoresSimilares
	     [Author_301]
	     [Author1019])
	 (sexo male))

	([Author_879] of Autor
	 (idAutor "879")
	 (nombreAutor "Elizabeth Borton de Trevio")
	 (autoresSimilares
	     [Author_520]
	     [Author_65]
	     [Author_1079]
	     [Author887])
	 (sexo female))

	([Author_880] of Autor
	 (idAutor "880")
	 (nombreAutor "Jeanne Birdsall")
	 (autoresSimilares
	     [Author_974]
	     [Author_1033]
	     [Author_648]
	     [Author_942]
	     [Author_836]
	     [Author_302]
	     [Author_624]
	     [Author_708]
	     [Author_477]
	     [Author_40]
	     [Author_846]
	     [Author_517]
	     [Author_400]
	     [Author152])
	 (sexo female))

	([Author_881] of Autor
	 (idAutor "881")
	 (nombreAutor "Edward Bloor")
	 (autoresSimilares
	     [Author_1000]
	     [Author_403]
	     [Author_366]
	     [Author_978]
	     [Author_613]
	     [Author_495]
	     [Author_921]
	     [Author440])
	 (sexo male))

	([Author_882] of Autor
	 (idAutor "882")
	 (nombreAutor "Rachel Field")
	 (autoresSimilares
	     [Author_390]
	     [Author_17]
	     [Author_625]
	     [Author_71]
	     [Author_54]
	     [Author_816]
	     [Author_359]
	     [Author_30]
	     [Author_1042]
	     [Author_210]
	     [Author_1085]
	     [Author_320]
	     [Author_802]
	     [Author232])
	 (sexo female))

	([Author_883] of Autor
	 (idAutor "883")
	 (nombreAutor "Lois Lowry")
	 (autoresSimilares
	     [Author_490]
	     [Author_1034]
	     [Author_501]
	     [Author_941]
	     [Author_412]
	     [Author_1073]
	     [Author_697]
	     [Author_215]
	     [Author_1047]
	     [Author_107]
	     [Author_961]
	     [Author_653]
	     [Author_889]
	     [Author_633]
	     [Author_59]
	     [Author648])
	 (sexo male))

	([Author_884] of Autor
	 (idAutor "884")
	 (nombreAutor "Armstrong Sperry")
	 (autoresSimilares
	     [Author_616]
	     [Author_747]
	     [Author_212]
	     [Author_637]
	     [Author_286]
	     [Author_99]
	     [Author_267]
	     [Author_788]
	     [Author_371]
	     [Author_179]
	     [Author_62]
	     [Author_620]
	     [Author_76]
	     [Author_566]
	     [Author_677]
	     [Author_35]
	     [Author_185]
	     [Author_656]
	     [Author306])
	 (sexo male))

	([Author_885] of Autor
	 (idAutor "885")
	 (nombreAutor "Irene Hunt")
	 (autoresSimilares
	     [Author_712]
	     [Author_289]
	     [Author_490]
	     [Author475])
	 (sexo female))

	([Author_886] of Autor
	 (idAutor "886")
	 (nombreAutor "Meindert DeJong")
	 (autoresSimilares
	     [Author_241]
	     [Author_724]
	     [Author_33]
	     [Author_150]
	     [Author_674]
	     [Author_86]
	     [Author_882]
	     [Author_363]
	     [Author374])
	 (sexo male))

	([Author_887] of Autor
	 (idAutor "887")
	 (nombreAutor "Marguerite de Angeli")
	 (autoresSimilares
	     [Author_1066]
	     [Author_1024]
	     [Author_596]
	     [Author_627]
	     [Author94])
	 (sexo female))

	([Author_888] of Autor
	 (idAutor "888")
	 (nombreAutor "Rodman Philbrick")
	 (autoresSimilares
	     [Author_305]
	     [Author_804]
	     [Author_570]
	     [Author_185]
	     [Author_514]
	     [Author_415]
	     [Author644])
	 (sexo male))

	([Author_889] of Autor
	 (idAutor "889")
	 (nombreAutor "Jean Lee Latham")
	 (autoresSimilares
	     [Author_33]
	     [Author_337]
	     [Author_1050]
	     [Author_61]
	     [Author_962]
	     [Author_493]
	     [Author_593]
	     [Author_1055]
	     [Author_341]
	     [Author_299]
	     [Author_528]
	     [Author_561]
	     [Author1031])
	 (sexo female))

	([Author_890] of Autor
	 (idAutor "890")
	 (nombreAutor "Cynthia Voigt")
	 (autoresSimilares
	     [Author_690]
	     [Author_801]
	     [Author_190]
	     [Author_143]
	     [Author_562]
	     [Author_602]
	     [Author_762]
	     [Author_493]
	     [Author_528]
	     [Author_743]
	     [Author_750]
	     [Author_80]
	     [Author_912]
	     [Author_448]
	     [Author_105]
	     [Author665])
	 (sexo male))

	([Author_891] of Autor
	 (idAutor "891")
	 (nombreAutor "Sid Fleischman")
	 (autoresSimilares
	     [Author_540]
	     [Author_676]
	     [Author_934]
	     [Author_968]
	     [Author_1080]
	     [Author_175]
	     [Author_814]
	     [Author_343]
	     [Author_144]
	     [Author830])
	 (sexo male))

	([Author_892] of Autor
	 (idAutor "892")
	 (nombreAutor "William Pne du Bois")
	 (autoresSimilares
	     [Author_19]
	     [Author_227]
	     [Author_600]
	     [Author_291]
	     [Author_446]
	     [Author_1014]
	     [Author_270]
	     [Author_866]
	     [Author_635]
	     [Author_251]
	     [Author_86]
	     [Author_386]
	     [Author_714]
	     [Author_421]
	     [Author_800]
	     [Author820])
	 (sexo male))

	([Author_893] of Autor
	 (idAutor "893")
	 (nombreAutor "Katherine Applegate")
	 (autoresSimilares
	     [Author_590]
	     [Author_453]
	     [Author_689]
	     [Author_707]
	     [Author_788]
	     [Author_580]
	     [Author_793]
	     [Author512])
	 (sexo female))

	([Author_894] of Autor
	 (idAutor "894")
	 (nombreAutor "Beverly Cleary")
	 (autoresSimilares
	     [Author_566]
	     [Author_1037]
	     [Author_496]
	     [Author_328]
	     [Author_416]
	     [Author_74]
	     [Author_465]
	     [Author_567]
	     [Author_1041]
	     [Author_246]
	     [Author_202]
	     [Author_1046]
	     [Author_961]
	     [Author_707]
	     [Author_1051]
	     [Author_218]
	     [Author415])
	 (sexo female))

	([Author_895] of Autor
	 (idAutor "895")
	 (nombreAutor "Esther Forbes")
	 (autoresSimilares
	     [Author_611]
	     [Author_910]
	     [Author_992]
	     [Author_46]
	     [Author_792]
	     [Author_803]
	     [Author_631]
	     [Author_194]
	     [Author_1075]
	     [Author_338]
	     [Author_724]
	     [Author_1067]
	     [Author_477]
	     [Author_363]
	     [Author_276]
	     [Author_855]
	     [Author783])
	 (sexo female))

	([Author_896] of Autor
	 (idAutor "896")
	 (nombreAutor "Nawal El-Saadawi")
	 (autoresSimilares
	     [Author_649]
	     [Author_881]
	     [Author_204]
	     [Author_36]
	     [Author_1025]
	     [Author_157]
	     [Author_742]
	     [Author_753]
	     [Author_883]
	     [Author_1089]
	     [Author154])
	 (sexo female))

	([Author_897] of Autor
	 (idAutor "897")
	 (nombreAutor "Jane Smiley")
	 (autoresSimilares
	     [Author_598]
	     [Author_687]
	     [Author_617]
	     [Author_757]
	     [Author_88]
	     [Author_99]
	     [Author_861]
	     [Author_986]
	     [Author_889]
	     [Author_622]
	     [Author_713]
	     [Author_536]
	     [Author_591]
	     [Author_257]
	     [Author_530]
	     [Author_731]
	     [Author568])
	 (sexo female))

	([Author_898] of Autor
	 (idAutor "898")
	 (nombreAutor "Ana Castillo")
	 (autoresSimilares
	     [Author_428]
	     [Author_763]
	     [Author_740]
	     [Author_518]
	     [Author_588]
	     [Author_795]
	     [Author_1062]
	     [Author_331]
	     [Author_1101]
	     [Author_43]
	     [Author_409]
	     [Author_214]
	     [Author111])
	 (sexo female))

	([Author_899] of Autor
	 (idAutor "899")
	 (nombreAutor "E Lockhart")
	 (autoresSimilares
	     [Author_280]
	     [Author_822]
	     [Author_935]
	     [Author_944]
	     [Author_444]
	     [Author_509]
	     [Author_647]
	     [Author_960]
	     [Author_790]
	     [Author_640]
	     [Author_897]
	     [Author_1102]
	     [Author_77]
	     [Author_655]
	     [Author_179]
	     [Author37])
	 (sexo male))

	([Author_900] of Autor
	 (idAutor "900")
	 (nombreAutor "Elfriede Jelinek")
	 (autoresSimilares
	     [Author_84]
	     [Author_638]
	     [Author_758]
	     [Author_499]
	     [Author_1090]
	     [Author_24]
	     [Author_891]
	     [Author_28]
	     [Author_298]
	     [Author_975]
	     [Author_346]
	     [Author_182]
	     [Author_1035]
	     [Author_856]
	     [Author470])
	 (sexo female))

	([Author_901] of Autor
	 (idAutor "901")
	 (nombreAutor "Sarai Walker")
	 (autoresSimilares
	     [Author_456]
	     [Author_248]
	     [Author_127]
	     [Author_517]
	     [Author_619]
	     [Author_151]
	     [Author_318]
	     [Author_918]
	     [Author_417]
	     [Author_1061]
	     [Author_93]
	     [Author_20]
	     [Author_622]
	     [Author_36]
	     [Author_237]
	     [Author71])
	 (sexo female))

	([Author_902] of Autor
	 (idAutor "902")
	 (nombreAutor "Charlotte Perkins Gilman")
	 (autoresSimilares
	     [Author_681]
	     [Author_1016]
	     [Author_839]
	     [Author_348]
	     [Author_775]
	     [Author_1078]
	     [Author_999]
	     [Author_893]
	     [Author_1081]
	     [Author_799]
	     [Author_669]
	     [Author_1089]
	     [Author_966]
	     [Author383])
	 (sexo female))

	([Author_903] of Autor
	 (idAutor "903")
	 (nombreAutor "Richard Yates")
	 (autoresSimilares
	     [Author_1076]
	     [Author_750]
	     [Author_803]
	     [Author_329]
	     [Author_194]
	     [Author_11]
	     [Author_923]
	     [Author_479]
	     [Author_1045]
	     [Author_1009]
	     [Author_408]
	     [Author_698]
	     [Author_900]
	     [Author305])
	 (sexo male))

	([Author_904] of Autor
	 (idAutor "904")
	 (nombreAutor "Jane Austen")
	 (autoresSimilares
	     [Author_421]
	     [Author_345]
	     [Author_145]
	     [Author_460]
	     [Author_524]
	     [Author_686]
	     [Author_454]
	     [Author_630]
	     [Author_862]
	     [Author_758]
	     [Author_438]
	     [Author_1001]
	     [Author_842]
	     [Author_1]
	     [Author_8]
	     [Author_1002]
	     [Author_436]
	     [Author_480]
	     [Author146])
	 (sexo female))

	([Author_905] of Autor
	 (idAutor "905")
	 (nombreAutor "Madeline Miller")
	 (autoresSimilares
	     [Author_403]
	     [Author_854]
	     [Author_52]
	     [Author686])
	 (sexo female))

	([Author_906] of Autor
	 (idAutor "906")
	 (nombreAutor "Doris Lessing")
	 (autoresSimilares
	     [Author_929]
	     [Author_792]
	     [Author_785]
	     [Author_1039]
	     [Author_568]
	     [Author_692]
	     [Author_19]
	     [Author_599]
	     [Author_579]
	     [Author_75]
	     [Author_138]
	     [Author_1022]
	     [Author_489]
	     [Author_38]
	     [Author368])
	 (sexo female))

	([Author_907] of Autor
	 (idAutor "907")
	 (nombreAutor "Jean Rhys")
	 (autoresSimilares
	     [Author1059])
	 (sexo female))

	([Author_908] of Autor
	 (idAutor "908")
	 (nombreAutor "John Varley")
	 (autoresSimilares
	     [Author85])
	 (sexo male))

	([Author_909] of Autor
	 (idAutor "909")
	 (nombreAutor "Jack McDevitt")
	 (autoresSimilares
	     [Author_718]
	     [Author_928]
	     [Author_359]
	     [Author_888]
	     [Author_1012]
	     [Author_514]
	     [Author_497]
	     [Author_715]
	     [Author_813]
	     [Author_646]
	     [Author_490]
	     [Author_683]
	     [Author_1080]
	     [Author_729]
	     [Author_40]
	     [Author_840]
	     [Author_654]
	     [Author_43]
	     [Author_362]
	     [Author603])
	 (sexo male))

	([Author_910] of Autor
	 (idAutor "910")
	 (nombreAutor "Ken MacLeod")
	 (autoresSimilares
	     [Author_289]
	     [Author_472]
	     [Author_4]
	     [Author_538]
	     [Author_127]
	     [Author_93]
	     [Author_899]
	     [Author_470]
	     [Author_347]
	     [Author_151]
	     [Author_529]
	     [Author_984]
	     [Author35])
	 (sexo male))

	([Author_911] of Autor
	 (idAutor "911")
	 (nombreAutor "James Blish")
	 (autoresSimilares
	     [Author_812]
	     [Author_573]
	     [Author_1058]
	     [Author_390]
	     [Author_162]
	     [Author_235]
	     [Author_925]
	     [Author_728]
	     [Author_992]
	     [Author_193]
	     [Author_794]
	     [Author1022])
	 (sexo male))

	([Author_912] of Autor
	 (idAutor "912")
	 (nombreAutor "Samuel R Delany")
	 (autoresSimilares
	     [Author_115]
	     [Author894])
	 (sexo male))

	([Author_913] of Autor
	 (idAutor "913")
	 (nombreAutor "Karl Schroeder")
	 (autoresSimilares
	     [Author_926]
	     [Author_335]
	     [Author_138]
	     [Author_820]
	     [Author_725]
	     [Author72])
	 (sexo male))

	([Author_914] of Autor
	 (idAutor "914")
	 (nombreAutor "Debra Doyle")
	 (autoresSimilares
	     [Author_105]
	     [Author_249]
	     [Author_163]
	     [Author761])
	 (sexo female))

	([Author_915] of Autor
	 (idAutor "915")
	 (nombreAutor "Hal Clement")
	 (autoresSimilares
	     [Author_484]
	     [Author_1086]
	     [Author_599]
	     [Author_314]
	     [Author289])
	 (sexo male))

	([Author_916] of Autor
	 (idAutor "916")
	 (nombreAutor "Randolph Lalonde")
	 (autoresSimilares
	     [Author_993]
	     [Author_320]
	     [Author_425]
	     [Author_464]
	     [Author_277]
	     [Author_952]
	     [Author_511]
	     [Author_331]
	     [Author276])
	 (sexo male))

	([Author_917] of Autor
	 (idAutor "917")
	 (nombreAutor "James Alan Gardner")
	 (autoresSimilares
	     [Author_50]
	     [Author_668]
	     [Author_482]
	     [Author_555]
	     [Author_660]
	     [Author_239]
	     [Author_893]
	     [Author_645]
	     [Author_21]
	     [Author_484]
	     [Author_701]
	     [Author_102]
	     [Author_1096]
	     [Author86])
	 (sexo male))

	([Author_918] of Autor
	 (idAutor "918")
	 (nombreAutor "David Weber")
	 (autoresSimilares
	     [Author_284]
	     [Author_75]
	     [Author420])
	 (sexo male))

	([Author_919] of Autor
	 (idAutor "919")
	 (nombreAutor "H Beam Piper")
	 (autoresSimilares
	     [Author_943]
	     [Author_335]
	     [Author_699]
	     [Author_274]
	     [Author_952]
	     [Author_472]
	     [Author_972]
	     [Author_1100]
	     [Author_211]
	     [Author_900]
	     [Author_575]
	     [Author_561]
	     [Author_956]
	     [Author_461]
	     [Author_1042]
	     [Author_361]
	     [Author25])
	 (sexo male))

	([Author_920] of Autor
	 (idAutor "920")
	 (nombreAutor "John C Wright")
	 (autoresSimilares
	     [Author_92]
	     [Author_1065]
	     [Author_853]
	     [Author_146]
	     [Author_1089]
	     [Author_1000]
	     [Author_158]
	     [Author_1076]
	     [Author_645]
	     [Author_537]
	     [Author_232]
	     [Author_472]
	     [Author_1086]
	     [Author_291]
	     [Author_415]
	     [Author_409]
	     [Author_817]
	     [Author_700]
	     [Author_140]
	     [Author258])
	 (sexo male))

	([Author_921] of Autor
	 (idAutor "921")
	 (nombreAutor "Sharon Lee")
	 (autoresSimilares
	     [Author_137]
	     [Author_667]
	     [Author_992]
	     [Author_967]
	     [Author_929]
	     [Author_359]
	     [Author_801]
	     [Author_289]
	     [Author_163]
	     [Author_255]
	     [Author_89]
	     [Author_668]
	     [Author700])
	 (sexo female))

	([Author_922] of Autor
	 (idAutor "922")
	 (nombreAutor "Robert Lynn Asprin")
	 (autoresSimilares
	     [Author_359]
	     [Author_559]
	     [Author_138]
	     [Author_652]
	     [Author_978]
	     [Author_523]
	     [Author_284]
	     [Author_492]
	     [Author_1057]
	     [Author_97]
	     [Author_1055]
	     [Author328])
	 (sexo male))

	([Author_923] of Autor
	 (idAutor "923")
	 (nombreAutor "Allen M Steele")
	 (autoresSimilares
	     [Author_692]
	     [Author_1010]
	     [Author_494]
	     [Author_628]
	     [Author_754]
	     [Author_346]
	     [Author_856]
	     [Author_765]
	     [Author_624]
	     [Author_185]
	     [Author72])
	 (sexo male))

	([Author_924] of Autor
	 (idAutor "924")
	 (nombreAutor "CJ Cherryh")
	 (autoresSimilares
	     [Author367])
	 (sexo female))

	([Author_925] of Autor
	 (idAutor "925")
	 (nombreAutor "Thomas DePrima")
	 (autoresSimilares
	     [Author_844]
	     [Author_1107]
	     [Author_755]
	     [Author_367]
	     [Author_630]
	     [Author_778]
	     [Author_29]
	     [Author_1035]
	     [Author_412]
	     [Author995])
	 (sexo male))

	([Author_926] of Autor
	 (idAutor "926")
	 (nombreAutor "Brian Herbert")
	 (autoresSimilares
	     [Author_597]
	     [Author_438]
	     [Author_235]
	     [Author180])
	 (sexo male))

	([Author_927] of Autor
	 (idAutor "927")
	 (nombreAutor "Rachel Bach")
	 (autoresSimilares
	     [Author_585]
	     [Author_146]
	     [Author_976]
	     [Author_550]
	     [Author_707]
	     [Author_702]
	     [Author_637]
	     [Author_919]
	     [Author993])
	 (sexo female))

	([Author_928] of Autor
	 (idAutor "928")
	 (nombreAutor "James H Schmitz")
	 (autoresSimilares
	     [Author_393]
	     [Author_50]
	     [Author_101]
	     [Author_468]
	     [Author_53]
	     [Author_1014]
	     [Author_226]
	     [Author_820]
	     [Author_716]
	     [Author_599]
	     [Author_302]
	     [Author_48]
	     [Author_981]
	     [Author499])
	 (sexo male))

	([Author_929] of Autor
	 (idAutor "929")
	 (nombreAutor "Walter Jon Williams")
	 (autoresSimilares
	     [Author_826]
	     [Author_381]
	     [Author_441]
	     [Author_414]
	     [Author_612]
	     [Author_1104]
	     [Author_767]
	     [Author_1053]
	     [Author_209]
	     [Author_624]
	     [Author_459]
	     [Author_138]
	     [Author_9]
	     [Author_101]
	     [Author_976]
	     [Author_1015]
	     [Author_744]
	     [Author_616]
	     [Author32])
	 (sexo male))

	([Author_930] of Autor
	 (idAutor "930")
	 (nombreAutor "Richard  Parry")
	 (autoresSimilares
	     [Author_458]
	     [Author_1068]
	     [Author_652]
	     [Author_1085]
	     [Author_158]
	     [Author_700]
	     [Author_186]
	     [Author1036])
	 (sexo male))

	([Author_931] of Autor
	 (idAutor "931")
	 (nombreAutor "Simon R Green")
	 (autoresSimilares
	     [Author_954]
	     [Author_1019]
	     [Author_733]
	     [Author_118]
	     [Author_430]
	     [Author_671]
	     [Author248])
	 (sexo male))

	([Author_932] of Autor
	 (idAutor "932")
	 (nombreAutor "David Feintuch")
	 (autoresSimilares
	     [Author_1027]
	     [Author_1024]
	     [Author222])
	 (sexo male))

	([Author_933] of Autor
	 (idAutor "933")
	 (nombreAutor "Catherine Asaro")
	 (autoresSimilares
	     [Author_22]
	     [Author_420]
	     [Author_524]
	     [Author_346]
	     [Author1041])
	 (sexo female))

	([Author_934] of Autor
	 (idAutor "934")
	 (nombreAutor "Gordon R Dickson")
	 (autoresSimilares
	     [Author_994]
	     [Author_835]
	     [Author_826]
	     [Author_632]
	     [Author_166]
	     [Author_541]
	     [Author_394]
	     [Author_105]
	     [Author352])
	 (sexo male))

	([Author_935] of Autor
	 (idAutor "935")
	 (nombreAutor "SL Viehl")
	 (autoresSimilares
	     [Author_266]
	     [Author_59]
	     [Author_501]
	     [Author_762]
	     [Author_1053]
	     [Author_814]
	     [Author800])
	 (sexo male))

	([Author_936] of Autor
	 (idAutor "936")
	 (nombreAutor "Mike Shepherd")
	 (autoresSimilares
	     [Author_57]
	     [Author_751]
	     [Author_92]
	     [Author_844]
	     [Author_553]
	     [Author_833]
	     [Author_900]
	     [Author_733]
	     [Author_801]
	     [Author_148]
	     [Author_205]
	     [Author874])
	 (sexo male))

	([Author_937] of Autor
	 (idAutor "937")
	 (nombreAutor "David Drake")
	 (autoresSimilares
	     [Author_27]
	     [Author_98]
	     [Author423])
	 (sexo male))

	([Author_938] of Autor
	 (idAutor "938")
	 (nombreAutor "Kevin J Anderson")
	 (autoresSimilares
	     [Author_536]
	     [Author584])
	 (sexo male))

	([Author_939] of Autor
	 (idAutor "939")
	 (nombreAutor "EE Doc Smith")
	 (autoresSimilares
	     [Author_1006]
	     [Author_51]
	     [Author_579]
	     [Author_661]
	     [Author_490]
	     [Author_695]
	     [Author_271]
	     [Author_432]
	     [Author_703]
	     [Author_1095]
	     [Author_737]
	     [Author_86]
	     [Author_972]
	     [Author_388]
	     [Author_188]
	     [Author_498]
	     [Author_822]
	     [Author807])
	 (sexo male))

	([Author_940] of Autor
	 (idAutor "940")
	 (nombreAutor "George Lucas")
	 (autoresSimilares
	     [Author_992]
	     [Author_511]
	     [Author_1029]
	     [Author_1017]
	     [Author_895]
	     [Author_863]
	     [Author_932]
	     [Author_496]
	     [Author_147]
	     [Author_95]
	     [Author_43]
	     [Author_920]
	     [Author_44]
	     [Author_528]
	     [Author_30]
	     [Author_413]
	     [Author584])
	 (sexo male))

	([Author_941] of Autor
	 (idAutor "941")
	 (nombreAutor "Tanya Huff")
	 (autoresSimilares
	     [Author_581]
	     [Author_1104]
	     [Author_716]
	     [Author_741]
	     [Author_686]
	     [Author_527]
	     [Author112])
	 (sexo female))

	([Author_942] of Autor
	 (idAutor "942")
	 (nombreAutor "John Ringo")
	 (autoresSimilares
	     [Author_742]
	     [Author_449]
	     [Author_863]
	     [Author_489]
	     [Author_581]
	     [Author_854]
	     [Author_643]
	     [Author_249]
	     [Author_142]
	     [Author_763]
	     [Author_246]
	     [Author_1094]
	     [Author_508]
	     [Author_819]
	     [Author_775]
	     [Author_724]
	     [Author_749]
	     [Author_229]
	     [Author_1078]
	     [Author425])
	 (sexo male))

	([Author_943] of Autor
	 (idAutor "943")
	 (nombreAutor "Anna Lee Waldo")
	 (autoresSimilares
	     [Author_440]
	     [Author_843]
	     [Author_660]
	     [Author_304]
	     [Author_374]
	     [Author_39]
	     [Author_399]
	     [Author_1042]
	     [Author_0]
	     [Author_552]
	     [Author_515]
	     [Author_338]
	     [Author_1086]
	     [Author_1019]
	     [Author_351]
	     [Author_541]
	     [Author960])
	 (sexo female))

	([Author_944] of Autor
	 (idAutor "944")
	 (nombreAutor "L Ron Hubbard")
	 (autoresSimilares
	     [Author_233]
	     [Author208])
	 (sexo male))

	([Author_945] of Autor
	 (idAutor "945")
	 (nombreAutor "George RR Martin")
	 (autoresSimilares
	     [Author_944]
	     [Author_541]
	     [Author_121]
	     [Author_579]
	     [Author_368]
	     [Author_113]
	     [Author_635]
	     [Author_1020]
	     [Author_1090]
	     [Author_550]
	     [Author_282]
	     [Author_750]
	     [Author_503]
	     [Author_1035]
	     [Author_757]
	     [Author_947]
	     [Author_235]
	     [Author948])
	 (sexo male))

	([Author_946] of Autor
	 (idAutor "946")
	 (nombreAutor "Dan Simmons")
	 (autoresSimilares
	     [Author_838]
	     [Author_293]
	     [Author_725]
	     [Author_88]
	     [Author_374]
	     [Author_283]
	     [Author_752]
	     [Author_264]
	     [Author_26]
	     [Author_1047]
	     [Author_994]
	     [Author_724]
	     [Author_930]
	     [Author_588]
	     [Author_1059]
	     [Author_657]
	     [Author_799]
	     [Author605])
	 (sexo male))

	([Author_947] of Autor
	 (idAutor "947")
	 (nombreAutor "Timothy Zahn")
	 (autoresSimilares
	     [Author_120]
	     [Author471])
	 (sexo male))

	([Author_948] of Autor
	 (idAutor "948")
	 (nombreAutor "Helen Hooven Santmyer")
	 (autoresSimilares
	     [Author_867]
	     [Author_637]
	     [Author_26]
	     [Author_74]
	     [Author_272]
	     [Author_966]
	     [Author_666]
	     [Author_1072]
	     [Author_496]
	     [Author_275]
	     [Author_14]
	     [Author_224]
	     [Author_470]
	     [Author_318]
	     [Author_64]
	     [Author_822]
	     [Author562])
	 (sexo female))

	([Author_949] of Autor
	 (idAutor "949")
	 (nombreAutor "Jack Campbell")
	 (autoresSimilares
	     [Author_711]
	     [Author_565]
	     [Author_275]
	     [Author_290]
	     [Author_1003]
	     [Author_887]
	     [Author_903]
	     [Author_421]
	     [Author_621]
	     [Author_109]
	     [Author_370]
	     [Author_871]
	     [Author_206]
	     [Author_879]
	     [Author_491]
	     [Author_38]
	     [Author_301]
	     [Author496])
	 (sexo male))

	([Author_950] of Autor
	 (idAutor "950")
	 (nombreAutor "DM Thomas")
	 (autoresSimilares
	     [Author_591]
	     [Author_1105]
	     [Author_789]
	     [Author_40]
	     [Author_1088]
	     [Author_333]
	     [Author_335]
	     [Author_527]
	     [Author_83]
	     [Author_763]
	     [Author_438]
	     [Author_1083]
	     [Author_986]
	     [Author_45]
	     [Author_1078]
	     [Author_224]
	     [Author_978]
	     [Author781])
	 (sexo male))

	([Author_951] of Autor
	 (idAutor "951")
	 (nombreAutor "Anne Michaels")
	 (autoresSimilares
	     [Author_525]
	     [Author_838]
	     [Author_735]
	     [Author473])
	 (sexo female))

	([Author_952] of Autor
	 (idAutor "952")
	 (nombreAutor "Alyson Richman")
	 (autoresSimilares
	     [Author_204]
	     [Author_1018]
	     [Author_462]
	     [Author_441]
	     [Author_710]
	     [Author_971]
	     [Author_820]
	     [Author_1073]
	     [Author673])
	 (sexo female))

	([Author_953] of Autor
	 (idAutor "953")
	 (nombreAutor "Samuel Richardson")
	 (autoresSimilares
	     [Author_990]
	     [Author_256]
	     [Author_269]
	     [Author_1085]
	     [Author_885]
	     [Author_879]
	     [Author_569]
	     [Author_455]
	     [Author_965]
	     [Author_169]
	     [Author_769]
	     [Author_719]
	     [Author_74]
	     [Author_329]
	     [Author_60]
	     [Author_606]
	     [Author_839]
	     [Author498])
	 (sexo male))

	([Author_954] of Autor
	 (idAutor "954")
	 (nombreAutor "Julie Orringer")
	 (autoresSimilares
	     [Author_14]
	     [Author_249]
	     [Author_112]
	     [Author_771]
	     [Author_1010]
	     [Author135])
	 (sexo female))

	([Author_955] of Autor
	 (idAutor "955")
	 (nombreAutor "Brandon Sanderson")
	 (autoresSimilares
	     [Author_416]
	     [Author_357]
	     [Author_290]
	     [Author_135]
	     [Author_812]
	     [Author_846]
	     [Author_164]
	     [Author_971]
	     [Author_850]
	     [Author_229]
	     [Author_1074]
	     [Author253])
	 (sexo male))

	([Author_956] of Autor
	 (idAutor "956")
	 (nombreAutor "Imre Kertsz")
	 (autoresSimilares
	     [Author_172]
	     [Author_949]
	     [Author_626]
	     [Author_1080]
	     [Author_1053]
	     [Author_672]
	     [Author_240]
	     [Author_650]
	     [Author_32]
	     [Author_508]
	     [Author_286]
	     [Author_991]
	     [Author_601]
	     [Author_15]
	     [Author_549]
	     [Author_180]
	     [Author_59]
	     [Author507])
	 (sexo male))

	([Author_957] of Autor
	 (idAutor "957")
	 (nombreAutor "Murasaki Shikibu")
	 (autoresSimilares
	     [Author_527]
	     [Author138])
	 (sexo female))

	([Author_958] of Autor
	 (idAutor "958")
	 (nombreAutor "Hans Fallada")
	 (autoresSimilares
	     [Author_180]
	     [Author_957]
	     [Author_975]
	     [Author_1067]
	     [Author_1086]
	     [Author_335]
	     [Author_253]
	     [Author_923]
	     [Author_445]
	     [Author_207]
	     [Author_693]
	     [Author_370]
	     [Author_577]
	     [Author_970]
	     [Author_1103]
	     [Author_864]
	     [Author_506]
	     [Author422])
	 (sexo male))

	([Author_959] of Autor
	 (idAutor "959")
	 (nombreAutor "Ursula Hegi")
	 (autoresSimilares
	     [Author_467]
	     [Author_176]
	     [Author_796]
	     [Author326])
	 (sexo male))

	([Author_960] of Autor
	 (idAutor "960")
	 (nombreAutor "Judith Kerr")
	 (autoresSimilares
	     [Author_608]
	     [Author_695]
	     [Author_779]
	     [Author_499]
	     [Author522])
	 (sexo female))

	([Author_961] of Autor
	 (idAutor "961")
	 (nombreAutor "Louise Murphy")
	 (autoresSimilares
	     [Author_1065]
	     [Author_557]
	     [Author_380]
	     [Author_978]
	     [Author_390]
	     [Author_0]
	     [Author_792]
	     [Author_428]
	     [Author_630]
	     [Author_984]
	     [Author_962]
	     [Author_282]
	     [Author_735]
	     [Author_1046]
	     [Author869])
	 (sexo female))

	([Author_962] of Autor
	 (idAutor "962")
	 (nombreAutor "Irne Nmirovsky")
	 (autoresSimilares
	     [Author_668]
	     [Author_1007]
	     [Author_994]
	     [Author_10]
	     [Author_825]
	     [Author_664]
	     [Author_554]
	     [Author_573]
	     [Author_613]
	     [Author_955]
	     [Author_183]
	     [Author_139]
	     [Author_515]
	     [Author_368]
	     [Author_973]
	     [Author_649]
	     [Author_618]
	     [Author_214]
	     [Author_351]
	     [Author48])
	 (sexo male))

	([Author_963] of Autor
	 (idAutor "963")
	 (nombreAutor "Jenna Blum")
	 (autoresSimilares
	     [Author_29]
	     [Author_32]
	     [Author_207]
	     [Author_764]
	     [Author_366]
	     [Author_768]
	     [Author_611]
	     [Author_296]
	     [Author_1051]
	     [Author_920]
	     [Author_219]
	     [Author_367]
	     [Author_301]
	     [Author_104]
	     [Author_465]
	     [Author_461]
	     [Author_411]
	     [Author_950]
	     [Author497])
	 (sexo male))

	([Author_964] of Autor
	 (idAutor "964")
	 (nombreAutor "Lois Leveen")
	 (autoresSimilares
	     [Author_708]
	     [Author_407]
	     [Author_9]
	     [Author_1019]
	     [Author_46]
	     [Author_433]
	     [Author_175]
	     [Author900])
	 (sexo female))

	([Author_965] of Autor
	 (idAutor "965")
	 (nombreAutor "Jessica Dotta")
	 (autoresSimilares
	     [Author434])
	 (sexo male))

	([Author_966] of Autor
	 (idAutor "966")
	 (nombreAutor "Suzannah Dunn")
	 (autoresSimilares
	     [Author_208]
	     [Author_330]
	     [Author_198]
	     [Author_349]
	     [Author_856]
	     [Author_420]
	     [Author_882]
	     [Author_888]
	     [Author_711]
	     [Author_123]
	     [Author_766]
	     [Author_335]
	     [Author741])
	 (sexo female))

	([Author_967] of Autor
	 (idAutor "967")
	 (nombreAutor "Lauren Owen")
	 (autoresSimilares
	     [Author_1081]
	     [Author_725]
	     [Author_739]
	     [Author_1009]
	     [Author_521]
	     [Author_882]
	     [Author_130]
	     [Author_282]
	     [Author409])
	 (sexo female))

	([Author_968] of Autor
	 (idAutor "968")
	 (nombreAutor "David Blixt")
	 (autoresSimilares
	     [Author_989]
	     [Author999])
	 (sexo male))

	([Author_969] of Autor
	 (idAutor "969")
	 (nombreAutor "Leila Meacham")
	 (autoresSimilares
	     [Author_569]
	     [Author_466]
	     [Author_724]
	     [Author_1016]
	     [Author_522]
	     [Author_1069]
	     [Author_1057]
	     [Author_759]
	     [Author_712]
	     [Author_881]
	     [Author_217]
	     [Author_289]
	     [Author_790]
	     [Author1025])
	 (sexo male))

	([Author_970] of Autor
	 (idAutor "970")
	 (nombreAutor "Naomi Wood")
	 (autoresSimilares
	     [Author_961]
	     [Author_744]
	     [Author_1087]
	     [Author541])
	 (sexo female))

	([Author_971] of Autor
	 (idAutor "971")
	 (nombreAutor "Alison Weir")
	 (autoresSimilares
	     [Author_260]
	     [Author_360]
	     [Author_392]
	     [Author_205]
	     [Author_802]
	     [Author_410]
	     [Author_1072]
	     [Author_1050]
	     [Author_184]
	     [Author_199]
	     [Author_698]
	     [Author_844]
	     [Author_30]
	     [Author_741]
	     [Author_355]
	     [Author952])
	 (sexo female))

	([Author_972] of Autor
	 (idAutor "972")
	 (nombreAutor "Alex    Myers")
	 (autoresSimilares
	     [Author7])
	 (sexo male))

	([Author_973] of Autor
	 (idAutor "973")
	 (nombreAutor "Jacqueline Winspear")
	 (autoresSimilares
	     [Author_726]
	     [Author_865]
	     [Author_776]
	     [Author_345]
	     [Author_68]
	     [Author_233]
	     [Author_414]
	     [Author_93]
	     [Author983])
	 (sexo female))

	([Author_974] of Autor
	 (idAutor "974")
	 (nombreAutor "Phyllis T Smith")
	 (autoresSimilares
	     [Author_353]
	     [Author_992]
	     [Author_811]
	     [Author_787]
	     [Author_684]
	     [Author_951]
	     [Author_1069]
	     [Author_870]
	     [Author_7]
	     [Author602])
	 (sexo male))

	([Author_975] of Autor
	 (idAutor "975")
	 (nombreAutor "Jessie Burton")
	 (autoresSimilares
	     [Author_162]
	     [Author_28]
	     [Author_327]
	     [Author_115]
	     [Author_685]
	     [Author_312]
	     [Author_902]
	     [Author476])
	 (sexo female))

	([Author_976] of Autor
	 (idAutor "976")
	 (nombreAutor "Kristy Cambron")
	 (autoresSimilares
	     [Author_163]
	     [Author_516]
	     [Author349])
	 (sexo female))

	([Author_977] of Autor
	 (idAutor "977")
	 (nombreAutor "Erin Lindsay McCabe")
	 (autoresSimilares
	     [Author_197]
	     [Author_829]
	     [Author_759]
	     [Author_489]
	     [Author_940]
	     [Author_215]
	     [Author_351]
	     [Author_153]
	     [Author_924]
	     [Author_813]
	     [Author_22]
	     [Author65])
	 (sexo female))

	([Author_978] of Autor
	 (idAutor "978")
	 (nombreAutor "Amy Belding Brown")
	 (autoresSimilares
	     [Author_1069]
	     [Author_748]
	     [Author_883]
	     [Author_349]
	     [Author_996]
	     [Author_86]
	     [Author_451]
	     [Author_239]
	     [Author_761]
	     [Author1088])
	 (sexo female))

	([Author_979] of Autor
	 (idAutor "979")
	 (nombreAutor "Robin Oliveira")
	 (autoresSimilares
	     [Author_219]
	     [Author_196]
	     [Author_585]
	     [Author_507]
	     [Author_970]
	     [Author_814]
	     [Author_374]
	     [Author_588]
	     [Author_905]
	     [Author_650]
	     [Author429])
	 (sexo female))

	([Author_980] of Autor
	 (idAutor "980")
	 (nombreAutor "Nancy E Turner")
	 (autoresSimilares
	     [Author_549]
	     [Author_278]
	     [Author_582]
	     [Author_906]
	     [Author_76]
	     [Author_637]
	     [Author_139]
	     [Author_866]
	     [Author_877]
	     [Author_795]
	     [Author_117]
	     [Author_341]
	     [Author_608]
	     [Author_339]
	     [Author_100]
	     [Author_659]
	     [Author37])
	 (sexo male))

	([Author_981] of Autor
	 (idAutor "981")
	 (nombreAutor "Kate Breslin")
	 (autoresSimilares
	     [Author_297]
	     [Author_330]
	     [Author_652]
	     [Author_337]
	     [Author_212]
	     [Author_348]
	     [Author_823]
	     [Author_1011]
	     [Author_72]
	     [Author_489]
	     [Author_893]
	     [Author_905]
	     [Author_341]
	     [Author456])
	 (sexo female))

	([Author_982] of Autor
	 (idAutor "982")
	 (nombreAutor "Anne Fortier")
	 (autoresSimilares
	     [Author_155]
	     [Author_320]
	     [Author_888]
	     [Author_229]
	     [Author_1054]
	     [Author_12]
	     [Author_201]
	     [Author_417]
	     [Author_689]
	     [Author_976]
	     [Author_1087]
	     [Author_270]
	     [Author1004])
	 (sexo male))

	([Author_983] of Autor
	 (idAutor "983")
	 (nombreAutor "Ella March Chase")
	 (autoresSimilares
	     [Author_265]
	     [Author420])
	 (sexo female))

	([Author_984] of Autor
	 (idAutor "984")
	 (nombreAutor "Laura Andersen")
	 (autoresSimilares
	     [Author_875]
	     [Author_434]
	     [Author_284]
	     [Author_281]
	     [Author_394]
	     [Author866])
	 (sexo female))

	([Author_985] of Autor
	 (idAutor "985")
	 (nombreAutor "Allison Pataki")
	 (autoresSimilares
	     [Author_429]
	     [Author_456]
	     [Author_247]
	     [Author_970]
	     [Author_627]
	     [Author_916]
	     [Author6])
	 (sexo male))

	([Author_986] of Autor
	 (idAutor "986")
	 (nombreAutor "Kate Alcott")
	 (autoresSimilares
	     [Author_543]
	     [Author_513]
	     [Author_323]
	     [Author_406]
	     [Author_589]
	     [Author_646]
	     [Author_312]
	     [Author198])
	 (sexo female))

	([Author_987] of Autor
	 (idAutor "987")
	 (nombreAutor "Jennifer Chiaverini")
	 (autoresSimilares
	     [Author42])
	 (sexo female))

	([Author_988] of Autor
	 (idAutor "988")
	 (nombreAutor "Timothy Schaffert")
	 (autoresSimilares
	     [Author_785]
	     [Author_689]
	     [Author_244]
	     [Author_28]
	     [Author_260]
	     [Author_67]
	     [Author_39]
	     [Author_758]
	     [Author_927]
	     [Author594])
	 (sexo male))

	([Author_989] of Autor
	 (idAutor "989")
	 (nombreAutor "Colleen Coble")
	 (autoresSimilares
	     [Author_1056]
	     [Author_142]
	     [Author_3]
	     [Author_977]
	     [Author_929]
	     [Author_99]
	     [Author_609]
	     [Author_214]
	     [Author_1001]
	     [Author_1042]
	     [Author_219]
	     [Author_1044]
	     [Author_25]
	     [Author_1094]
	     [Author_1007]
	     [Author557])
	 (sexo female))

	([Author_990] of Autor
	 (idAutor "990")
	 (nombreAutor "Sandra Gulland")
	 (autoresSimilares
	     [Author_394]
	     [Author_441]
	     [Author86])
	 (sexo male))

	([Author_991] of Autor
	 (idAutor "991")
	 (nombreAutor "Sharon Kay Penman")
	 (autoresSimilares
	     [Author_705]
	     [Author_470]
	     [Author_967]
	     [Author_219]
	     [Author_354]
	     [Author_854]
	     [Author_483]
	     [Author_1040]
	     [Author_660]
	     [Author_1001]
	     [Author_170]
	     [Author_269]
	     [Author121])
	 (sexo female))

	([Author_992] of Autor
	 (idAutor "992")
	 (nombreAutor "Grace Anne Feldman")
	 (autoresSimilares
	     [Author_218]
	     [Author_31]
	     [Author_55]
	     [Author_381]
	     [Author_904]
	     [Author_1041]
	     [Author_204]
	     [Author_433]
	     [Author_875]
	     [Author_184]
	     [Author_496]
	     [Author_400]
	     [Author_676]
	     [Author_421]
	     [Author_39]
	     [Author_299]
	     [Author_859]
	     [Author_312]
	     [Author_198]
	     [Author1065])
	 (sexo female))

	([Author_993] of Autor
	 (idAutor "993")
	 (nombreAutor "Chelle Bliss")
	 (autoresSimilares
	     [Author_715]
	     [Author_93]
	     [Author_784]
	     [Author_625]
	     [Author_78]
	     [Author_1057]
	     [Author_371]
	     [Author_157]
	     [Author_1024]
	     [Author_960]
	     [Author_510]
	     [Author_915]
	     [Author513])
	 (sexo female))

	([Author_994] of Autor
	 (idAutor "994")
	 (nombreAutor "Megan Crewe")
	 (autoresSimilares
	     [Author_151]
	     [Author_671]
	     [Author_931]
	     [Author_732]
	     [Author_20]
	     [Author_441]
	     [Author_1036]
	     [Author_729]
	     [Author_77]
	     [Author_568]
	     [Author_469]
	     [Author_270]
	     [Author_881]
	     [Author_724]
	     [Author_874]
	     [Author_623]
	     [Author_320]
	     [Author_389]
	     [Author1099])
	 (sexo female))

	([Author_995] of Autor
	 (idAutor "995")
	 (nombreAutor "Suze Reese")
	 (autoresSimilares
	     [Author_349]
	     [Author_138]
	     [Author_450]
	     [Author_202]
	     [Author_1008]
	     [Author_567]
	     [Author_237]
	     [Author_571]
	     [Author_736]
	     [Author_306]
	     [Author_64]
	     [Author_76]
	     [Author_122]
	     [Author_168]
	     [Author_154]
	     [Author_764]
	     [Author_449]
	     [Author_786]
	     [Author253])
	 (sexo male))

	([Author_996] of Autor
	 (idAutor "996")
	 (nombreAutor "John Green")
	 (autoresSimilares
	     [Author_851]
	     [Author_485]
	     [Author_899]
	     [Author_726]
	     [Author_832]
	     [Author_942]
	     [Author_998]
	     [Author_545]
	     [Author_928]
	     [Author_80]
	     [Author_526]
	     [Author_1043]
	     [Author_618]
	     [Author_443]
	     [Author818])
	 (sexo male))

	([Author_997] of Autor
	 (idAutor "997")
	 (nombreAutor "Christina Baker Kline")
	 (autoresSimilares
	     [Author_469]
	     [Author_444]
	     [Author_828]
	     [Author_628]
	     [Author_345]
	     [Author_282]
	     [Author_408]
	     [Author_1060]
	     [Author_343]
	     [Author_632]
	     [Author_464]
	     [Author_1037]
	     [Author_59]
	     [Author_72]
	     [Author_740]
	     [Author_397]
	     [Author_86]
	     [Author_243]
	     [Author381])
	 (sexo male))

	([Author_998] of Autor
	 (idAutor "998")
	 (nombreAutor "Lawrence Hill")
	 (autoresSimilares
	     [Author_501]
	     [Author_917]
	     [Author_815]
	     [Author_737]
	     [Author_558]
	     [Author_154]
	     [Author_472]
	     [Author_460]
	     [Author_1055]
	     [Author_1004]
	     [Author_145]
	     [Author_658]
	     [Author_209]
	     [Author_141]
	     [Author_40]
	     [Author_509]
	     [Author_733]
	     [Author1048])
	 (sexo male))

	([Author_999] of Autor
	 (idAutor "999")
	 (nombreAutor "Robert Alexander")
	 (autoresSimilares
	     [Author_909]
	     [Author_59]
	     [Author_794]
	     [Author_509]
	     [Author_510]
	     [Author_937]
	     [Author_476]
	     [Author_382]
	     [Author_310]
	     [Author_126]
	     [Author_24]
	     [Author_1083]
	     [Author_1100]
	     [Author_1007]
	     [Author_281]
	     [Author1053])
	 (sexo male))

	([Author_1000] of Autor
	 (idAutor "1000")
	 (nombreAutor "Robert Hicks")
	 (autoresSimilares
	     [Author_848]
	     [Author_215]
	     [Author_475]
	     [Author247])
	 (sexo male))

	([Author_1001] of Autor
	 (idAutor "1001")
	 (nombreAutor "John Thorndike")
	 (autoresSimilares
	     [Author_379]
	     [Author_232]
	     [Author_157]
	     [Author_247]
	     [Author_632]
	     [Author_30]
	     [Author_814]
	     [Author_1020]
	     [Author_378]
	     [Author_258]
	     [Author927])
	 (sexo male))

	([Author_1002] of Autor
	 (idAutor "1002")
	 (nombreAutor "Lalita Tademy")
	 (autoresSimilares
	     [Author_527]
	     [Author_270]
	     [Author_989]
	     [Author_498]
	     [Author_638]
	     [Author_852]
	     [Author_966]
	     [Author_175]
	     [Author_631]
	     [Author_711]
	     [Author_262]
	     [Author_263]
	     [Author_539]
	     [Author_454]
	     [Author_549]
	     [Author_1014]
	     [Author_159]
	     [Author157])
	 (sexo female))

	([Author_1003] of Autor
	 (idAutor "1003")
	 (nombreAutor "Ki Longfellow")
	 (autoresSimilares
	     [Author_670]
	     [Author_567]
	     [Author_311]
	     [Author_456]
	     [Author_836]
	     [Author_1057]
	     [Author_0]
	     [Author_254]
	     [Author_385]
	     [Author_378]
	     [Author_877]
	     [Author_25]
	     [Author_496]
	     [Author_1048]
	     [Author64])
	 (sexo female))

	([Author_1004] of Autor
	 (idAutor "1004")
	 (nombreAutor "Varsha Dixit")
	 (autoresSimilares
	     [Author_359]
	     [Author_459]
	     [Author_446]
	     [Author_89]
	     [Author_273]
	     [Author_128]
	     [Author_988]
	     [Author_1025]
	     [Author_41]
	     [Author_581]
	     [Author650])
	 (sexo female))

	([Author_1005] of Autor
	 (idAutor "1005")
	 (nombreAutor "Anita Desai")
	 (autoresSimilares
	     [Author_252]
	     [Author_813]
	     [Author_1092]
	     [Author_405]
	     [Author_570]
	     [Author_569]
	     [Author_1085]
	     [Author_576]
	     [Author_414]
	     [Author_958]
	     [Author_837]
	     [Author_692]
	     [Author_1037]
	     [Author_1090]
	     [Author_572]
	     [Author_844]
	     [Author_458]
	     [Author_335]
	     [Author686])
	 (sexo male))

	([Author_1006] of Autor
	 (idAutor "1006")
	 (nombreAutor "Bibhutibhushan Bandyopadhyay")
	 (autoresSimilares
	     [Author_391]
	     [Author_713]
	     [Author_383]
	     [Author_676]
	     [Author_465]
	     [Author_33]
	     [Author_76]
	     [Author_116]
	     [Author_649]
	     [Author_790]
	     [Author_783]
	     [Author_265]
	     [Author_794]
	     [Author_1056]
	     [Author_1021]
	     [Author_1011]
	     [Author_25]
	     [Author58])
	 (sexo male))

	([Author_1007] of Autor
	 (idAutor "1007")
	 (nombreAutor "Sudha Murty")
	 (autoresSimilares
	     [Author_96]
	     [Author_507]
	     [Author_641]
	     [Author_36]
	     [Author_1026]
	     [Author737])
	 (sexo female))

	([Author_1008] of Autor
	 (idAutor "1008")
	 (nombreAutor "Manju Kapur")
	 (autoresSimilares
	     [Author_705]
	     [Author_786]
	     [Author_807]
	     [Author_139]
	     [Author_97]
	     [Author_336]
	     [Author_791]
	     [Author258])
	 (sexo female))

	([Author_1009] of Autor
	 (idAutor "1009")
	 (nombreAutor "Kiran Nagarkar")
	 (autoresSimilares
	     [Author_601]
	     [Author_143]
	     [Author_828]
	     [Author_869]
	     [Author_332]
	     [Author_310]
	     [Author94])
	 (sexo male))

	([Author_1010] of Autor
	 (idAutor "1010")
	 (nombreAutor "Jerry Pinto")
	 (autoresSimilares
	     [Author_335]
	     [Author_739]
	     [Author_18]
	     [Author_852]
	     [Author_1043]
	     [Author_724]
	     [Author_149]
	     [Author_1001]
	     [Author_697]
	     [Author_299]
	     [Author_887]
	     [Author_161]
	     [Author_192]
	     [Author_225]
	     [Author_1096]
	     [Author470])
	 (sexo male))

	([Author_1011] of Autor
	 (idAutor "1011")
	 (nombreAutor "Ashwin Sanghi")
	 (autoresSimilares
	     [Author_1015]
	     [Author_89]
	     [Author_543]
	     [Author450])
	 (sexo male))

	([Author_1012] of Autor
	 (idAutor "1012")
	 (nombreAutor "Kiran Desai")
	 (autoresSimilares
	     [Author_1062]
	     [Author_889]
	     [Author_17]
	     [Author_1024]
	     [Author_974]
	     [Author_276]
	     [Author_1070]
	     [Author_187]
	     [Author_963]
	     [Author_709]
	     [Author879])
	 (sexo male))

	([Author_1013] of Autor
	 (idAutor "1013")
	 (nombreAutor "RK Narayan")
	 (autoresSimilares
	     [Author_709]
	     [Author_445]
	     [Author_416]
	     [Author_1041]
	     [Author_442]
	     [Author_1071]
	     [Author_712]
	     [Author_204]
	     [Author_609]
	     [Author_70]
	     [Author_449]
	     [Author_342]
	     [Author_353]
	     [Author_256]
	     [Author_577]
	     [Author_1047]
	     [Author_861]
	     [Author313])
	 (sexo male))

	([Author_1014] of Autor
	 (idAutor "1014")
	 (nombreAutor "Anuja Chauhan")
	 (autoresSimilares
	     [Author_443]
	     [Author_97]
	     [Author_337]
	     [Author_240]
	     [Author_1103]
	     [Author_519]
	     [Author_543]
	     [Author_610]
	     [Author_690]
	     [Author_452]
	     [Author869])
	 (sexo male))

	([Author_1015] of Autor
	 (idAutor "1015")
	 (nombreAutor "Amish Tripathi")
	 (autoresSimilares
	     [Author_1002]
	     [Author_517]
	     [Author_454]
	     [Author_107]
	     [Author_1047]
	     [Author_740]
	     [Author_759]
	     [Author_182]
	     [Author_868]
	     [Author564])
	 (sexo male))

	([Author_1016] of Autor
	 (idAutor "1016")
	 (nombreAutor "Indu Sundaresan")
	 (autoresSimilares
	     [Author_402]
	     [Author_212]
	     [Author_735]
	     [Author_713]
	     [Author_223]
	     [Author_754]
	     [Author_13]
	     [Author_241]
	     [Author_318]
	     [Author_884]
	     [Author_728]
	     [Author_495]
	     [Author_373]
	     [Author181])
	 (sexo male))

	([Author_1017] of Autor
	 (idAutor "1017")
	 (nombreAutor "Ruth Prawer Jhabvala")
	 (autoresSimilares
	     [Author_365]
	     [Author472])
	 (sexo female))

	([Author_1018] of Autor
	 (idAutor "1018")
	 (nombreAutor "Rabindranath Tagore")
	 (autoresSimilares
	     [Author_61]
	     [Author615])
	 (sexo male))

	([Author_1019] of Autor
	 (idAutor "1019")
	 (nombreAutor "Nilesh Rathod")
	 (autoresSimilares
	     [Author_461]
	     [Author_485]
	     [Author_439]
	     [Author_267]
	     [Author_35]
	     [Author_125]
	     [Author_448]
	     [Author_487]
	     [Author_8]
	     [Author_243]
	     [Author_893]
	     [Author_15]
	     [Author_1012]
	     [Author_1082]
	     [Author_271]
	     [Author_416]
	     [Author_471]
	     [Author_443]
	     [Author_579]
	     [Author313])
	 (sexo male))

	([Author_1020] of Autor
	 (idAutor "1020")
	 (nombreAutor "Monica Ali")
	 (autoresSimilares
	     [Author_654]
	     [Author_345]
	     [Author796])
	 (sexo female))

	([Author_1021] of Autor
	 (idAutor "1021")
	 (nombreAutor "JG Farrell")
	 (autoresSimilares
	     [Author_266]
	     [Author_432]
	     [Author_272]
	     [Author_510]
	     [Author_890]
	     [Author_823]
	     [Author_244]
	     [Author_322]
	     [Author329])
	 (sexo male))

	([Author_1022] of Autor
	 (idAutor "1022")
	 (nombreAutor "Anurag Mathur")
	 (autoresSimilares
	     [Author1079])
	 (sexo male))

	([Author_1023] of Autor
	 (idAutor "1023")
	 (nombreAutor "Manil Suri")
	 (autoresSimilares
	     [Author_625]
	     [Author_169]
	     [Author_671]
	     [Author_63]
	     [Author_471]
	     [Author905])
	 (sexo male))

	([Author_1024] of Autor
	 (idAutor "1024")
	 (nombreAutor "Ruskin Bond")
	 (autoresSimilares
	     [Author13])
	 (sexo male))

	([Author_1025] of Autor
	 (idAutor "1025")
	 (nombreAutor "Mulk Raj Anand")
	 (autoresSimilares
	     [Author_612]
	     [Author_296]
	     [Author_482]
	     [Author_658]
	     [Author_573]
	     [Author527])
	 (sexo male))

	([Author_1026] of Autor
	 (idAutor "1026")
	 (nombreAutor "VS Naipaul")
	 (autoresSimilares
	     [Author_408]
	     [Author_370]
	     [Author_948]
	     [Author_1028]
	     [Author_94]
	     [Author255])
	 (sexo male))

	([Author_1027] of Autor
	 (idAutor "1027")
	 (nombreAutor "Thrity Umrigar")
	 (autoresSimilares
	     [Author272])
	 (sexo female))

	([Author_1028] of Autor
	 (idAutor "1028")
	 (nombreAutor "Vikram Chandra")
	 (autoresSimilares
	     [Author_741]
	     [Author_383]
	     [Author_328]
	     [Author_292]
	     [Author_830]
	     [Author_500]
	     [Author_345]
	     [Author_308]
	     [Author_617]
	     [Author_641]
	     [Author168])
	 (sexo male))

	([Author_1029] of Autor
	 (idAutor "1029")
	 (nombreAutor "Upamanyu Chatterjee")
	 (autoresSimilares
	     [Author_772]
	     [Author_212]
	     [Author26])
	 (sexo male))

	([Author_1030] of Autor
	 (idAutor "1030")
	 (nombreAutor "Rasana Atreya")
	 (autoresSimilares
	     [Author_539]
	     [Author_692]
	     [Author_750]
	     [Author_75]
	     [Author_821]
	     [Author_252]
	     [Author_1050]
	     [Author717])
	 (sexo female))

	([Author_1031] of Autor
	 (idAutor "1031")
	 (nombreAutor "Khushwant Singh")
	 (autoresSimilares
	     [Author_293]
	     [Author_283]
	     [Author_91]
	     [Author_153]
	     [Author_909]
	     [Author_183]
	     [Author_811]
	     [Author_527]
	     [Author_15]
	     [Author_831]
	     [Author_10]
	     [Author1037])
	 (sexo male))

	([Author_1032] of Autor
	 (idAutor "1032")
	 (nombreAutor "Teresa Garcia")
	 (autoresSimilares
	     [Author_590]
	     [Author_351]
	     [Author_88]
	     [Author_866]
	     [Author152])
	 (sexo female))

	([Author_1033] of Autor
	 (idAutor "1033")
	 (nombreAutor "Lauren  Hunter")
	 (autoresSimilares
	     [Author_11]
	     [Author_255]
	     [Author_898]
	     [Author_120]
	     [Author_358]
	     [Author_574]
	     [Author_309]
	     [Author202])
	 (sexo male))

	([Author_1034] of Autor
	 (idAutor "1034")
	 (nombreAutor "Bennett R Coles")
	 (autoresSimilares
	     [Author_826]
	     [Author_560]
	     [Author_772]
	     [Author_759]
	     [Author_152]
	     [Author_112]
	     [Author_862]
	     [Author_97]
	     [Author_303]
	     [Author_1002]
	     [Author_830]
	     [Author_1096]
	     [Author_1089]
	     [Author_980]
	     [Author_186]
	     [Author697])
	 (sexo male))

	([Author_1035] of Autor
	 (idAutor "1035")
	 (nombreAutor "Daniel D Longdon")
	 (autoresSimilares
	     [Author_346]
	     [Author585])
	 (sexo male))

	([Author_1036] of Autor
	 (idAutor "1036")
	 (nombreAutor "MeiLin Miranda")
	 (autoresSimilares
	     [Author_242]
	     [Author_210]
	     [Author_32]
	     [Author_301]
	     [Author_671]
	     [Author_514]
	     [Author_17]
	     [Author_943]
	     [Author_842]
	     [Author_630]
	     [Author_67]
	     [Author_538]
	     [Author_952]
	     [Author_447]
	     [Author_403]
	     [Author_936]
	     [Author_622]
	     [Author1061])
	 (sexo female))

	([Author_1037] of Autor
	 (idAutor "1037")
	 (nombreAutor "Elizabeth Lang")
	 (autoresSimilares
	     [Author_62]
	     [Author_20]
	     [Author_341]
	     [Author393])
	 (sexo female))

	([Author_1038] of Autor
	 (idAutor "1038")
	 (nombreAutor "Benjamin R  Smith")
	 (autoresSimilares
	     [Author_16]
	     [Author_653]
	     [Author_995]
	     [Author_885]
	     [Author_747]
	     [Author_323]
	     [Author_892]
	     [Author_5]
	     [Author_208]
	     [Author_68]
	     [Author534])
	 (sexo female))

	([Author_1039] of Autor
	 (idAutor "1039")
	 (nombreAutor "Rick Copper")
	 (autoresSimilares
	     [Author_874]
	     [Author_950]
	     [Author_636]
	     [Author_111]
	     [Author_796]
	     [Author_801]
	     [Author_651]
	     [Author928])
	 (sexo male))

	([Author_1040] of Autor
	 (idAutor "1040")
	 (nombreAutor "AN Willis")
	 (autoresSimilares
	     [Author_874]
	     [Author_854]
	     [Author_367]
	     [Author_1046]
	     [Author_346]
	     [Author_970]
	     [Author_268]
	     [Author_425]
	     [Author_977]
	     [Author_360]
	     [Author_746]
	     [Author_474]
	     [Author_500]
	     [Author_1059]
	     [Author_17]
	     [Author_471]
	     [Author_612]
	     [Author857])
	 (sexo female))

	([Author_1041] of Autor
	 (idAutor "1041")
	 (nombreAutor "KT Hanna")
	 (autoresSimilares
	     [Author_916]
	     [Author_260]
	     [Author_707]
	     [Author_464]
	     [Author_1088]
	     [Author_809]
	     [Author_18]
	     [Author_273]
	     [Author_681]
	     [Author_544]
	     [Author_220]
	     [Author_543]
	     [Author_618]
	     [Author_1043]
	     [Author_84]
	     [Author_871]
	     [Author_107]
	     [Author_371]
	     [Author51])
	 (sexo female))

	([Author_1042] of Autor
	 (idAutor "1042")
	 (nombreAutor "Debra Dockter")
	 (autoresSimilares
	     [Author_1106]
	     [Author_658]
	     [Author_1]
	     [Author_931]
	     [Author_900]
	     [Author_1071]
	     [Author_1087]
	     [Author_33]
	     [Author_459]
	     [Author_1051]
	     [Author68])
	 (sexo male))

	([Author_1043] of Autor
	 (idAutor "1043")
	 (nombreAutor "Fonda Lee")
	 (autoresSimilares
	     [Author_400]
	     [Author_863]
	     [Author_1094]
	     [Author_1071]
	     [Author_107]
	     [Author_1102]
	     [Author_61]
	     [Author_140]
	     [Author_801]
	     [Author_447]
	     [Author_466]
	     [Author_309]
	     [Author_330]
	     [Author_64]
	     [Author477])
	 (sexo male))

	([Author_1044] of Autor
	 (idAutor "1044")
	 (nombreAutor "Mackenzi Lee")
	 (autoresSimilares
	     [Author_686]
	     [Author_350]
	     [Author_497]
	     [Author297])
	 (sexo female))

	([Author_1045] of Autor
	 (idAutor "1045")
	 (nombreAutor "AJ Steiger")
	 (autoresSimilares
	     [Author_982]
	     [Author_1051]
	     [Author_417]
	     [Author_35]
	     [Author_192]
	     [Author_321]
	     [Author_501]
	     [Author_802]
	     [Author_269]
	     [Author_569]
	     [Author_598]
	     [Author494])
	 (sexo female))

	([Author_1046] of Autor
	 (idAutor "1046")
	 (nombreAutor "Pintip Dunn")
	 (autoresSimilares
	     [Author_461]
	     [Author_138]
	     [Author267])
	 (sexo female))

	([Author_1047] of Autor
	 (idAutor "1047")
	 (nombreAutor "Genevieve Cogman")
	 (autoresSimilares
	     [Author_726]
	     [Author_654]
	     [Author_838]
	     [Author_764]
	     [Author_441]
	     [Author_842]
	     [Author_600]
	     [Author_872]
	     [Author_940]
	     [Author486])
	 (sexo female))

	([Author_1048] of Autor
	 (idAutor "1048")
	 (nombreAutor "Kelly Loy Gilbert")
	 (autoresSimilares
	     [Author_661]
	     [Author_381]
	     [Author_649]
	     [Author_188]
	     [Author_554]
	     [Author_229]
	     [Author_167]
	     [Author_166]
	     [Author_566]
	     [Author_248]
	     [Author_365]
	     [Author_733]
	     [Author_945]
	     [Author_585]
	     [Author_782]
	     [Author_799]
	     [Author_635]
	     [Author_463]
	     [Author762])
	 (sexo male))

	([Author_1049] of Autor
	 (idAutor "1049")
	 (nombreAutor "NK Traver")
	 (autoresSimilares
	     [Author_479]
	     [Author_174]
	     [Author_695]
	     [Author_1088]
	     [Author_282]
	     [Author_183]
	     [Author_196]
	     [Author_920]
	     [Author_910]
	     [Author_232]
	     [Author_685]
	     [Author_423]
	     [Author_384]
	     [Author_775]
	     [Author205])
	 (sexo male))

	([Author_1050] of Autor
	 (idAutor "1050")
	 (nombreAutor "Jenny  Martin")
	 (autoresSimilares
	     [Author_993]
	     [Author_486]
	     [Author_873]
	     [Author314])
	 (sexo female))

	([Author_1051] of Autor
	 (idAutor "1051")
	 (nombreAutor "Holly Bodger")
	 (autoresSimilares
	     [Author_962]
	     [Author_384]
	     [Author_573]
	     [Author275])
	 (sexo female))

	([Author_1052] of Autor
	 (idAutor "1052")
	 (nombreAutor "Kayla Howarth")
	 (autoresSimilares
	     [Author_394]
	     [Author_898]
	     [Author_521]
	     [Author_549]
	     [Author215])
	 (sexo male))

	([Author_1053] of Autor
	 (idAutor "1053")
	 (nombreAutor "Sable Hunter")
	 (autoresSimilares
	     [Author_833]
	     [Author_775]
	     [Author_786]
	     [Author_35]
	     [Author_891]
	     [Author_1068]
	     [Author_11]
	     [Author_201]
	     [Author_508]
	     [Author_944]
	     [Author_578]
	     [Author_1104]
	     [Author_450]
	     [Author_153]
	     [Author_1066]
	     [Author_2]
	     [Author_913]
	     [Author_825]
	     [Author278])
	 (sexo female))

	([Author_1054] of Autor
	 (idAutor "1054")
	 (nombreAutor "Karl Wiggins")
	 (autoresSimilares
	     [Author_419]
	     [Author_770]
	     [Author_955]
	     [Author_998]
	     [Author_517]
	     [Author_148]
	     [Author_990]
	     [Author568])
	 (sexo male))

	([Author_1055] of Autor
	 (idAutor "1055")
	 (nombreAutor "Truman Capote")
	 (autoresSimilares
	     [Author_188]
	     [Author_76]
	     [Author_1086]
	     [Author_540]
	     [Author_415]
	     [Author_748]
	     [Author_702]
	     [Author_708]
	     [Author_145]
	     [Author_1016]
	     [Author_365]
	     [Author_221]
	     [Author_213]
	     [Author_627]
	     [Author160])
	 (sexo male))

	([Author_1056] of Autor
	 (idAutor "1056")
	 (nombreAutor "Katherine Reay")
	 (autoresSimilares
	     [Author_505]
	     [Author_164]
	     [Author_385]
	     [Author_611]
	     [Author_173]
	     [Author_111]
	     [Author_172]
	     [Author617])
	 (sexo female))

	([Author_1057] of Autor
	 (idAutor "1057")
	 (nombreAutor "John Dunning")
	 (autoresSimilares
	     [Author_634]
	     [Author_582]
	     [Author694])
	 (sexo male))

	([Author_1058] of Autor
	 (idAutor "1058")
	 (nombreAutor "Gabrielle Zevin")
	 (autoresSimilares
	     [Author_40]
	     [Author_748]
	     [Author_567]
	     [Author_786]
	     [Author_491]
	     [Author_499]
	     [Author_547]
	     [Author_391]
	     [Author_185]
	     [Author_1061]
	     [Author_648]
	     [Author_841]
	     [Author_18]
	     [Author53])
	 (sexo female))

	([Author_1059] of Autor
	 (idAutor "1059")
	 (nombreAutor "Walter Moers")
	 (autoresSimilares
	     [Author_836]
	     [Author_838]
	     [Author_360]
	     [Author792])
	 (sexo male))

	([Author_1060] of Autor
	 (idAutor "1060")
	 (nombreAutor "CC Gibbs")
	 (autoresSimilares
	     [Author1045])
	 (sexo male))

	([Author_1061] of Autor
	 (idAutor "1061")
	 (nombreAutor "KM Golland")
	 (autoresSimilares
	     [Author_405]
	     [Author513])
	 (sexo female))

	([Author_1062] of Autor
	 (idAutor "1062")
	 (nombreAutor "Emem Uko")
	 (autoresSimilares
	     [Author_281]
	     [Author_495]
	     [Author_1073]
	     [Author150])
	 (sexo female))

	([Author_1063] of Autor
	 (idAutor "1063")
	 (nombreAutor "BA Shapiro")
	 (autoresSimilares
	     [Author_657]
	     [Author_894]
	     [Author_113]
	     [Author_918]
	     [Author_65]
	     [Author_562]
	     [Author_0]
	     [Author_769]
	     [Author_146]
	     [Author_510]
	     [Author_948]
	     [Author_44]
	     [Author_635]
	     [Author_733]
	     [Author_972]
	     [Author748])
	 (sexo female))

	([Author_1064] of Autor
	 (idAutor "1064")
	 (nombreAutor "Nancy Bilyeau")
	 (autoresSimilares
	     [Author_256]
	     [Author_236]
	     [Author_861]
	     [Author_636]
	     [Author_174]
	     [Author_694]
	     [Author_704]
	     [Author_267]
	     [Author_1027]
	     [Author_660]
	     [Author_357]
	     [Author_435]
	     [Author_883]
	     [Author_218]
	     [Author_1098]
	     [Author_676]
	     [Author_849]
	     [Author1046])
	 (sexo female))

	([Author_1065] of Autor
	 (idAutor "1065")
	 (nombreAutor "Melanie Benjamin")
	 (autoresSimilares
	     [Author_23]
	     [Author_117]
	     [Author_389]
	     [Author_425]
	     [Author_72]
	     [Author_925]
	     [Author283])
	 (sexo female))

	([Author_1066] of Autor
	 (idAutor "1066")
	 (nombreAutor "Amanda Coplin")
	 (autoresSimilares
	     [Author_1061]
	     [Author_2]
	     [Author_350]
	     [Author_498]
	     [Author_546]
	     [Author_808]
	     [Author_620]
	     [Author_1004]
	     [Author_918]
	     [Author_94]
	     [Author_466]
	     [Author13])
	 (sexo male))

	([Author_1067] of Autor
	 (idAutor "1067")
	 (nombreAutor "Helen Simonson")
	 (autoresSimilares
	     [Author_313]
	     [Author_775]
	     [Author_476]
	     [Author_140]
	     [Author_644]
	     [Author_543]
	     [Author_931]
	     [Author_670]
	     [Author_696]
	     [Author_213]
	     [Author_507]
	     [Author_569]
	     [Author329])
	 (sexo female))

	([Author_1068] of Autor
	 (idAutor "1068")
	 (nombreAutor "Amor Towles")
	 (autoresSimilares
	     [Author_892]
	     [Author_14]
	     [Author_259]
	     [Author_9]
	     [Author_849]
	     [Author_362]
	     [Author_560]
	     [Author_167]
	     [Author_705]
	     [Author_1077]
	     [Author_221]
	     [Author_391]
	     [Author_617]
	     [Author_132]
	     [Author_17]
	     [Author_659]
	     [Author_23]
	     [Author67])
	 (sexo male))

	([Author_1069] of Autor
	 (idAutor "1069")
	 (nombreAutor "Jessica Maria Tuccelli")
	 (autoresSimilares
	     [Author_122]
	     [Author_980]
	     [Author_972]
	     [Author_500]
	     [Author_814]
	     [Author_639]
	     [Author_69]
	     [Author_686]
	     [Author_687]
	     [Author_715]
	     [Author_485]
	     [Author_922]
	     [Author_1001]
	     [Author_481]
	     [Author393])
	 (sexo female))

	([Author_1070] of Autor
	 (idAutor "1070")
	 (nombreAutor "Rosamunde Pilcher")
	 (autoresSimilares
	     [Author_660]
	     [Author_106]
	     [Author_481]
	     [Author_254]
	     [Author_479]
	     [Author_263]
	     [Author_806]
	     [Author_893]
	     [Author1084])
	 (sexo female))

	([Author_1071] of Autor
	 (idAutor "1071")
	 (nombreAutor "Deborah Harkness")
	 (autoresSimilares
	     [Author_528]
	     [Author_169]
	     [Author_884]
	     [Author_378]
	     [Author_495]
	     [Author_116]
	     [Author_1080]
	     [Author_510]
	     [Author_386]
	     [Author_434]
	     [Author715])
	 (sexo male))

	([Author_1072] of Autor
	 (idAutor "1072")
	 (nombreAutor "Randy Susan Meyers")
	 (autoresSimilares
	     [Author_788]
	     [Author_413]
	     [Author_391]
	     [Author925])
	 (sexo female))

	([Author_1073] of Autor
	 (idAutor "1073")
	 (nombreAutor "Lisi Harrison")
	 (autoresSimilares
	     [Author_987]
	     [Author_663]
	     [Author_977]
	     [Author_340]
	     [Author_632]
	     [Author_524]
	     [Author_511]
	     [Author_470]
	     [Author_125]
	     [Author_647]
	     [Author_1107]
	     [Author_715]
	     [Author_112]
	     [Author_912]
	     [Author_900]
	     [Author_316]
	     [Author736])
	 (sexo female))

	([Author_1074] of Autor
	 (idAutor "1074")
	 (nombreAutor "Lizzy Ford")
	 (autoresSimilares
	     [Author724])
	 (sexo female))

	([Author_1075] of Autor
	 (idAutor "1075")
	 (nombreAutor "Jonathan Lethem")
	 (autoresSimilares
	     [Author_123]
	     [Author_725]
	     [Author_607]
	     [Author_615]
	     [Author_689]
	     [Author_989]
	     [Author_496]
	     [Author_324]
	     [Author_491]
	     [Author_293]
	     [Author_459]
	     [Author_153]
	     [Author1083])
	 (sexo male))

	([Author_1076] of Autor
	 (idAutor "1076")
	 (nombreAutor "Karen Marie Moning")
	 (autoresSimilares
	     [Author_789]
	     [Author_572]
	     [Author_561]
	     [Author_296]
	     [Author_400]
	     [Author_383]
	     [Author_845]
	     [Author86])
	 (sexo female))

	([Author_1077] of Autor
	 (idAutor "1077")
	 (nombreAutor "Bret Easton Ellis")
	 (autoresSimilares
	     [Author_56]
	     [Author_1031]
	     [Author_650]
	     [Author_442]
	     [Author_197]
	     [Author_352]
	     [Author_723]
	     [Author_976]
	     [Author_1068]
	     [Author_1076]
	     [Author_968]
	     [Author_691]
	     [Author_850]
	     [Author_689]
	     [Author_226]
	     [Author_941]
	     [Author_77]
	     [Author_570]
	     [Author_465]
	     [Author416])
	 (sexo male))

	([Author_1078] of Autor
	 (idAutor "1078")
	 (nombreAutor "James Redfield")
	 (autoresSimilares
	     [Author_458]
	     [Author_544]
	     [Author1068])
	 (sexo male))

	([Author_1079] of Autor
	 (idAutor "1079")
	 (nombreAutor "Joyce Carol Oates")
	 (autoresSimilares
	     [Author_11]
	     [Author_273]
	     [Author_116]
	     [Author_783]
	     [Author554])
	 (sexo female))

	([Author_1080] of Autor
	 (idAutor "1080")
	 (nombreAutor "Pat Barker")
	 (autoresSimilares
	     [Author_337]
	     [Author_628]
	     [Author_1011]
	     [Author_112]
	     [Author_461]
	     [Author_298]
	     [Author_17]
	     [Author_509]
	     [Author_1002]
	     [Author_577]
	     [Author_345]
	     [Author_516]
	     [Author_1047]
	     [Author_899]
	     [Author_705]
	     [Author_725]
	     [Author_473]
	     [Author_706]
	     [Author_685]
	     [Author92])
	 (sexo male))

	([Author_1081] of Autor
	 (idAutor "1081")
	 (nombreAutor "Alex Garland")
	 (autoresSimilares
	     [Author_52]
	     [Author_709]
	     [Author_161]
	     [Author_1057]
	     [Author_582]
	     [Author_179]
	     [Author_773]
	     [Author_815]
	     [Author_333]
	     [Author_1041]
	     [Author_901]
	     [Author_1088]
	     [Author_614]
	     [Author_542]
	     [Author338])
	 (sexo male))

	([Author_1082] of Autor
	 (idAutor "1082")
	 (nombreAutor "James Ellroy")
	 (autoresSimilares
	     [Author_650]
	     [Author_71]
	     [Author_73]
	     [Author_632]
	     [Author539])
	 (sexo male))

	([Author_1083] of Autor
	 (idAutor "1083")
	 (nombreAutor "Philip Roth")
	 (autoresSimilares
	     [Author_126]
	     [Author_520]
	     [Author_1001]
	     [Author_898]
	     [Author_71]
	     [Author_685]
	     [Author_1060]
	     [Author_1063]
	     [Author_343]
	     [Author_1100]
	     [Author_842]
	     [Author_93]
	     [Author677])
	 (sexo male))

	([Author_1084] of Autor
	 (idAutor "1084")
	 (nombreAutor "JM Coetzee")
	 (autoresSimilares
	     [Author_348]
	     [Author_1080]
	     [Author_120]
	     [Author_96]
	     [Author_134]
	     [Author_366]
	     [Author_106]
	     [Author_254]
	     [Author_762]
	     [Author_661]
	     [Author_523]
	     [Author_330]
	     [Author_304]
	     [Author_732]
	     [Author_323]
	     [Author_411]
	     [Author_412]
	     [Author_527]
	     [Author332])
	 (sexo male))

	([Author_1085] of Autor
	 (idAutor "1085")
	 (nombreAutor "Lydia Kang")
	 (autoresSimilares
	     [Author_175]
	     [Author_1079]
	     [Author_774]
	     [Author_123]
	     [Author_359]
	     [Author_1065]
	     [Author_801]
	     [Author_533]
	     [Author151])
	 (sexo female))

	([Author_1086] of Autor
	 (idAutor "1086")
	 (nombreAutor "Charity Bradford")
	 (autoresSimilares
	     [Author_839]
	     [Author_336]
	     [Author_982]
	     [Author_158]
	     [Author_887]
	     [Author_525]
	     [Author_156]
	     [Author_1072]
	     [Author_724]
	     [Author_515]
	     [Author_387]
	     [Author_68]
	     [Author_1071]
	     [Author_537]
	     [Author_333]
	     [Author_434]
	     [Author1010])
	 (sexo female))

	([Author_1087] of Autor
	 (idAutor "1087")
	 (nombreAutor "Chris Wooding")
	 (autoresSimilares
	     [Author_404]
	     [Author_72]
	     [Author_594]
	     [Author_925]
	     [Author_271]
	     [Author_561]
	     [Author_440]
	     [Author_426]
	     [Author_630]
	     [Author_117]
	     [Author_563]
	     [Author_629]
	     [Author_938]
	     [Author_887]
	     [Author_454]
	     [Author_546]
	     [Author_603]
	     [Author_102]
	     [Author_95]
	     [Author1026])
	 (sexo male))

	([Author_1088] of Autor
	 (idAutor "1088")
	 (nombreAutor "Annie Laurie Cechini")
	 (autoresSimilares
	     [Author_740]
	     [Author_210]
	     [Author957])
	 (sexo male))

	([Author_1089] of Autor
	 (idAutor "1089")
	 (nombreAutor "Warren Ellis")
	 (autoresSimilares
	     [Author_192]
	     [Author_281]
	     [Author_371]
	     [Author_27]
	     [Author_380]
	     [Author_91]
	     [Author_186]
	     [Author_1093]
	     [Author_273]
	     [Author_987]
	     [Author_4]
	     [Author_411]
	     [Author_793]
	     [Author_484]
	     [Author61])
	 (sexo male))

	([Author_1090] of Autor
	 (idAutor "1090")
	 (nombreAutor "Evie Manieri")
	 (autoresSimilares
	     [Author_373]
	     [Author_11]
	     [Author_32]
	     [Author_5]
	     [Author_31]
	     [Author_318]
	     [Author_1038]
	     [Author_341]
	     [Author_593]
	     [Author_874]
	     [Author_678]
	     [Author_9]
	     [Author_1063]
	     [Author_601]
	     [Author_381]
	     [Author_440]
	     [Author_246]
	     [Author_565]
	     [Author993])
	 (sexo female))

	([Author_1091] of Autor
	 (idAutor "1091")
	 (nombreAutor "Brian  McClellan")
	 (autoresSimilares
	     [Author_2]
	     [Author_896]
	     [Author_449]
	     [Author_630]
	     [Author_142]
	     [Author_119]
	     [Author_227]
	     [Author_36]
	     [Author_211]
	     [Author_169]
	     [Author_205]
	     [Author_707]
	     [Author_341]
	     [Author_703]
	     [Author_646]
	     [Author_969]
	     [Author_901]
	     [Author_606]
	     [Author778])
	 (sexo male))

	([Author_1092] of Autor
	 (idAutor "1092")
	 (nombreAutor "Alex J Cavanaugh")
	 (autoresSimilares
	     [Author_14]
	     [Author_239]
	     [Author_1026]
	     [Author_1000]
	     [Author_754]
	     [Author_730]
	     [Author_722]
	     [Author_413]
	     [Author_757]
	     [Author_711]
	     [Author_310]
	     [Author_277]
	     [Author_115]
	     [Author_1012]
	     [Author_618]
	     [Author399])
	 (sexo male))

	([Author_1093] of Autor
	 (idAutor "1093")
	 (nombreAutor "Douglas Hulick")
	 (autoresSimilares
	     [Author_730]
	     [Author_170]
	     [Author_1041]
	     [Author_844]
	     [Author_729]
	     [Author772])
	 (sexo male))

	([Author_1094] of Autor
	 (idAutor "1094")
	 (nombreAutor "Zen Cho")
	 (autoresSimilares
	     [Author_187]
	     [Author_545]
	     [Author_495]
	     [Author_901]
	     [Author_208]
	     [Author_684]
	     [Author_147]
	     [Author_410]
	     [Author_370]
	     [Author_539]
	     [Author_695]
	     [Author_999]
	     [Author_61]
	     [Author_361]
	     [Author879])
	 (sexo male))

	([Author_1095] of Autor
	 (idAutor "1095")
	 (nombreAutor "Adrian Tchaikovsky")
	 (autoresSimilares
	     [Author_1023]
	     [Author_254]
	     [Author_625]
	     [Author_939]
	     [Author_764]
	     [Author_695]
	     [Author_328]
	     [Author_728]
	     [Author635])
	 (sexo male))

	([Author_1096] of Autor
	 (idAutor "1096")
	 (nombreAutor "Judd Trichter")
	 (autoresSimilares
	     [Author_797]
	     [Author_379]
	     [Author_316]
	     [Author_266]
	     [Author_1073]
	     [Author_186]
	     [Author_1023]
	     [Author_793]
	     [Author_731]
	     [Author_441]
	     [Author_698]
	     [Author284])
	 (sexo male))

	([Author_1097] of Autor
	 (idAutor "1097")
	 (nombreAutor "Alex   Marshall")
	 (autoresSimilares
	     [Author_583]
	     [Author_941]
	     [Author_1025]
	     [Author_199]
	     [Author_252]
	     [Author_532]
	     [Author_882]
	     [Author_918]
	     [Author_360]
	     [Author_305]
	     [Author_74]
	     [Author_79]
	     [Author_991]
	     [Author_829]
	     [Author_961]
	     [Author800])
	 (sexo male))

	([Author_1098] of Autor
	 (idAutor "1098")
	 (nombreAutor "Seth Dickinson")
	 (autoresSimilares
	     [Author_307]
	     [Author_767]
	     [Author_789]
	     [Author_262]
	     [Author_540]
	     [Author_657]
	     [Author_1018]
	     [Author_306]
	     [Author_467]
	     [Author_879]
	     [Author_816]
	     [Author_817]
	     [Author_525]
	     [Author530])
	 (sexo male))

	([Author_1099] of Autor
	 (idAutor "1099")
	 (nombreAutor "Ian Tregillis")
	 (autoresSimilares
	     [Author_1001]
	     [Author_1016]
	     [Author_762]
	     [Author_854]
	     [Author_765]
	     [Author_346]
	     [Author_587]
	     [Author_137]
	     [Author_145]
	     [Author_354]
	     [Author_524]
	     [Author_1064]
	     [Author_588]
	     [Author_676]
	     [Author_876]
	     [Author_164]
	     [Author_543]
	     [Author278])
	 (sexo male))

	([Author_1100] of Autor
	 (idAutor "1100")
	 (nombreAutor "Wesley Chu")
	 (autoresSimilares
	     [Author_717]
	     [Author_501]
	     [Author_72]
	     [Author_1010]
	     [Author_152]
	     [Author_621]
	     [Author_733]
	     [Author_346]
	     [Author_196]
	     [Author_660]
	     [Author_910]
	     [Author_889]
	     [Author936])
	 (sexo male))

	([Author_1101] of Autor
	 (idAutor "1101")
	 (nombreAutor "Elizabeth Bear")
	 (autoresSimilares
	     [Author_629]
	     [Author421])
	 (sexo male))

	([Author_1102] of Autor
	 (idAutor "1102")
	 (nombreAutor "Luke Scull")
	 (autoresSimilares
	     [Author_230]
	     [Author_135]
	     [Author_641]
	     [Author_616]
	     [Author_949]
	     [Author_481]
	     [Author_1048]
	     [Author_221]
	     [Author_893]
	     [Author_56]
	     [Author_653]
	     [Author_124]
	     [Author_987]
	     [Author_461]
	     [Author_95]
	     [Author_1007]
	     [Author_668]
	     [Author251])
	 (sexo male))

	([Author_1103] of Autor
	 (idAutor "1103")
	 (nombreAutor "Victor Miln")
	 (autoresSimilares
	     [Author603])
	 (sexo male))

	([Author_1104] of Autor
	 (idAutor "1104")
	 (nombreAutor "Ken Liu")
	 (autoresSimilares
	     [Author_42]
	     [Author_423]
	     [Author_885]
	     [Author_41]
	     [Author_221]
	     [Author_1005]
	     [Author_129]
	     [Author_1022]
	     [Author_510]
	     [Author_422]
	     [Author_1047]
	     [Author_287]
	     [Author_550]
	     [Author1029])
	 (sexo male))

	([Author_1105] of Autor
	 (idAutor "1105")
	 (nombreAutor "Todd Strasser")
	 (autoresSimilares
	     [Author_45]
	     [Author_1064]
	     [Author_580]
	     [Author_847]
	     [Author_393]
	     [Author_1065]
	     [Author_442]
	     [Author_383]
	     [Author_834]
	     [Author_857]
	     [Author_1023]
	     [Author_1062]
	     [Author333])
	 (sexo male))

	([Author_1106] of Autor
	 (idAutor "1106")
	 (nombreAutor "Aleksandr Solzhenitsyn")
	 (autoresSimilares
	     [Author_584]
	     [Author_130]
	     [Author_749]
	     [Author_954]
	     [Author_1097]
	     [Author_912]
	     [Author_907]
	     [Author_946]
	     [Author_659]
	     [Author_146]
	     [Author_237]
	     [Author_167]
	     [Author_787]
	     [Author_1099]
	     [Author_860]
	     [Author_437]
	     [Author_618]
	     [Author306])
	 (sexo male))

	([Author_1107] of Autor
	 (idAutor "1107")
	 (nombreAutor "John Knowles")
	 (autoresSimilares
	     [Author_1063]
	     [Author_754]
	     [Author_488]
	     [Author_264]
	     [Author_926]
	     [Author_1022]
	     [Author_616]
	     [Author_89]
	     [Author_633]
	     [Author_188]
	     [Author_382]
	     [Author_1073]
	     [Author_940]
	     [Author_325]
	     [Author_1093]
	     [Author_827]
	     [Author10])
	 (sexo male))

	([Genres_0] of Genero
	 (idGenero "0")
	 (nombreGenero "Fiction"))

	([Genres_1] of Genero
	 (idGenero "1")
	 (generosSimilares [Genres_0])
	 (nombreGenero "Mystery"))

	([Genres_2] of Genero
	 (idGenero "2")
	 (generosSimilares [Genres_1])
	 (nombreGenero "Magical Realism"))

	([Genres_3] of Genero
	 (idGenero "3")
	 (generosSimilares [Genres_2])
	 (nombreGenero "Young Adult"))

	([Genres_4] of Genero
	 (idGenero "4")
	 (generosSimilares [Genres_3])
	 (nombreGenero "Science Fiction"))

	([Genres_5] of Genero
	 (idGenero "5")
	 (generosSimilares [Genres_4])
	 (nombreGenero "Classics"))

	([Genres_6] of Genero
	 (idGenero "6")
	 (generosSimilares [Genres_5])
	 (nombreGenero "Romance"))

	([Genres_7] of Genero
	 (idGenero "7")
	 (generosSimilares [Genres_6])
	 (nombreGenero "Adult Fiction"))

	([Genres_8] of Genero
	 (idGenero "8")
	 (generosSimilares [Genres_7])
	 (nombreGenero "Apocalyptic"))

	([Genres_9] of Genero
	 (idGenero "9")
	 (generosSimilares [Genres_8])
	 (nombreGenero "Horror"))

	([Genres_10] of Genero
	 (idGenero "10")
	 (generosSimilares [Genres_9])
	 (nombreGenero "Fantasy"))

	([Genres_11] of Genero
	 (idGenero "11")
	 (generosSimilares [Genres_10])
	 (nombreGenero "Contemporary"))

	([Genres_12] of Genero
	 (idGenero "12")
	 (generosSimilares [Genres_11])
	 (nombreGenero "Womens Fiction"))

	([Genres_13] of Genero
	 (idGenero "13")
	 (generosSimilares [Genres_12])
	 (nombreGenero "Historical"))

	([Genres_14] of Genero
	 (idGenero "14")
	 (generosSimilares [Genres_13])
	 (nombreGenero "Humor"))

	([Genres_15] of Genero
	 (idGenero "15")
	 (generosSimilares [Genres_14])
	 (nombreGenero "Cultural"))

	([Genres_16] of Genero
	 (idGenero "16")
	 (generosSimilares [Genres_15])
	 (nombreGenero "Literature"))

	([Genres_17] of Genero
	 (idGenero "17")
	 (generosSimilares [Genres_16])
	 (nombreGenero "Short Stories"))

	([Genres_18] of Genero
	 (idGenero "18")
	 (generosSimilares [Genres_17])
	 (nombreGenero "New York"))

	([Genres_19] of Genero
	 (idGenero "19")
	 (generosSimilares [Genres_18])
	 (nombreGenero "Animals"))

	([Genres_20] of Genero
	 (idGenero "20")
	 (generosSimilares [Genres_19])
	 (nombreGenero "Novels"))

	([Genres_21] of Genero
	 (idGenero "21")
	 (generosSimilares [Genres_20])
	 (nombreGenero "Realistic Fiction"))

	([Genres_22] of Genero
	 (idGenero "22")
	 (generosSimilares [Genres_21])
	 (nombreGenero "Childrens"))

	([Genres_23] of Genero
	 (idGenero "23")
	 (generosSimilares [Genres_22])
	 (nombreGenero "Sports"))

	([Genres_24] of Genero
	 (idGenero "24")
	 (generosSimilares [Genres_23])
	 (nombreGenero "Christian"))

	([Genres_25] of Genero
	 (idGenero "25")
	 (generosSimilares [Genres_24])
	 (nombreGenero "Christian Fiction"))

	([Genres_26] of Genero
	 (idGenero "26")
	 (generosSimilares [Genres_25])
	 (nombreGenero "War"))

	([Genres_27] of Genero
	 (idGenero "27")
	 (generosSimilares [Genres_26])
	 (nombreGenero "Feminism"))

	([Genres_28] of Genero
	 (idGenero "28")
	 (generosSimilares [Genres_27])
	 (nombreGenero "European Literature"))

	([Genres_29] of Genero
	 (idGenero "29")
	 (generosSimilares [Genres_28])
	 (nombreGenero "Thriller"))

	([Genres_30] of Genero
	 (idGenero "30")
	 (generosSimilares [Genres_29])
	 (nombreGenero "Philosophy"))

	([Genres_31] of Genero
	 (idGenero "31")
	 (generosSimilares [Genres_30])
	 (nombreGenero "New Adult"))

	([Genres_32] of Genero
	 (idGenero "32")
	 (generosSimilares [Genres_31])
	 (nombreGenero "Space"))

	([Genres_33] of Genero
	 (idGenero "33")
	 (generosSimilares [Genres_32])
	 (nombreGenero "Westerns"))

	([Genres_34] of Genero
	 (idGenero "34")
	 (generosSimilares [Genres_33])
	 (nombreGenero "Adventure"))

	([Genres_35] of Genero
	 (idGenero "35")
	 (generosSimilares [Genres_34])
	 (nombreGenero "Music"))

	([Genres_36] of Genero
	 (idGenero "36")
	 (generosSimilares [Genres_35])
	 (nombreGenero "Sports and Games"))

	([Genres_37] of Genero
	 (idGenero "37")
	 (generosSimilares [Genres_36])
	 (nombreGenero "American"))

	([Genres_38] of Genero
	 (idGenero "38")
	 (generosSimilares [Genres_37])
	 (nombreGenero "See top shelves…"))

	([Genres_39] of Genero
	 (idGenero "39")
	 (generosSimilares [Genres_38])
	 (nombreGenero "Lgbt"))

	([Genres_40] of Genero
	 (idGenero "40")
	 (generosSimilares [Genres_39])
	 (nombreGenero "Food and Drink"))

	([Genres_41] of Genero
	 (idGenero "41")
	 (generosSimilares [Genres_40])
	 (nombreGenero "Plays"))

	([Genres_42] of Genero
	 (idGenero "42")
	 (generosSimilares [Genres_41])
	 (nombreGenero "Media Tie In"))

	([Genres_43] of Genero
	 (idGenero "43")
	 (generosSimilares [Genres_42])
	 (nombreGenero "Suspense"))

	([Genres_44] of Genero
	 (idGenero "44")
	 (generosSimilares [Genres_43])
	 (nombreGenero "Dark"))

	([Genres_45] of Genero
	 (idGenero "45")
	 (generosSimilares [Genres_44])
	 (nombreGenero "Northern Africa"))

	([Genres_46] of Genero
	 (idGenero "46")
	 (generosSimilares [Genres_45])
	 (nombreGenero "Travel"))

	([Genres_47] of Genero
	 (idGenero "47")
	 (generosSimilares [Genres_46])
	 (nombreGenero "Literary Fiction"))

	([Genres_48] of Genero
	 (idGenero "48")
	 (generosSimilares [Genres_47])
	 (nombreGenero "Nobel Prize"))

	([Genres_49] of Genero
	 (idGenero "49")
	 (generosSimilares [Genres_48])
	 (nombreGenero "Asian Literature"))

	([Genres_50] of Genero
	 (idGenero "50")
	 (generosSimilares [Genres_49])
	 (nombreGenero "Science Fiction Fantasy"))

	([Genres_51] of Genero
	 (idGenero "51")
	 (generosSimilares [Genres_50])
	 (nombreGenero "Spirituality"))

	([Recomendations_0] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_0]))

	([Recomendations_1] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1]))

	([Recomendations_2] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_2]))

	([Recomendations_3] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_3]))

	([Recomendations_4] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_4]))

	([Recomendations_5] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_5]))

	([Recomendations_6] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_6]))

	([Recomendations_7] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_7]))

	([Recomendations_8] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_8]))

	([Recomendations_9] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_9]))

	([Recomendations_10] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_10]))

	([Recomendations_11] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_11]))

	([Recomendations_12] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_12]))

	([Recomendations_13] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_13]))

	([Recomendations_14] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_14]))

	([Recomendations_15] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_15]))

	([Recomendations_16] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_16]))

	([Recomendations_17] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_17]))

	([Recomendations_18] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_18]))

	([Recomendations_19] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_19]))

	([Recomendations_20] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_20]))

	([Recomendations_21] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_21]))

	([Recomendations_22] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_22]))

	([Recomendations_23] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_23]))

	([Recomendations_24] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_24]))

	([Recomendations_25] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_25]))

	([Recomendations_26] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_26]))

	([Recomendations_27] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_27]))

	([Recomendations_28] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_28]))

	([Recomendations_29] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_29]))

	([Recomendations_30] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_30]))

	([Recomendations_31] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_31]))

	([Recomendations_32] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_32]))

	([Recomendations_33] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_33]))

	([Recomendations_34] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_34]))

	([Recomendations_35] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_35]))

	([Recomendations_36] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_36]))

	([Recomendations_37] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_37]))

	([Recomendations_38] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_38]))

	([Recomendations_39] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_39]))

	([Recomendations_40] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_40]))

	([Recomendations_41] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_41]))

	([Recomendations_42] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_42]))

	([Recomendations_43] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_43]))

	([Recomendations_44] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_44]))

	([Recomendations_45] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_45]))

	([Recomendations_46] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_46]))

	([Recomendations_47] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_47]))

	([Recomendations_48] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_48]))

	([Recomendations_49] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_49]))

	([Recomendations_50] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_50]))

	([Recomendations_51] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_51]))

	([Recomendations_52] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_52]))

	([Recomendations_53] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_53]))

	([Recomendations_54] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_54]))

	([Recomendations_55] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_55]))

	([Recomendations_56] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_56]))

	([Recomendations_57] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_57]))

	([Recomendations_58] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_58]))

	([Recomendations_59] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_59]))

	([Recomendations_60] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_60]))

	([Recomendations_61] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_61]))

	([Recomendations_62] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_62]))

	([Recomendations_63] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_63]))

	([Recomendations_64] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_64]))

	([Recomendations_65] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_65]))

	([Recomendations_66] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_66]))

	([Recomendations_67] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_67]))

	([Recomendations_68] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_68]))

	([Recomendations_69] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_69]))

	([Recomendations_70] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_70]))

	([Recomendations_71] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_71]))

	([Recomendations_72] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_72]))

	([Recomendations_73] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_73]))

	([Recomendations_74] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_74]))

	([Recomendations_75] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_75]))

	([Recomendations_76] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_76]))

	([Recomendations_77] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_77]))

	([Recomendations_78] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_78]))

	([Recomendations_79] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_79]))

	([Recomendations_80] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_80]))

	([Recomendations_81] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_81]))

	([Recomendations_82] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_82]))

	([Recomendations_83] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_83]))

	([Recomendations_84] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_84]))

	([Recomendations_85] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_85]))

	([Recomendations_86] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_86]))

	([Recomendations_87] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_87]))

	([Recomendations_88] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_88]))

	([Recomendations_89] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_89]))

	([Recomendations_90] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_90]))

	([Recomendations_91] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_91]))

	([Recomendations_92] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_92]))

	([Recomendations_93] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_93]))

	([Recomendations_94] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_94]))

	([Recomendations_95] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_95]))

	([Recomendations_96] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_96]))

	([Recomendations_97] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_97]))

	([Recomendations_98] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_98]))

	([Recomendations_99] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_99]))

	([Recomendations_100] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_100]))

	([Recomendations_101] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_101]))

	([Recomendations_102] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_102]))

	([Recomendations_103] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_103]))

	([Recomendations_104] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_104]))

	([Recomendations_105] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_105]))

	([Recomendations_106] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_106]))

	([Recomendations_107] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_107]))

	([Recomendations_108] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_108]))

	([Recomendations_109] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_109]))

	([Recomendations_110] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_110]))

	([Recomendations_111] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_111]))

	([Recomendations_112] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_112]))

	([Recomendations_113] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_113]))

	([Recomendations_114] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_114]))

	([Recomendations_115] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_115]))

	([Recomendations_116] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_116]))

	([Recomendations_117] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_117]))

	([Recomendations_118] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_118]))

	([Recomendations_119] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_119]))

	([Recomendations_120] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_120]))

	([Recomendations_121] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_121]))

	([Recomendations_122] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_122]))

	([Recomendations_123] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_123]))

	([Recomendations_124] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_124]))

	([Recomendations_125] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_125]))

	([Recomendations_126] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_126]))

	([Recomendations_127] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_127]))

	([Recomendations_128] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_128]))

	([Recomendations_129] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_129]))

	([Recomendations_130] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_130]))

	([Recomendations_131] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_131]))

	([Recomendations_132] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_132]))

	([Recomendations_133] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_133]))

	([Recomendations_134] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_134]))

	([Recomendations_135] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_135]))

	([Recomendations_136] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_136]))

	([Recomendations_137] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_137]))

	([Recomendations_138] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_138]))

	([Recomendations_139] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_139]))

	([Recomendations_140] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_140]))

	([Recomendations_141] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_141]))

	([Recomendations_142] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_142]))

	([Recomendations_143] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_143]))

	([Recomendations_144] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_144]))

	([Recomendations_145] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_145]))

	([Recomendations_146] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_146]))

	([Recomendations_147] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_147]))

	([Recomendations_148] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_148]))

	([Recomendations_149] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_149]))

	([Recomendations_150] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_150]))

	([Recomendations_151] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_151]))

	([Recomendations_152] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_152]))

	([Recomendations_153] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_153]))

	([Recomendations_154] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_154]))

	([Recomendations_155] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_155]))

	([Recomendations_156] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_156]))

	([Recomendations_157] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_157]))

	([Recomendations_158] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_158]))

	([Recomendations_159] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_159]))

	([Recomendations_160] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_160]))

	([Recomendations_161] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_161]))

	([Recomendations_162] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_162]))

	([Recomendations_163] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_163]))

	([Recomendations_164] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_164]))

	([Recomendations_165] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_165]))

	([Recomendations_166] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_166]))

	([Recomendations_167] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_167]))

	([Recomendations_168] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_168]))

	([Recomendations_169] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_169]))

	([Recomendations_170] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_170]))

	([Recomendations_171] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_171]))

	([Recomendations_172] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_172]))

	([Recomendations_173] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_173]))

	([Recomendations_174] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_174]))

	([Recomendations_175] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_175]))

	([Recomendations_176] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_176]))

	([Recomendations_177] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_177]))

	([Recomendations_178] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_178]))

	([Recomendations_179] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_179]))

	([Recomendations_180] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_180]))

	([Recomendations_181] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_181]))

	([Recomendations_182] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_182]))

	([Recomendations_183] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_183]))

	([Recomendations_184] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_184]))

	([Recomendations_185] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_185]))

	([Recomendations_186] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_186]))

	([Recomendations_187] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_187]))

	([Recomendations_188] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_188]))

	([Recomendations_189] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_189]))

	([Recomendations_190] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_190]))

	([Recomendations_191] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_191]))

	([Recomendations_192] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_192]))

	([Recomendations_193] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_193]))

	([Recomendations_194] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_194]))

	([Recomendations_195] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_195]))

	([Recomendations_196] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_196]))

	([Recomendations_197] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_197]))

	([Recomendations_198] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_198]))

	([Recomendations_199] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_199]))

	([Recomendations_200] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_200]))

	([Recomendations_201] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_201]))

	([Recomendations_202] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_202]))

	([Recomendations_203] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_203]))

	([Recomendations_204] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_204]))

	([Recomendations_205] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_205]))

	([Recomendations_206] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_206]))

	([Recomendations_207] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_207]))

	([Recomendations_208] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_208]))

	([Recomendations_209] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_209]))

	([Recomendations_210] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_210]))

	([Recomendations_211] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_211]))

	([Recomendations_212] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_212]))

	([Recomendations_213] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_213]))

	([Recomendations_214] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_214]))

	([Recomendations_215] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_215]))

	([Recomendations_216] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_216]))

	([Recomendations_217] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_217]))

	([Recomendations_218] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_218]))

	([Recomendations_219] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_219]))

	([Recomendations_220] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_220]))

	([Recomendations_221] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_221]))

	([Recomendations_222] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_222]))

	([Recomendations_223] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_223]))

	([Recomendations_224] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_224]))

	([Recomendations_225] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_225]))

	([Recomendations_226] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_226]))

	([Recomendations_227] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_227]))

	([Recomendations_228] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_228]))

	([Recomendations_229] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_229]))

	([Recomendations_230] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_230]))

	([Recomendations_231] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_231]))

	([Recomendations_232] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_232]))

	([Recomendations_233] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_233]))

	([Recomendations_234] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_234]))

	([Recomendations_235] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_235]))

	([Recomendations_236] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_236]))

	([Recomendations_237] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_237]))

	([Recomendations_238] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_238]))

	([Recomendations_239] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_239]))

	([Recomendations_240] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_240]))

	([Recomendations_241] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_241]))

	([Recomendations_242] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_242]))

	([Recomendations_243] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_243]))

	([Recomendations_244] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_244]))

	([Recomendations_245] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_245]))

	([Recomendations_246] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_246]))

	([Recomendations_247] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_247]))

	([Recomendations_248] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_248]))

	([Recomendations_249] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_249]))

	([Recomendations_250] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_250]))

	([Recomendations_251] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_251]))

	([Recomendations_252] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_252]))

	([Recomendations_253] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_253]))

	([Recomendations_254] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_254]))

	([Recomendations_255] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_255]))

	([Recomendations_256] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_256]))

	([Recomendations_257] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_257]))

	([Recomendations_258] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_258]))

	([Recomendations_259] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_259]))

	([Recomendations_260] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_260]))

	([Recomendations_261] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_261]))

	([Recomendations_262] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_262]))

	([Recomendations_263] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_263]))

	([Recomendations_264] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_264]))

	([Recomendations_265] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_265]))

	([Recomendations_266] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_266]))

	([Recomendations_267] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_267]))

	([Recomendations_268] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_268]))

	([Recomendations_269] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_269]))

	([Recomendations_270] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_270]))

	([Recomendations_271] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_271]))

	([Recomendations_272] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_272]))

	([Recomendations_273] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_273]))

	([Recomendations_274] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_274]))

	([Recomendations_275] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_275]))

	([Recomendations_276] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_276]))

	([Recomendations_277] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_277]))

	([Recomendations_278] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_278]))

	([Recomendations_279] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_279]))

	([Recomendations_280] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_280]))

	([Recomendations_281] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_281]))

	([Recomendations_282] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_282]))

	([Recomendations_283] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_283]))

	([Recomendations_284] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_284]))

	([Recomendations_285] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_285]))

	([Recomendations_286] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_286]))

	([Recomendations_287] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_287]))

	([Recomendations_288] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_288]))

	([Recomendations_289] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_289]))

	([Recomendations_290] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_290]))

	([Recomendations_291] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_291]))

	([Recomendations_292] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_292]))

	([Recomendations_293] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_293]))

	([Recomendations_294] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_294]))

	([Recomendations_295] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_295]))

	([Recomendations_296] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_296]))

	([Recomendations_297] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_297]))

	([Recomendations_298] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_298]))

	([Recomendations_299] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_299]))

	([Recomendations_300] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_300]))

	([Recomendations_301] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_301]))

	([Recomendations_302] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_302]))

	([Recomendations_303] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_303]))

	([Recomendations_304] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_304]))

	([Recomendations_305] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_305]))

	([Recomendations_306] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_306]))

	([Recomendations_307] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_307]))

	([Recomendations_308] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_308]))

	([Recomendations_309] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_309]))

	([Recomendations_310] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_310]))

	([Recomendations_311] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_311]))

	([Recomendations_312] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_312]))

	([Recomendations_313] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_313]))

	([Recomendations_314] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_314]))

	([Recomendations_315] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_315]))

	([Recomendations_316] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_316]))

	([Recomendations_317] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_317]))

	([Recomendations_318] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_318]))

	([Recomendations_319] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_319]))

	([Recomendations_320] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_320]))

	([Recomendations_321] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_321]))

	([Recomendations_322] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_322]))

	([Recomendations_323] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_323]))

	([Recomendations_324] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_324]))

	([Recomendations_325] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_325]))

	([Recomendations_326] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_326]))

	([Recomendations_327] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_327]))

	([Recomendations_328] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_328]))

	([Recomendations_329] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_329]))

	([Recomendations_330] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_330]))

	([Recomendations_331] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_331]))

	([Recomendations_332] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_332]))

	([Recomendations_333] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_333]))

	([Recomendations_334] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_334]))

	([Recomendations_335] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_335]))

	([Recomendations_336] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_336]))

	([Recomendations_337] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_337]))

	([Recomendations_338] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_338]))

	([Recomendations_339] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_339]))

	([Recomendations_340] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_340]))

	([Recomendations_341] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_341]))

	([Recomendations_342] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_342]))

	([Recomendations_343] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_343]))

	([Recomendations_344] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_344]))

	([Recomendations_345] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_345]))

	([Recomendations_346] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_346]))

	([Recomendations_347] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_347]))

	([Recomendations_348] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_348]))

	([Recomendations_349] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_349]))

	([Recomendations_350] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_350]))

	([Recomendations_351] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_351]))

	([Recomendations_352] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_352]))

	([Recomendations_353] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_353]))

	([Recomendations_354] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_354]))

	([Recomendations_355] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_355]))

	([Recomendations_356] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_356]))

	([Recomendations_357] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_357]))

	([Recomendations_358] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_358]))

	([Recomendations_359] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_359]))

	([Recomendations_360] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_360]))

	([Recomendations_361] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_361]))

	([Recomendations_362] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_362]))

	([Recomendations_363] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_363]))

	([Recomendations_364] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_364]))

	([Recomendations_365] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_365]))

	([Recomendations_366] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_366]))

	([Recomendations_367] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_367]))

	([Recomendations_368] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_368]))

	([Recomendations_369] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_369]))

	([Recomendations_370] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_370]))

	([Recomendations_371] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_371]))

	([Recomendations_372] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_372]))

	([Recomendations_373] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_373]))

	([Recomendations_374] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_374]))

	([Recomendations_375] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_375]))

	([Recomendations_376] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_376]))

	([Recomendations_377] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_377]))

	([Recomendations_378] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_378]))

	([Recomendations_379] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_379]))

	([Recomendations_380] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_380]))

	([Recomendations_381] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_381]))

	([Recomendations_382] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_382]))

	([Recomendations_383] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_383]))

	([Recomendations_384] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_384]))

	([Recomendations_385] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_385]))

	([Recomendations_386] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_386]))

	([Recomendations_387] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_387]))

	([Recomendations_388] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_388]))

	([Recomendations_389] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_389]))

	([Recomendations_390] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_390]))

	([Recomendations_391] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_391]))

	([Recomendations_392] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_392]))

	([Recomendations_393] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_393]))

	([Recomendations_394] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_394]))

	([Recomendations_395] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_395]))

	([Recomendations_396] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_396]))

	([Recomendations_397] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_397]))

	([Recomendations_398] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_398]))

	([Recomendations_399] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_399]))

	([Recomendations_400] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_400]))

	([Recomendations_401] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_401]))

	([Recomendations_402] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_402]))

	([Recomendations_403] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_403]))

	([Recomendations_404] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_404]))

	([Recomendations_405] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_405]))

	([Recomendations_406] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_406]))

	([Recomendations_407] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_407]))

	([Recomendations_408] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_408]))

	([Recomendations_409] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_409]))

	([Recomendations_410] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_410]))

	([Recomendations_411] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_411]))

	([Recomendations_412] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_412]))

	([Recomendations_413] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_413]))

	([Recomendations_414] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_414]))

	([Recomendations_415] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_415]))

	([Recomendations_416] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_416]))

	([Recomendations_417] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_417]))

	([Recomendations_418] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_418]))

	([Recomendations_419] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_419]))

	([Recomendations_420] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_420]))

	([Recomendations_421] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_421]))

	([Recomendations_422] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_422]))

	([Recomendations_423] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_423]))

	([Recomendations_424] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_424]))

	([Recomendations_425] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_425]))

	([Recomendations_426] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_426]))

	([Recomendations_427] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_427]))

	([Recomendations_428] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_428]))

	([Recomendations_429] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_429]))

	([Recomendations_430] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_430]))

	([Recomendations_431] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_431]))

	([Recomendations_432] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_432]))

	([Recomendations_433] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_433]))

	([Recomendations_434] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_434]))

	([Recomendations_435] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_435]))

	([Recomendations_436] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_436]))

	([Recomendations_437] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_437]))

	([Recomendations_438] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_438]))

	([Recomendations_439] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_439]))

	([Recomendations_440] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_440]))

	([Recomendations_441] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_441]))

	([Recomendations_442] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_442]))

	([Recomendations_443] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_443]))

	([Recomendations_444] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_444]))

	([Recomendations_445] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_445]))

	([Recomendations_446] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_446]))

	([Recomendations_447] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_447]))

	([Recomendations_448] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_448]))

	([Recomendations_449] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_449]))

	([Recomendations_450] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_450]))

	([Recomendations_451] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_451]))

	([Recomendations_452] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_452]))

	([Recomendations_453] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_453]))

	([Recomendations_454] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_454]))

	([Recomendations_455] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_455]))

	([Recomendations_456] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_456]))

	([Recomendations_457] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_457]))

	([Recomendations_458] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_458]))

	([Recomendations_459] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_459]))

	([Recomendations_460] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_460]))

	([Recomendations_461] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_461]))

	([Recomendations_462] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_462]))

	([Recomendations_463] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_463]))

	([Recomendations_464] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_464]))

	([Recomendations_465] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_465]))

	([Recomendations_466] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_466]))

	([Recomendations_467] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_467]))

	([Recomendations_468] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_468]))

	([Recomendations_469] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_469]))

	([Recomendations_470] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_470]))

	([Recomendations_471] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_471]))

	([Recomendations_472] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_472]))

	([Recomendations_473] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_473]))

	([Recomendations_474] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_474]))

	([Recomendations_475] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_475]))

	([Recomendations_476] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_476]))

	([Recomendations_477] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_477]))

	([Recomendations_478] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_478]))

	([Recomendations_479] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_479]))

	([Recomendations_480] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_480]))

	([Recomendations_481] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_481]))

	([Recomendations_482] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_482]))

	([Recomendations_483] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_483]))

	([Recomendations_484] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_484]))

	([Recomendations_485] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_485]))

	([Recomendations_486] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_486]))

	([Recomendations_487] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_487]))

	([Recomendations_488] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_488]))

	([Recomendations_489] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_489]))

	([Recomendations_490] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_490]))

	([Recomendations_491] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_491]))

	([Recomendations_492] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_492]))

	([Recomendations_493] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_493]))

	([Recomendations_494] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_494]))

	([Recomendations_495] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_495]))

	([Recomendations_496] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_496]))

	([Recomendations_497] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_497]))

	([Recomendations_498] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_498]))

	([Recomendations_499] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_499]))

	([Recomendations_500] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_500]))

	([Recomendations_501] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_501]))

	([Recomendations_502] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_502]))

	([Recomendations_503] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_503]))

	([Recomendations_504] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_504]))

	([Recomendations_505] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_505]))

	([Recomendations_506] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_506]))

	([Recomendations_507] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_507]))

	([Recomendations_508] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_508]))

	([Recomendations_509] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_509]))

	([Recomendations_510] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_510]))

	([Recomendations_511] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_511]))

	([Recomendations_512] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_512]))

	([Recomendations_513] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_513]))

	([Recomendations_514] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_514]))

	([Recomendations_515] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_515]))

	([Recomendations_516] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_516]))

	([Recomendations_517] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_517]))

	([Recomendations_518] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_518]))

	([Recomendations_519] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_519]))

	([Recomendations_520] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_520]))

	([Recomendations_521] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_521]))

	([Recomendations_522] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_522]))

	([Recomendations_523] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_523]))

	([Recomendations_524] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_524]))

	([Recomendations_525] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_525]))

	([Recomendations_526] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_526]))

	([Recomendations_527] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_527]))

	([Recomendations_528] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_528]))

	([Recomendations_529] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_529]))

	([Recomendations_530] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_530]))

	([Recomendations_531] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_531]))

	([Recomendations_532] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_532]))

	([Recomendations_533] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_533]))

	([Recomendations_534] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_534]))

	([Recomendations_535] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_535]))

	([Recomendations_536] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_536]))

	([Recomendations_537] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_537]))

	([Recomendations_538] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_538]))

	([Recomendations_539] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_539]))

	([Recomendations_540] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_540]))

	([Recomendations_541] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_541]))

	([Recomendations_542] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_542]))

	([Recomendations_543] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_543]))

	([Recomendations_544] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_544]))

	([Recomendations_545] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_545]))

	([Recomendations_546] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_546]))

	([Recomendations_547] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_547]))

	([Recomendations_548] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_548]))

	([Recomendations_549] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_549]))

	([Recomendations_550] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_550]))

	([Recomendations_551] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_551]))

	([Recomendations_552] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_552]))

	([Recomendations_553] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_553]))

	([Recomendations_554] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_554]))

	([Recomendations_555] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_555]))

	([Recomendations_556] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_556]))

	([Recomendations_557] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_557]))

	([Recomendations_558] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_558]))

	([Recomendations_559] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_559]))

	([Recomendations_560] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_560]))

	([Recomendations_561] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_561]))

	([Recomendations_562] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_562]))

	([Recomendations_563] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_563]))

	([Recomendations_564] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_564]))

	([Recomendations_565] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_565]))

	([Recomendations_566] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_566]))

	([Recomendations_567] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_567]))

	([Recomendations_568] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_568]))

	([Recomendations_569] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_569]))

	([Recomendations_570] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_570]))

	([Recomendations_571] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_571]))

	([Recomendations_572] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_572]))

	([Recomendations_573] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_573]))

	([Recomendations_574] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_574]))

	([Recomendations_575] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_575]))

	([Recomendations_576] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_576]))

	([Recomendations_577] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_577]))

	([Recomendations_578] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_578]))

	([Recomendations_579] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_579]))

	([Recomendations_580] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_580]))

	([Recomendations_581] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_581]))

	([Recomendations_582] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_582]))

	([Recomendations_583] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_583]))

	([Recomendations_584] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_584]))

	([Recomendations_585] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_585]))

	([Recomendations_586] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_586]))

	([Recomendations_587] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_587]))

	([Recomendations_588] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_588]))

	([Recomendations_589] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_589]))

	([Recomendations_590] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_590]))

	([Recomendations_591] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_591]))

	([Recomendations_592] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_592]))

	([Recomendations_593] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_593]))

	([Recomendations_594] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_594]))

	([Recomendations_595] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_595]))

	([Recomendations_596] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_596]))

	([Recomendations_597] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_597]))

	([Recomendations_598] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_598]))

	([Recomendations_599] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_599]))

	([Recomendations_600] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_600]))

	([Recomendations_601] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_601]))

	([Recomendations_602] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_602]))

	([Recomendations_603] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_603]))

	([Recomendations_604] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_604]))

	([Recomendations_605] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_605]))

	([Recomendations_606] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_606]))

	([Recomendations_607] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_607]))

	([Recomendations_608] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_608]))

	([Recomendations_609] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_609]))

	([Recomendations_610] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_610]))

	([Recomendations_611] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_611]))

	([Recomendations_612] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_612]))

	([Recomendations_613] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_613]))

	([Recomendations_614] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_614]))

	([Recomendations_615] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_615]))

	([Recomendations_616] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_616]))

	([Recomendations_617] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_617]))

	([Recomendations_618] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_618]))

	([Recomendations_619] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_619]))

	([Recomendations_620] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_620]))

	([Recomendations_621] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_621]))

	([Recomendations_622] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_622]))

	([Recomendations_623] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_623]))

	([Recomendations_624] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_624]))

	([Recomendations_625] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_625]))

	([Recomendations_626] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_626]))

	([Recomendations_627] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_627]))

	([Recomendations_628] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_628]))

	([Recomendations_629] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_629]))

	([Recomendations_630] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_630]))

	([Recomendations_631] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_631]))

	([Recomendations_632] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_632]))

	([Recomendations_633] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_633]))

	([Recomendations_634] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_634]))

	([Recomendations_635] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_635]))

	([Recomendations_636] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_636]))

	([Recomendations_637] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_637]))

	([Recomendations_638] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_638]))

	([Recomendations_639] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_639]))

	([Recomendations_640] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_640]))

	([Recomendations_641] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_641]))

	([Recomendations_642] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_642]))

	([Recomendations_643] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_643]))

	([Recomendations_644] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_644]))

	([Recomendations_645] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_645]))

	([Recomendations_646] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_646]))

	([Recomendations_647] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_647]))

	([Recomendations_648] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_648]))

	([Recomendations_649] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_649]))

	([Recomendations_650] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_650]))

	([Recomendations_651] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_651]))

	([Recomendations_652] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_652]))

	([Recomendations_653] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_653]))

	([Recomendations_654] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_654]))

	([Recomendations_655] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_655]))

	([Recomendations_656] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_656]))

	([Recomendations_657] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_657]))

	([Recomendations_658] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_658]))

	([Recomendations_659] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_659]))

	([Recomendations_660] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_660]))

	([Recomendations_661] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_661]))

	([Recomendations_662] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_662]))

	([Recomendations_663] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_663]))

	([Recomendations_664] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_664]))

	([Recomendations_665] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_665]))

	([Recomendations_666] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_666]))

	([Recomendations_667] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_667]))

	([Recomendations_668] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_668]))

	([Recomendations_669] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_669]))

	([Recomendations_670] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_670]))

	([Recomendations_671] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_671]))

	([Recomendations_672] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_672]))

	([Recomendations_673] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_673]))

	([Recomendations_674] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_674]))

	([Recomendations_675] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_675]))

	([Recomendations_676] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_676]))

	([Recomendations_677] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_677]))

	([Recomendations_678] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_678]))

	([Recomendations_679] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_679]))

	([Recomendations_680] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_680]))

	([Recomendations_681] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_681]))

	([Recomendations_682] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_682]))

	([Recomendations_683] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_683]))

	([Recomendations_684] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_684]))

	([Recomendations_685] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_685]))

	([Recomendations_686] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_686]))

	([Recomendations_687] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_687]))

	([Recomendations_688] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_688]))

	([Recomendations_689] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_689]))

	([Recomendations_690] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_690]))

	([Recomendations_691] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_691]))

	([Recomendations_692] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_692]))

	([Recomendations_693] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_693]))

	([Recomendations_694] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_694]))

	([Recomendations_695] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_695]))

	([Recomendations_696] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_696]))

	([Recomendations_697] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_697]))

	([Recomendations_698] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_698]))

	([Recomendations_699] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_699]))

	([Recomendations_700] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_700]))

	([Recomendations_701] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_701]))

	([Recomendations_702] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_702]))

	([Recomendations_703] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_703]))

	([Recomendations_704] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_704]))

	([Recomendations_705] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_705]))

	([Recomendations_706] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_706]))

	([Recomendations_707] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_707]))

	([Recomendations_708] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_708]))

	([Recomendations_709] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_709]))

	([Recomendations_710] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_710]))

	([Recomendations_711] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_711]))

	([Recomendations_712] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_712]))

	([Recomendations_713] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_713]))

	([Recomendations_714] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_714]))

	([Recomendations_715] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_715]))

	([Recomendations_716] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_716]))

	([Recomendations_717] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_717]))

	([Recomendations_718] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_718]))

	([Recomendations_719] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_719]))

	([Recomendations_720] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_720]))

	([Recomendations_721] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_721]))

	([Recomendations_722] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_722]))

	([Recomendations_723] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_723]))

	([Recomendations_724] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_724]))

	([Recomendations_725] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_725]))

	([Recomendations_726] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_726]))

	([Recomendations_727] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_727]))

	([Recomendations_728] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_728]))

	([Recomendations_729] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_729]))

	([Recomendations_730] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_730]))

	([Recomendations_731] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_731]))

	([Recomendations_732] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_732]))

	([Recomendations_733] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_733]))

	([Recomendations_734] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_734]))

	([Recomendations_735] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_735]))

	([Recomendations_736] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_736]))

	([Recomendations_737] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_737]))

	([Recomendations_738] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_738]))

	([Recomendations_739] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_739]))

	([Recomendations_740] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_740]))

	([Recomendations_741] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_741]))

	([Recomendations_742] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_742]))

	([Recomendations_743] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_743]))

	([Recomendations_744] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_744]))

	([Recomendations_745] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_745]))

	([Recomendations_746] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_746]))

	([Recomendations_747] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_747]))

	([Recomendations_748] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_748]))

	([Recomendations_749] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_749]))

	([Recomendations_750] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_750]))

	([Recomendations_751] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_751]))

	([Recomendations_752] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_752]))

	([Recomendations_753] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_753]))

	([Recomendations_754] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_754]))

	([Recomendations_755] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_755]))

	([Recomendations_756] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_756]))

	([Recomendations_757] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_757]))

	([Recomendations_758] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_758]))

	([Recomendations_759] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_759]))

	([Recomendations_760] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_760]))

	([Recomendations_761] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_761]))

	([Recomendations_762] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_762]))

	([Recomendations_763] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_763]))

	([Recomendations_764] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_764]))

	([Recomendations_765] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_765]))

	([Recomendations_766] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_766]))

	([Recomendations_767] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_767]))

	([Recomendations_768] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_768]))

	([Recomendations_769] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_769]))

	([Recomendations_770] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_770]))

	([Recomendations_771] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_771]))

	([Recomendations_772] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_772]))

	([Recomendations_773] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_773]))

	([Recomendations_774] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_774]))

	([Recomendations_775] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_775]))

	([Recomendations_776] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_776]))

	([Recomendations_777] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_777]))

	([Recomendations_778] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_778]))

	([Recomendations_779] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_779]))

	([Recomendations_780] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_780]))

	([Recomendations_781] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_781]))

	([Recomendations_782] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_782]))

	([Recomendations_783] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_783]))

	([Recomendations_784] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_784]))

	([Recomendations_785] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_785]))

	([Recomendations_786] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_786]))

	([Recomendations_787] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_787]))

	([Recomendations_788] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_788]))

	([Recomendations_789] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_789]))

	([Recomendations_790] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_790]))

	([Recomendations_791] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_791]))

	([Recomendations_792] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_792]))

	([Recomendations_793] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_793]))

	([Recomendations_794] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_794]))

	([Recomendations_795] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_795]))

	([Recomendations_796] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_796]))

	([Recomendations_797] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_797]))

	([Recomendations_798] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_798]))

	([Recomendations_799] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_799]))

	([Recomendations_800] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_800]))

	([Recomendations_801] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_801]))

	([Recomendations_802] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_802]))

	([Recomendations_803] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_803]))

	([Recomendations_804] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_804]))

	([Recomendations_805] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_805]))

	([Recomendations_806] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_806]))

	([Recomendations_807] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_807]))

	([Recomendations_808] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_808]))

	([Recomendations_809] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_809]))

	([Recomendations_810] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_810]))

	([Recomendations_811] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_811]))

	([Recomendations_812] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_812]))

	([Recomendations_813] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_813]))

	([Recomendations_814] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_814]))

	([Recomendations_815] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_815]))

	([Recomendations_816] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_816]))

	([Recomendations_817] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_817]))

	([Recomendations_818] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_818]))

	([Recomendations_819] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_819]))

	([Recomendations_820] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_820]))

	([Recomendations_821] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_821]))

	([Recomendations_822] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_822]))

	([Recomendations_823] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_823]))

	([Recomendations_824] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_824]))

	([Recomendations_825] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_825]))

	([Recomendations_826] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_826]))

	([Recomendations_827] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_827]))

	([Recomendations_828] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_828]))

	([Recomendations_829] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_829]))

	([Recomendations_830] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_830]))

	([Recomendations_831] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_831]))

	([Recomendations_832] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_832]))

	([Recomendations_833] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_833]))

	([Recomendations_834] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_834]))

	([Recomendations_835] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_835]))

	([Recomendations_836] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_836]))

	([Recomendations_837] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_837]))

	([Recomendations_838] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_838]))

	([Recomendations_839] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_839]))

	([Recomendations_840] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_840]))

	([Recomendations_841] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_841]))

	([Recomendations_842] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_842]))

	([Recomendations_843] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_843]))

	([Recomendations_844] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_844]))

	([Recomendations_845] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_845]))

	([Recomendations_846] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_846]))

	([Recomendations_847] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_847]))

	([Recomendations_848] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_848]))

	([Recomendations_849] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_849]))

	([Recomendations_850] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_850]))

	([Recomendations_851] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_851]))

	([Recomendations_852] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_852]))

	([Recomendations_853] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_853]))

	([Recomendations_854] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_854]))

	([Recomendations_855] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_855]))

	([Recomendations_856] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_856]))

	([Recomendations_857] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_857]))

	([Recomendations_858] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_858]))

	([Recomendations_859] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_859]))

	([Recomendations_860] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_860]))

	([Recomendations_861] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_861]))

	([Recomendations_862] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_862]))

	([Recomendations_863] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_863]))

	([Recomendations_864] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_864]))

	([Recomendations_865] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_865]))

	([Recomendations_866] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_866]))

	([Recomendations_867] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_867]))

	([Recomendations_868] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_868]))

	([Recomendations_869] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_869]))

	([Recomendations_870] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_870]))

	([Recomendations_871] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_871]))

	([Recomendations_872] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_872]))

	([Recomendations_873] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_873]))

	([Recomendations_874] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_874]))

	([Recomendations_875] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_875]))

	([Recomendations_876] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_876]))

	([Recomendations_877] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_877]))

	([Recomendations_878] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_878]))

	([Recomendations_879] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_879]))

	([Recomendations_880] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_880]))

	([Recomendations_881] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_881]))

	([Recomendations_882] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_882]))

	([Recomendations_883] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_883]))

	([Recomendations_884] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_884]))

	([Recomendations_885] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_885]))

	([Recomendations_886] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_886]))

	([Recomendations_887] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_887]))

	([Recomendations_888] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_888]))

	([Recomendations_889] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_889]))

	([Recomendations_890] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_890]))

	([Recomendations_891] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_891]))

	([Recomendations_892] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_892]))

	([Recomendations_893] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_893]))

	([Recomendations_894] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_894]))

	([Recomendations_895] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_895]))

	([Recomendations_896] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_896]))

	([Recomendations_897] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_897]))

	([Recomendations_898] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_898]))

	([Recomendations_899] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_899]))

	([Recomendations_900] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_900]))

	([Recomendations_901] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_901]))

	([Recomendations_902] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_902]))

	([Recomendations_903] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_903]))

	([Recomendations_904] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_904]))

	([Recomendations_905] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_905]))

	([Recomendations_906] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_906]))

	([Recomendations_907] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_907]))

	([Recomendations_908] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_908]))

	([Recomendations_909] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_909]))

	([Recomendations_910] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_910]))

	([Recomendations_911] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_911]))

	([Recomendations_912] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_912]))

	([Recomendations_913] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_913]))

	([Recomendations_914] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_914]))

	([Recomendations_915] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_915]))

	([Recomendations_916] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_916]))

	([Recomendations_917] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_917]))

	([Recomendations_918] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_918]))

	([Recomendations_919] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_919]))

	([Recomendations_920] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_920]))

	([Recomendations_921] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_921]))

	([Recomendations_922] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_922]))

	([Recomendations_923] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_923]))

	([Recomendations_924] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_924]))

	([Recomendations_925] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_925]))

	([Recomendations_926] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_926]))

	([Recomendations_927] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_927]))

	([Recomendations_928] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_928]))

	([Recomendations_929] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_929]))

	([Recomendations_930] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_930]))

	([Recomendations_931] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_931]))

	([Recomendations_932] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_932]))

	([Recomendations_933] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_933]))

	([Recomendations_934] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_934]))

	([Recomendations_935] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_935]))

	([Recomendations_936] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_936]))

	([Recomendations_937] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_937]))

	([Recomendations_938] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_938]))

	([Recomendations_939] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_939]))

	([Recomendations_940] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_940]))

	([Recomendations_941] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_941]))

	([Recomendations_942] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_942]))

	([Recomendations_943] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_943]))

	([Recomendations_944] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_944]))

	([Recomendations_945] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_945]))

	([Recomendations_946] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_946]))

	([Recomendations_947] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_947]))

	([Recomendations_948] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_948]))

	([Recomendations_949] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_949]))

	([Recomendations_950] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_950]))

	([Recomendations_951] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_951]))

	([Recomendations_952] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_952]))

	([Recomendations_953] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_953]))

	([Recomendations_954] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_954]))

	([Recomendations_955] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_955]))

	([Recomendations_956] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_956]))

	([Recomendations_957] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_957]))

	([Recomendations_958] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_958]))

	([Recomendations_959] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_959]))

	([Recomendations_960] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_960]))

	([Recomendations_961] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_961]))

	([Recomendations_962] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_962]))

	([Recomendations_963] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_963]))

	([Recomendations_964] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_964]))

	([Recomendations_965] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_965]))

	([Recomendations_966] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_966]))

	([Recomendations_967] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_967]))

	([Recomendations_968] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_968]))

	([Recomendations_969] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_969]))

	([Recomendations_970] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_970]))

	([Recomendations_971] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_971]))

	([Recomendations_972] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_972]))

	([Recomendations_973] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_973]))

	([Recomendations_974] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_974]))

	([Recomendations_975] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_975]))

	([Recomendations_976] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_976]))

	([Recomendations_977] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_977]))

	([Recomendations_978] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_978]))

	([Recomendations_979] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_979]))

	([Recomendations_980] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_980]))

	([Recomendations_981] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_981]))

	([Recomendations_982] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_982]))

	([Recomendations_983] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_983]))

	([Recomendations_984] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_984]))

	([Recomendations_985] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_985]))

	([Recomendations_986] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_986]))

	([Recomendations_987] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_987]))

	([Recomendations_988] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_988]))

	([Recomendations_989] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_989]))

	([Recomendations_990] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_990]))

	([Recomendations_991] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_991]))

	([Recomendations_992] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_992]))

	([Recomendations_993] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_993]))

	([Recomendations_994] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_994]))

	([Recomendations_995] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_995]))

	([Recomendations_996] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_996]))

	([Recomendations_997] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_997]))

	([Recomendations_998] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_998]))

	([Recomendations_999] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_999]))

	([Recomendations_1000] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1000]))

	([Recomendations_1001] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1001]))

	([Recomendations_1002] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1002]))

	([Recomendations_1003] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1003]))

	([Recomendations_1004] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1004]))

	([Recomendations_1005] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1005]))

	([Recomendations_1006] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1006]))

	([Recomendations_1007] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1007]))

	([Recomendations_1008] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1008]))

	([Recomendations_1009] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1009]))

	([Recomendations_1010] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1010]))

	([Recomendations_1011] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1011]))

	([Recomendations_1012] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1012]))

	([Recomendations_1013] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1013]))

	([Recomendations_1014] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1014]))

	([Recomendations_1015] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1015]))

	([Recomendations_1016] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1016]))

	([Recomendations_1017] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1017]))

	([Recomendations_1018] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1018]))

	([Recomendations_1019] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1019]))

	([Recomendations_1020] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1020]))

	([Recomendations_1021] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1021]))

	([Recomendations_1022] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1022]))

	([Recomendations_1023] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1023]))

	([Recomendations_1024] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1024]))

	([Recomendations_1025] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1025]))

	([Recomendations_1026] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1026]))

	([Recomendations_1027] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1027]))

	([Recomendations_1028] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1028]))

	([Recomendations_1029] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1029]))

	([Recomendations_1030] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1030]))

	([Recomendations_1031] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1031]))

	([Recomendations_1032] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1032]))

	([Recomendations_1033] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1033]))

	([Recomendations_1034] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1034]))

	([Recomendations_1035] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1035]))

	([Recomendations_1036] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1036]))

	([Recomendations_1037] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1037]))

	([Recomendations_1038] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1038]))

	([Recomendations_1039] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1039]))

	([Recomendations_1040] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1040]))

	([Recomendations_1041] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1041]))

	([Recomendations_1042] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1042]))

	([Recomendations_1043] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1043]))

	([Recomendations_1044] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1044]))

	([Recomendations_1045] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1045]))

	([Recomendations_1046] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1046]))

	([Recomendations_1047] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1047]))

	([Recomendations_1048] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1048]))

	([Recomendations_1049] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1049]))

	([Recomendations_1050] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1050]))

	([Recomendations_1051] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1051]))

	([Recomendations_1052] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1052]))

	([Recomendations_1053] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1053]))

	([Recomendations_1054] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1054]))

	([Recomendations_1055] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1055]))

	([Recomendations_1056] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1056]))

	([Recomendations_1057] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1057]))

	([Recomendations_1058] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1058]))

	([Recomendations_1059] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1059]))

	([Recomendations_1060] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1060]))

	([Recomendations_1061] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1061]))

	([Recomendations_1062] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1062]))

	([Recomendations_1063] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1063]))

	([Recomendations_1064] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1064]))

	([Recomendations_1065] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1065]))

	([Recomendations_1066] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1066]))

	([Recomendations_1067] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1067]))

	([Recomendations_1068] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1068]))

	([Recomendations_1069] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1069]))

	([Recomendations_1070] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1070]))

	([Recomendations_1071] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1071]))

	([Recomendations_1072] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1072]))

	([Recomendations_1073] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1073]))

	([Recomendations_1074] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1074]))

	([Recomendations_1075] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1075]))

	([Recomendations_1076] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1076]))

	([Recomendations_1077] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1077]))

	([Recomendations_1078] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1078]))

	([Recomendations_1079] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1079]))

	([Recomendations_1080] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1080]))

	([Recomendations_1081] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1081]))

	([Recomendations_1082] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1082]))

	([Recomendations_1083] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1083]))

	([Recomendations_1084] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1084]))

	([Recomendations_1085] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1085]))

	([Recomendations_1086] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1086]))

	([Recomendations_1087] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1087]))

	([Recomendations_1088] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1088]))

	([Recomendations_1089] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1089]))

	([Recomendations_1090] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1090]))

	([Recomendations_1091] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1091]))

	([Recomendations_1092] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1092]))

	([Recomendations_1093] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1093]))

	([Recomendations_1094] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1094]))

	([Recomendations_1095] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1095]))

	([Recomendations_1096] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1096]))

	([Recomendations_1097] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1097]))

	([Recomendations_1098] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1098]))

	([Recomendations_1099] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1099]))

	([Recomendations_1100] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1100]))

	([Recomendations_1101] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1101]))

	([Recomendations_1102] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1102]))

	([Recomendations_1103] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1103]))

	([Recomendations_1104] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1104]))

	([Recomendations_1105] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1105]))

	([Recomendations_1106] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1106]))

	([Recomendations_1107] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1107]))

	([Recomendations_1108] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1108]))

	([Recomendations_1109] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1109]))

	([Recomendations_1110] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1110]))

	([Recomendations_1111] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1111]))

	([Recomendations_1112] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1112]))

	([Recomendations_1113] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1113]))

	([Recomendations_1114] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1114]))

	([Recomendations_1115] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1115]))

	([Recomendations_1116] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1116]))

	([Recomendations_1117] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1117]))

	([Recomendations_1118] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1118]))

	([Recomendations_1119] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1119]))

	([Recomendations_1120] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1120]))

	([Recomendations_1121] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1121]))

	([Recomendations_1122] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1122]))

	([Recomendations_1123] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1123]))

	([Recomendations_1124] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1124]))

	([Recomendations_1125] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1125]))

	([Recomendations_1126] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1126]))

	([Recomendations_1127] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1127]))

	([Recomendations_1128] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1128]))

	([Recomendations_1129] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1129]))

	([Recomendations_1130] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1130]))

	([Recomendations_1131] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1131]))

	([Recomendations_1132] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1132]))

	([Recomendations_1133] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1133]))

	([Recomendations_1134] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1134]))

	([Recomendations_1135] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1135]))

	([Recomendations_1136] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1136]))

	([Recomendations_1137] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1137]))

	([Recomendations_1138] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1138]))

	([Recomendations_1139] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1139]))

	([Recomendations_1140] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1140]))

	([Recomendations_1141] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1141]))

	([Recomendations_1142] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1142]))

	([Recomendations_1143] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1143]))

	([Recomendations_1144] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1144]))

	([Recomendations_1145] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1145]))

	([Recomendations_1146] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1146]))

	([Recomendations_1147] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1147]))

	([Recomendations_1148] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1148]))

	([Recomendations_1149] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1149]))

	([Recomendations_1150] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1150]))

	([Recomendations_1151] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1151]))

	([Recomendations_1152] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1152]))

	([Recomendations_1153] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1153]))

	([Recomendations_1154] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1154]))

	([Recomendations_1155] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1155]))

	([Recomendations_1156] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1156]))

	([Recomendations_1157] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1157]))

	([Recomendations_1158] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1158]))

	([Recomendations_1159] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1159]))

	([Recomendations_1160] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1160]))

	([Recomendations_1161] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1161]))

	([Recomendations_1162] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1162]))

	([Recomendations_1163] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1163]))

	([Recomendations_1164] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1164]))

	([Recomendations_1165] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1165]))

	([Recomendations_1166] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1166]))

	([Recomendations_1167] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1167]))

	([Recomendations_1168] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1168]))

	([Recomendations_1169] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1169]))

	([Recomendations_1170] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1170]))

	([Recomendations_1171] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1171]))

	([Recomendations_1172] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1172]))

	([Recomendations_1173] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1173]))

	([Recomendations_1174] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1174]))

	([Recomendations_1175] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1175]))

	([Recomendations_1176] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1176]))

	([Recomendations_1177] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1177]))

	([Recomendations_1178] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1178]))

	([Recomendations_1179] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1179]))

	([Recomendations_1180] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1180]))

	([Recomendations_1181] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1181]))

	([Recomendations_1182] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1182]))

	([Recomendations_1183] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1183]))

	([Recomendations_1184] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1184]))

	([Recomendations_1185] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1185]))

	([Recomendations_1186] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1186]))

	([Recomendations_1187] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1187]))

	([Recomendations_1188] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1188]))

	([Recomendations_1189] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1189]))

	([Recomendations_1190] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1190]))

	([Recomendations_1191] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1191]))

	([Recomendations_1192] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1192]))

	([Recomendations_1193] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1193]))

	([Recomendations_1194] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1194]))

	([Recomendations_1195] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1195]))

	([Recomendations_1196] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1196]))

	([Recomendations_1197] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1197]))

	([Recomendations_1198] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1198]))

	([Recomendations_1199] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1199]))

	([Recomendations_1200] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1200]))

	([Recomendations_1201] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1201]))

	([Recomendations_1202] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1202]))

	([Recomendations_1203] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1203]))

	([Recomendations_1204] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1204]))

	([Recomendations_1205] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1205]))

	([Recomendations_1206] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1206]))

	([Recomendations_1207] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1207]))

	([Recomendations_1208] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1208]))

	([Recomendations_1209] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1209]))

	([Recomendations_1210] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1210]))

	([Recomendations_1211] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1211]))

	([Recomendations_1212] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1212]))

	([Recomendations_1213] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1213]))

	([Recomendations_1214] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1214]))

	([Recomendations_1215] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1215]))

	([Recomendations_1216] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1216]))

	([Recomendations_1217] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1217]))

	([Recomendations_1218] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1218]))

	([Recomendations_1219] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1219]))

	([Recomendations_1220] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1220]))

	([Recomendations_1221] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1221]))

	([Recomendations_1222] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1222]))

	([Recomendations_1223] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1223]))

	([Recomendations_1224] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1224]))

	([Recomendations_1225] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1225]))

	([Recomendations_1226] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1226]))

	([Recomendations_1227] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1227]))

	([Recomendations_1228] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1228]))

	([Recomendations_1229] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1229]))

	([Recomendations_1230] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1230]))

	([Recomendations_1231] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1231]))

	([Recomendations_1232] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1232]))

	([Recomendations_1233] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1233]))

	([Recomendations_1234] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1234]))

	([Recomendations_1235] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1235]))

	([Recomendations_1236] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1236]))

	([Recomendations_1237] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1237]))

	([Recomendations_1238] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1238]))

	([Recomendations_1239] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1239]))

	([Recomendations_1240] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1240]))

	([Recomendations_1241] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1241]))

	([Recomendations_1242] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1242]))

	([Recomendations_1243] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1243]))

	([Recomendations_1244] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1244]))

	([Recomendations_1245] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1245]))

	([Recomendations_1246] of Recomendacion
	 (gradoRecomendacion 0)
	 (libro [Book_1246]))

	([Profile_0] of Perfil
	 (generosRecomendados
	     [Genres_12]
	     [Genres_15]
	     [Genres_10])
	 (psicologico A)
	 (rangoEdad Infantil))

	([Profile_1] of Perfil
	 (generosRecomendados
	     [Genres_44]
	     [Genres_33]
	     [Genres_42]
	     [Genres_43])
	 (psicologico A)
	 (rangoEdad Juvenil))

	([Profile_2] of Perfil
	 (generosRecomendados
	     [Genres_1]
	     [Genres_25]
	     [Genres_15]
	     [Genres_20])
	 (psicologico A)
	 (rangoEdad Adulto))

	([Profile_3] of Perfil
	 (generosRecomendados
	     [Genres_9]
	     [Genres_16]
	     [Genres_12])
	 (psicologico B)
	 (rangoEdad Infantil))

	([Profile_4] of Perfil
	 (generosRecomendados
	     [Genres_31]
	     [Genres_32]
	     [Genres_25]
	     [Genres_11]
	     [Genres_3]
	     [Genres_20]
	     [Genres_46])
	 (psicologico B)
	 (rangoEdad Juvenil))

	([Profile_5] of Perfil
	 (generosRecomendados
	     [Genres_44])
	 (psicologico B)
	 (rangoEdad Adulto))

	([Profile_6] of Perfil
	 (generosRecomendados
	     [Genres_48]
	     [Genres_0]
	     [Genres_50]
	     [Genres_7]
	     [Genres_19])
	 (psicologico C)
	 (rangoEdad Infantil))

	([Profile_7] of Perfil
	 (generosRecomendados
	     [Genres_37]
	     [Genres_1]
	     [Genres_35]
	     [Genres_9])
	 (psicologico C)
	 (rangoEdad Juvenil))

	([Profile_8] of Perfil
	 (generosRecomendados
	     [Genres_5]
	     [Genres_10]
	     [Genres_28])
	 (psicologico C)
	 (rangoEdad Adulto))

	([Profile_9] of Perfil
	 (generosRecomendados
	     [Genres_48]
	     [Genres_29]
	     [Genres_8]
	     [Genres_26]
	     [Genres_44])
	 (psicologico D)
	 (rangoEdad Infantil))

	([Profile_10] of Perfil
	 (generosRecomendados
	     [Genres_36]
	     [Genres_34]
	     [Genres_41])
	 (psicologico D)
	 (rangoEdad Juvenil))

	([Profile_11] of Perfil
	 (generosRecomendados
	     [Genres_14]
	     [Genres_37]
	     [Genres_25])
	 (psicologico D)
	 (rangoEdad Adulto))
)

;;;-----------------------------------------------------------------------------
;;;--------------------------------TEMPLATES------------------------------------
;;;-----------------------------------------------------------------------------

(deftemplate Lector
    (slot edad (type INTEGER) (default -1))
    (slot perfilPaciente (type INSTANCE) (allowed-classes Perfil))
    (slot popularidad (type SYMBOL) (allowed-values FALSE TRUE))
    (slot habitual (type SYMBOL) (allowed-values FALSE TRUE))
	(slot sexoAutor (type SYMBOL) (allowed-values HOMBRE MUJER INDIF))
	(slot lugarLectura (type SYMBOL) (allowed-values CASA FUERA AMBOS))
)

(deftemplate autorFavorito
    (slot autor (type INSTANCE) (allowed-classes Autor))
)
(deftemplate autorNegativo
    (slot autor (type INSTANCE) (allowed-classes Autor))
)

(deftemplate generoFavorito
    (slot genero (type INSTANCE) (allowed-classes Genero))
)
(deftemplate generoNegativo
    (slot genero (type INSTANCE) (allowed-classes Genero))
)

(deftemplate libroFavorito
    (slot libro (type INSTANCE) (allowed-classes Libro))
)
(deftemplate libroNegativo
    (slot libro (type INSTANCE) (allowed-classes Libro))
)

(deftemplate solucionFinal
    (slot posicion (type INTEGER))
    (slot recomendacion (type INSTANCE) (allowed-classes Recomendacion))
)

;;;-----------------------------------------------------------------------------
;;;--------------------------------FUNCIONES------------------------------------
;;;-----------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general
(deffunction pregunta-general (?pregunta)
	(format t "%s" ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and (eq (type ?respuesta) INTEGER) (and (>= ?respuesta ?rangini) (<= ?respuesta ?rangfi)))) do
		(format t "Respuesta no válida. %s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer una pregunta con valor minimo de respuesta
(deffunction pregunta-numerica-minimo (?pregunta ?rangini)
	(format t "%s [%d<] " ?pregunta ?rangini)
	(bind ?respuesta (read))
	(while (not(and (eq (type ?respuesta) INTEGER) (> ?respuesta ?rangini))) do
		(format t "Respuesta no válida. %s [%d<] " ?pregunta ?rangini)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta
(deffunction pregunta-lista (?pregunta $?valores_posibles)
	(format t "%s" ?pregunta)
	(bind ?resposta (readline))
	(bind ?res (str-explode ?resposta))
	?res
)

(deffunction rango-edad (?edad)
    (if (< ?edad 12)
        then (bind ?rest Infantil)
        else ( if(< ?edad 26)
            then (bind ?rest Juvenil)
            else (bind ?rest Adulto)
        )
    )
    ?rest
)

(deffunction sumaScoreLibros (?books ?score)
    (foreach ?book ?books
        (bind ?ranking
            (nth$ 1
                (find-instance
                    ((?inst Recomendacion))
                    (eq ?book ?inst:libro)
                )
            )
        )
        (switch ?score
            (case 100 then (bind ?just "Es un libro de género recomendado a gente de tu perfil."))
			(case 95 then (bind ?just "Este libro es apropiado para tu edad."))
			(case 80 then (bind ?just "Este libro es ligero de leer."))
            (case 70 then (bind ?just "Es un libro de un género favorito tuyo."))
			(case 65 then (bind ?just "El sexo del autor de este libro es acorde a tus preferencias."))
			(case 60 then (bind ?just "Es un libro escrito por un de tus autores favoritos."))
			(case 55 then (bind ?just "Libro corto y ligero perfecto para leer fuera de casa."))
			(case 50 then (bind ?just "Es un libro de género similar al recomendado a gente de tu perfil."))
			(case 40 then (bind ?just "Este libro tiene muchos ratings."))
            (case 30 then (bind ?just "Este libro tiene una buena valoración media."))
			(case 20 then (bind ?just "Es un libro de un género similar a tus favoritos."))
			(case 15 then (bind ?just "Es un libro de un autor similar a uno de tus autores favoritos."))
            (case 10 then (bind ?just "Es un libro del mismo género que el de un libro favorito tuyo."))
            (case 2 then (bind ?just "Es un libro de un género similar al de un libro de tus favoritos."))
            (case -2 then (bind ?just "Pese a que este libro es de un género similar al de un libro que no te gusta."))
			(case -12 then (bind ?just "Aunque este autor es similar a uno que no te gusta."))
			(case -20 then (bind ?just "Aunque este género es similar a uno que no te gusta."))
        )
        (send ?ranking put-gradoRecomendacion (+ (send ?ranking get-gradoRecomendacion) ?score))
        (bind ?jr (send ?ranking get-justificaciones))
        (if (and (> ?score 0) (not (member$ ?just ?jr)))
            then
                 (slot-insert$ ?ranking justificaciones 1 ?just)
        )
    )
)

(deffunction propagar-generos (?listaGeneros ?scoreGenero ?scoreGenerosSimilares)
    (foreach ?g ?listaGeneros
        (bind ?libros
            (find-all-instances ((?l Libro))
                (member$ ?g ?l:generos)
            )
        )
        (sumaScoreLibros ?libros ?scoreGenero)
        (foreach ?gs (send ?g get-generosSimilares)
            (bind ?librosSimilares
                (find-all-instances ((?ls Libro))
                    (member$ ?gs (send ?ls get-generos))
                )
            )
            (sumaScoreLibros ?librosSimilares ?scoreGenerosSimilares)
        )
    )
)

(deffunction propagar-autores (?autor ?scoreAutor ?scoreAutoresSimilares)
    (bind ?libros
        (find-all-instances ((?l Libro))
            (eq ?autor ?l:autor)
        )
    )
    (sumaScoreLibros ?libros ?scoreAutor)
    (foreach ?a (send ?autor get-autoresSimilares)
        (bind ?librosSimilares
            (find-all-instances ((?ls Libro))
                (eq ?a ?ls:autor)
            )
        )
        (sumaScoreLibros ?librosSimilares ?scoreAutoresSimilares)
    )
)

(deffunction criteriaRecomByMaxScore(?r1 ?r2)
    (< (send ?r1 get-gradoRecomendacion) (send ?r2 get-gradoRecomendacion))
)

;;;-----------------------------------------------------------------------------
;;;---------------------------------MENSAJES------------------------------------
;;;-----------------------------------------------------------------------------

(defmessage-handler Autor print primary ()
    (printout t "Autor: " ?self:nombreAutor crlf)
)

(defmessage-handler Genero print primary ()
    (printout t "  -> " ?self:nombreGenero crlf)
)

(defmessage-handler Libro print primary ()
    (printout t "Libro: " ?self:titulo crlf)
    (send ?self:autor print)
	(printout t "Generos:" crlf)
	(foreach ?g ?self:generos
		(send ?g print)
	)
    (printout t "Número de páginas: " ?self:nPag crlf)
    (printout t "Encuentra más información aquí: " ?self:url crlf)
)

(defmessage-handler Recomendacion print primary ()
    (send ?self:libro print)
    (printout t "Puntuación: " ?self:gradoRecomendacion crlf)
    (printout t "Por que te recomendamos este libro:")
    (bind $?just ?self:justificaciones)
	(if (eq (length$ ?just) 0) then (printout t "No hay preferencias dadas por ti" crlf)
		else (printout t crlf)
			(loop-for-count (?i 1 (length$ ?just)) do
				(printout t "  -> "(nth$ ?i ?just) crlf)
			)
	)
	(printout t crlf)
	(printout t "---------------------------------------------------" crlf)
)


;;;-----------------------------------------------------------------------------
;;;----------------------------------REGLAS-------------------------------------
;;;-----------------------------------------------------------------------------

(defmodule MAIN
    (export ?ALL)
)

(defrule initialRule "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------ Sistema de Recomendacion de Libros de la FIB -----" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
    (assert (Lector))
	(focus preguntas)
)

(defmodule preguntas
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule preguntar-edad "pregunta la edad"
    ?l <- (Lector (edad ?e))
    (test (not (and (eq (type ?e) INTEGER) (> ?e 0))))
    =>
    (bind ?edad (pregunta-general "Cuantos años tienes? "))
    (retract ?l)
    (assert (Lector (edad ?edad)))
    (if (not (and (eq (type ?edad) INTEGER) (> ?edad 0)))
        then
        (printout t "Edad incorrecta. Vuelve a intentar con un entero positivo." crlf)
    )
)

(defrule preguntar-perfil "pregunta perfil psicologico"
    ?l <- (Lector (edad ?e))
    (test (and (eq (type ?e) INTEGER) (> ?e 0)))
    (not (perfilDefinido))
    =>
    (printout t "Perfiles psicológicos: " crlf)
    (printout t "A" crlf)
    (printout t "B" crlf)
    (printout t "C" crlf)
    (printout t "D" crlf)
    (bind ?psicologico (pregunta-general "Indica tu perfil psicológico: "))
    (if (member$ (sym-cat ?psicologico) (create$ A B C D))
        then
            (bind ?rango (rango-edad ?e))
            (bind ?p (find-instance ((?inst Perfil))
             (and (eq ?inst:psicologico (sym-cat ?psicologico)) (eq ?inst:rangoEdad ?rango))))
            (modify ?l (perfilPaciente (nth$ 1 ?p)))
            (assert (perfilDefinido))
        else
            (printout t "Perfil psicológico no válido." crlf)
            (retract ?l)
            (assert (Lector (edad ?e)))
    )
)

(defrule pregunta-autor-favorito "pregunta al usuario autores favoritos"
    (not (autoresFavoritosDefinidos))
    (perfilDefinido)
    =>
    (bind ?autorIds (pregunta-lista "Si tienes autores favoritos indica sus ID separados por espacios: "))
    (foreach ?a ?autorIds
        (bind ?autor (nth$ 1 (find-instance ((?inst Autor)) (eq (str-cat ?a) ?inst:idAutor))))
        (if (neq ?autor nil)
            then (assert (autorFavorito (autor ?autor)))
        )
    )
    (assert (autoresFavoritosDefinidos))
)

(defrule pregunta-autor-negativo "pregunta al usuario autores negativos"
    (not (autoresNegativosDefinidos))
    (perfilDefinido)
    =>
    (bind ?autorIds (pregunta-lista "Si tienes autores que no te gustan indica sus ID separados por espacios: "))
    (foreach ?a ?autorIds
        (bind ?autor (nth$ 1 (find-instance ((?inst Autor)) (eq (str-cat ?a) ?inst:idAutor))))
        (if (neq ?autor nil)
            then (assert (autorNegativo (autor ?autor)))
        )
    )
    (assert (autoresNegativosDefinidos))
)

(defrule pregunta-genero-favorito "pregunta al usuario generos favoritos"
    (not (generosFavoritosDefinidos))
    (perfilDefinido)
    =>
    (bind ?generoIds (pregunta-lista "Si tienes generos favoritos indica sus ID separados por espacios: "))
    (foreach ?g ?generoIds
        (bind ?genero (nth$ 1 (find-instance ((?inst Genero)) (eq (str-cat ?g) ?inst:idGenero))))
        (if (neq ?genero nil)
            then (assert (generoFavorito (genero ?genero)))
        )
    )
    (assert (generosFavoritosDefinidos))
)

(defrule pregunta-genero-negativo "pregunta al usuario generos negativos"
    (not (generosNegativosDefinidos))
    (perfilDefinido)
    =>
    (bind ?generoIds (pregunta-lista "Si tienes generos que no te gustan indica sus ID separados por espacios: "))
    (foreach ?g ?generoIds
        (bind ?genero (nth$ 1 (find-instance ((?inst Genero)) (eq (str-cat ?g) ?inst:idGenero))))
        (if (neq ?genero nil)
            then (assert (generoNegativo (genero ?genero)))
        )
    )
    (assert (generosNegativosDefinidos))
)

(defrule pregunta-libro-favorito "pregunta al usuario libros favoritos"
    (not (librosFavoritosDefinidos))
    (perfilDefinido)
    =>
    (bind ?libroIds (pregunta-lista "Si tienes libros favoritos indica sus ID separados por espacios: "))
    (foreach ?l ?libroIds
        (bind ?libro (nth$ 1 (find-instance ((?inst Libro)) (eq (str-cat ?l) ?inst:idLibro))))
        (if (neq ?libro nil)
            then (assert (libroFavorito (libro ?libro)))
        )
    )
    (assert (librosFavoritosDefinidos))
)

(defrule pregunta-libro-negativo "pregunta al usuario libros negativos"
    (not (librosNegativosDefinidos))
    (perfilDefinido)
    =>
    (bind ?libroIds (pregunta-lista "Si tienes libros que no te gustan indica sus ID separados por espacios: "))
    (foreach ?l ?libroIds
        (bind ?libro (nth$ 1 (find-instance ((?inst Libro)) (eq (str-cat ?l) ?inst:idLibro))))
        (if (neq ?libro nil)
            then (assert (libroNegativo (libro ?libro)))
        )
    )
    (assert (librosNegativosDefinidos))
)

(defrule pregunta-popularidad
    (not (popularidadDefinida))
    (perfilDefinido)
    ?l <- (Lector (edad ?e) (perfilPaciente ?p))
    =>
    (bind ?popu (pregunta-general "Te importa la opinión de otros lectores? (s/n) "))
    (if (member$ ?popu (create$ s n))
        then
            (if (eq ?popu s)
                then (modify ?l (popularidad TRUE))
                else (modify ?l (popularidad FALSE))
            )
            (assert (popularidadDefinida))
        else
            (printout t "Respuesta no válida." crlf)
            (retract ?l)
            (assert (Lector (edad ?e) (perfilPaciente ?p)))
    )
)

(defrule pregunta-habitual
    (not (habitualDefinido))
    (popularidadDefinida)
    ?l <- (Lector (edad ?e) (perfilPaciente ?p) (popularidad ?popu))
    =>
    (bind ?habi (pregunta-general "Lees con frecuencia? (s/n) "))
    (if (member$ ?habi (create$ s n))
        then
            (if (eq ?habi s)
                then (modify ?l (habitual TRUE))
                else (modify ?l (habitual FALSE))
            )
            (assert (habitualDefinido))
        else
            (printout t "Respuesta no válida." crlf)
            (retract ?l)
            (assert (Lector (edad ?e) (perfilPaciente ?p) (popularidad ?popu)))
    )
)

(defrule pregunta-lugar-lectura
	(not (lugarLecturaDefinido))
	(habitualDefinido)
	?l <- (Lector)
	=>
	(printout t "Donde sueles leer: " crlf)
    (printout t "[1] En casa" crlf)
    (printout t "[2] Fuera de casa (transporte público, etc)" crlf)
    (printout t "[3] Ambos" crlf)
    (bind ?lugar (pregunta-numerica "Indica tu preferencia: " 1 3))
	(switch ?lugar
		(case 1 then (modify ?l (lugarLectura CASA)))
		(case 2 then (modify ?l (lugarLectura FUERA)))
		(case 3 then (modify ?l (lugarLectura AMBOS)))
	)
	(assert (lugarLecturaDefinido))
)

(defrule pregunta-sexo-autor
	(not (sexoAutorDefinido))
	(habitualDefinido)
	?l <- (Lector)
	=>
	(printout t "Sexo del escritor: " crlf)
    (printout t "[1] Prefiero autoras" crlf)
    (printout t "[2] Prefiero autores" crlf)
    (printout t "[3] Me es indiferente" crlf)
    (bind ?s (pregunta-numerica "Indica tu preferencia: " 1 3))
	(switch ?s
		(case 1 then (modify ?l (sexoAutor MUJER)))
		(case 2 then (modify ?l (sexoAutor HOMBRE)))
		(case 3 then (modify ?l (sexoAutor INDIF)))
	)
	(assert (sexoAutorDefinido))
)

(defrule preguntasAcabadas
    (perfilDefinido)
    (autoresFavoritosDefinidos)
    (autoresNegativosDefinidos)
    (generosFavoritosDefinidos)
    (generosNegativosDefinidos)
    (librosFavoritosDefinidos)
    (librosNegativosDefinidos)
    (popularidadDefinida)
    (habitualDefinido)
	(lugarLecturaDefinido)
	(sexoAutorDefinido)
    =>
    (focus inferir_datos)
)

(defmodule inferir_datos
    (import MAIN ?ALL)
    (import preguntas ?ALL)
    (export ?ALL)
)

(defrule propaga-genero-perfil
    (Lector (perfilPaciente ?p))
    =>
    (propagar-generos (send ?p get-generosRecomendados) 100 50)
    (assert (perfilPropagado))
)

(defrule propaga-autores-favoritos
    ?a <- (autorFavorito (autor ?af))
    =>
    (propagar-autores ?af 60 15)
    (retract ?a)
)

(defrule propaga-autores-negativos
    ?a <- (autorNegativo (autor ?an))
    =>
    (propagar-autores ?an -1000 -12)
    (retract ?a)
)

(defrule propaga-generos-favoritos
    ?g <- (generoFavorito (genero ?gf))
    =>
    (propagar-generos (create$ ?gf) 70 20)
    (retract ?g)
)

(defrule propaga-generos-negativos
    ?g <- (generoNegativo (genero ?gn))
    =>
    (propagar-generos (create$ ?gn) -1000 -20)
    (retract ?g)
)

(defrule propaga-libros-favoritos
    ?l <- (libroFavorito (libro ?lf))
    =>
    (bind ?ranking
        (nth$ 1
            (find-instance
                ((?inst Recomendacion))
                (eq ?lf ?inst:libro)
            )
        )
    )
    (send ?ranking put-gradoRecomendacion (- (send ?ranking get-gradoRecomendacion) 1000))
    (propagar-generos (send ?lf get-generos) 10 2)
    (retract ?l)
)

(defrule propaga-libros-negativos
    ?l <- (libroNegativo (libro ?ln))
    =>
    (bind ?ranking
        (nth$ 1
            (find-instance
                ((?inst Recomendacion))
                (eq ?ln ?inst:libro)
            )
        )
    )
    (send ?ranking put-gradoRecomendacion (- (send ?ranking get-gradoRecomendacion) 1000))
    (propagar-generos (send ?ln get-generos) -10 -2)
    (retract ?l)
)

(defrule propaga-popularidad
    (Lector (popularidad ?p))
    =>
    (if (eq ?p TRUE)
        then
            (bind ?librosMany (find-all-instances ((?inst Libro)) (eq ?inst:hasManyReviews TRUE)))
            (sumaScoreLibros ?librosMany 40)
            (bind ?librosGood (find-all-instances ((?inst Libro)) (eq ?inst:goodReview TRUE)))
            (sumaScoreLibros ?librosGood 30)
    )
    (assert (popularidadPropagada))
)

(defrule propaga-habitual
    (Lector (habitual ?h))
    =>
    (if (eq ?h FALSE)
        then
            (bind ?libros (find-all-instances ((?inst Libro)) (< ?inst:nPag 150)))
            (sumaScoreLibros ?libros 80)
    )
    (assert (habitualPropagado))
)

(defrule propaga-sexo-autor
	(Lector (sexoAutor ?s))
	=>
	(if (eq ?s MUJER)
		then
		(bind ?autoras (find-all-instances ((?a Autor)) (eq female ?a:sexo)))
		(foreach ?a ?autoras
			(bind ?libros (find-all-instances ((?inst Libro)) (eq ?inst:autor ?a)))
			(sumaScoreLibros ?libros 65)
		)
	)
	(if (eq ?s HOMBRE)
		then
		(bind ?autoras (find-all-instances ((?a Autor)) (eq male ?a:sexo)))
		(foreach ?a ?autoras
			(bind ?libros (find-all-instances ((?inst Libro)) (eq ?inst:autor ?a)))
			(sumaScoreLibros ?libros 65)
		)
	)
	(assert (sexoAutorPropagado))
)

(defrule propaga-lugar-lectura
	(Lector (lugarLectura ?l))
	=>
	(if (or (eq ?l FUERA) (eq ?l AMBOS))
		then
			(bind ?libros (find-all-instances ((?inst Libro)) (< ?inst:nPag 250)))
			(sumaScoreLibros ?libros 55)
	)
	(assert (lugarLecturaPropagado))
)

(defrule propaga-edad-lector
	(Lector (edad ?e))
	=>
	(if (< ?e 12)
		then
			(bind ?libros (find-all-instances ((?inst Libro)) (< ?inst:nPag 150)))
			(sumaScoreLibros ?libros 95)
	)
	(assert (edadLectorPropagada))
)

(defrule seleccion-resultados
    (perfilPropagado)
    (not (autorFavorito (autor ?a)))
    (not (autorNegativo (autor ?a)))
    (not (generoFavorito (genero ?g)))
    (not (generoNegativo (genero ?g)))
    (not (libroFavorito (libro ?l)))
    (not (libroNegativo (libro ?l)))
	(popularidadPropagada)
    (habitualPropagado)
	(sexoAutorPropagado)
	(lugarLecturaPropagado)
	(edadLectorPropagada)
    =>
    (bind ?allRecomendaciones (find-all-instances ((?r Recomendacion)) TRUE))
    (bind ?sortedRecoms (sort criteriaRecomByMaxScore ?allRecomendaciones))
    (printout t "" crlf)
    (printout t "===================================================" crlf)
    (printout t "RECOMENDACIONES" crlf)
    (printout t "" crlf)
    (loop-for-count (?i 1 3) do
        (send (nth$ ?i ?sortedRecoms) print)
    )
    (printout t "" crlf)
)
