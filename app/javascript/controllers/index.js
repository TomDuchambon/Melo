// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ArtistLikeController from "./artist_like_controller"
application.register("artist-like", ArtistLikeController)

// import FlatpickrController from "./flatpickr_controller"
// application.register("flatpickr", FlatpickrController)

import MessageroomSubscriptionController from "./messageroom_subscription_controller"
application.register("messageroom-subscription", MessageroomSubscriptionController)

import NavbarController from "./navbar_controller"
application.register("navbar", NavbarController)

import SquaresController from "./squares_controller"
application.register("squares", SquaresController)
