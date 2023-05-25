'use strict';

/**
 * agama service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::agama.agama');
