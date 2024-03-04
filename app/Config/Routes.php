<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
//ruta universos
$routes->get('/listaUniversos', 'Universos::listadoUniversos');
//rutas personajes
$routes->get('/personajes', 'Personajes::listaPersonajes');
$routes->get('/listadoUniverso/(:num)', 'Personajes::filtroUniversos/$1');
$routes->get('/listadoNombres/(:any)', 'Personajes::filtroNombre/$1');
