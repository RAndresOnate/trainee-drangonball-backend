<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
//ruta universos (lista los universos alojados en la DB)
$routes->get('/listaUniversos', 'Universos::listadoUniversos');

//rutas personajes

//lista la totalidad de personajes de todos los universos
$routes->get('/personajes', 'Personajes::listaPersonajes');

//lista personajes por universo
$routes->get('/listadoUniverso/(:num)', 'Personajes::filtroUniversos/$1');

// muestra el personaje según el nombre
$routes->get('/listadoNombres/(:any)', 'Personajes::filtroNombre/$1');

// muestra el personaje elegido
$routes->get('/tarjeta/(:num)', 'Personajes::tarjetaPersonaje/$1');
