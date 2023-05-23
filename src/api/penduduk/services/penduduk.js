'use strict';

/**
 * penduduk service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::penduduk.penduduk');
