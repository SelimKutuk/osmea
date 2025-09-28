// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_all_system_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListAllSystemStatusImpl _$$ListAllSystemStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$ListAllSystemStatusImpl(
      environment: json['environment'] == null
          ? null
          : Environment.fromJson(json['environment'] as Map<String, dynamic>),
      database: json['database'] == null
          ? null
          : Database.fromJson(json['database'] as Map<String, dynamic>),
      activePlugins: (json['active_plugins'] as List<dynamic>?)
          ?.map((e) => ActivePlugin.fromJson(e as Map<String, dynamic>))
          .toList(),
      inactivePlugins: (json['inactive_plugins'] as List<dynamic>?)
          ?.map((e) => InactivePlugin.fromJson(e as Map<String, dynamic>))
          .toList(),
      dropinsMuPlugins: json['dropins_mu_plugins'] == null
          ? null
          : DropinsMuPlugins.fromJson(
              json['dropins_mu_plugins'] as Map<String, dynamic>),
      theme: json['theme'] == null
          ? null
          : Theme.fromJson(json['theme'] as Map<String, dynamic>),
      settings: json['settings'] == null
          ? null
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
      security: json['security'] == null
          ? null
          : Security.fromJson(json['security'] as Map<String, dynamic>),
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
      postTypeCounts: (json['post_type_counts'] as List<dynamic>?)
          ?.map((e) => PostTypeCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      logging: json['logging'] == null
          ? null
          : Logging.fromJson(json['logging'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListAllSystemStatusImplToJson(
    _$ListAllSystemStatusImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('environment', instance.environment?.toJson());
  writeNotNull('database', instance.database?.toJson());
  writeNotNull('active_plugins',
      instance.activePlugins?.map((e) => e.toJson()).toList());
  writeNotNull('inactive_plugins',
      instance.inactivePlugins?.map((e) => e.toJson()).toList());
  writeNotNull('dropins_mu_plugins', instance.dropinsMuPlugins?.toJson());
  writeNotNull('theme', instance.theme?.toJson());
  writeNotNull('settings', instance.settings?.toJson());
  writeNotNull('security', instance.security?.toJson());
  writeNotNull('pages', instance.pages?.map((e) => e.toJson()).toList());
  writeNotNull('post_type_counts',
      instance.postTypeCounts?.map((e) => e.toJson()).toList());
  writeNotNull('logging', instance.logging?.toJson());
  return val;
}

_$ActivePluginImpl _$$ActivePluginImplFromJson(Map<String, dynamic> json) =>
    _$ActivePluginImpl(
      plugin: json['plugin'] as String?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      versionLatest: json['version_latest'] as String?,
      url: json['url'] as String?,
      authorName: json['author_name'] as String?,
      authorUrl: json['author_url'] as String?,
      networkActivated: json['network_activated'] as bool?,
    );

Map<String, dynamic> _$$ActivePluginImplToJson(_$ActivePluginImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('plugin', instance.plugin);
  writeNotNull('name', instance.name);
  writeNotNull('version', instance.version);
  writeNotNull('version_latest', instance.versionLatest);
  writeNotNull('url', instance.url);
  writeNotNull('author_name', instance.authorName);
  writeNotNull('author_url', instance.authorUrl);
  writeNotNull('network_activated', instance.networkActivated);
  return val;
}

_$DatabaseImpl _$$DatabaseImplFromJson(Map<String, dynamic> json) =>
    _$DatabaseImpl(
      wcDatabaseVersion: json['wc_database_version'] as String?,
      databasePrefix: json['database_prefix'] as String?,
      maxmindGeoipDatabase: json['maxmind_geoip_database'] as String?,
      databaseTables: json['database_tables'] == null
          ? null
          : DatabaseTables.fromJson(
              json['database_tables'] as Map<String, dynamic>),
      databaseSize: json['database_size'] == null
          ? null
          : DatabaseSize.fromJson(
              json['database_size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatabaseImplToJson(_$DatabaseImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wc_database_version', instance.wcDatabaseVersion);
  writeNotNull('database_prefix', instance.databasePrefix);
  writeNotNull('maxmind_geoip_database', instance.maxmindGeoipDatabase);
  writeNotNull('database_tables', instance.databaseTables?.toJson());
  writeNotNull('database_size', instance.databaseSize?.toJson());
  return val;
}

_$DatabaseSizeImpl _$$DatabaseSizeImplFromJson(Map<String, dynamic> json) =>
    _$DatabaseSizeImpl(
      data: (json['data'] as num?)?.toDouble(),
      index: (json['index'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DatabaseSizeImplToJson(_$DatabaseSizeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('index', instance.index);
  return val;
}

_$DatabaseTablesImpl _$$DatabaseTablesImplFromJson(Map<String, dynamic> json) =>
    _$DatabaseTablesImpl(
      woocommerce: json['woocommerce'] == null
          ? null
          : Woocommerce.fromJson(json['woocommerce'] as Map<String, dynamic>),
      other: json['other'] == null
          ? null
          : Other.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DatabaseTablesImplToJson(
    _$DatabaseTablesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('woocommerce', instance.woocommerce?.toJson());
  writeNotNull('other', instance.other?.toJson());
  return val;
}

_$OtherImpl _$$OtherImplFromJson(Map<String, dynamic> json) => _$OtherImpl(
      wpActionschedulerActions: json['wp_actionscheduler_actions'] == null
          ? null
          : Wp.fromJson(
              json['wp_actionscheduler_actions'] as Map<String, dynamic>),
      wpActionschedulerClaims: json['wp_actionscheduler_claims'] == null
          ? null
          : Wp.fromJson(
              json['wp_actionscheduler_claims'] as Map<String, dynamic>),
      wpActionschedulerGroups: json['wp_actionscheduler_groups'] == null
          ? null
          : Wp.fromJson(
              json['wp_actionscheduler_groups'] as Map<String, dynamic>),
      wpActionschedulerLogs: json['wp_actionscheduler_logs'] == null
          ? null
          : Wp.fromJson(
              json['wp_actionscheduler_logs'] as Map<String, dynamic>),
      wpCommentmeta: json['wp_commentmeta'] == null
          ? null
          : Wp.fromJson(json['wp_commentmeta'] as Map<String, dynamic>),
      wpComments: json['wp_comments'] == null
          ? null
          : Wp.fromJson(json['wp_comments'] as Map<String, dynamic>),
      wpLinks: json['wp_links'] == null
          ? null
          : Wp.fromJson(json['wp_links'] as Map<String, dynamic>),
      wpOptions: json['wp_options'] == null
          ? null
          : Wp.fromJson(json['wp_options'] as Map<String, dynamic>),
      wpPostmeta: json['wp_postmeta'] == null
          ? null
          : Wp.fromJson(json['wp_postmeta'] as Map<String, dynamic>),
      wpPosts: json['wp_posts'] == null
          ? null
          : Wp.fromJson(json['wp_posts'] as Map<String, dynamic>),
      wpTermmeta: json['wp_termmeta'] == null
          ? null
          : Wp.fromJson(json['wp_termmeta'] as Map<String, dynamic>),
      wpTerms: json['wp_terms'] == null
          ? null
          : Wp.fromJson(json['wp_terms'] as Map<String, dynamic>),
      wpTermRelationships: json['wp_term_relationships'] == null
          ? null
          : Wp.fromJson(json['wp_term_relationships'] as Map<String, dynamic>),
      wpTermTaxonomy: json['wp_term_taxonomy'] == null
          ? null
          : Wp.fromJson(json['wp_term_taxonomy'] as Map<String, dynamic>),
      wpUsermeta: json['wp_usermeta'] == null
          ? null
          : Wp.fromJson(json['wp_usermeta'] as Map<String, dynamic>),
      wpUsers: json['wp_users'] == null
          ? null
          : Wp.fromJson(json['wp_users'] as Map<String, dynamic>),
      wpWcAdminNotes: json['wp_wc_admin_notes'] == null
          ? null
          : Wp.fromJson(json['wp_wc_admin_notes'] as Map<String, dynamic>),
      wpWcAdminNoteActions: json['wp_wc_admin_note_actions'] == null
          ? null
          : Wp.fromJson(
              json['wp_wc_admin_note_actions'] as Map<String, dynamic>),
      wpWcCategoryLookup: json['wp_wc_category_lookup'] == null
          ? null
          : Wp.fromJson(json['wp_wc_category_lookup'] as Map<String, dynamic>),
      wpWcCustomerLookup: json['wp_wc_customer_lookup'] == null
          ? null
          : Wp.fromJson(json['wp_wc_customer_lookup'] as Map<String, dynamic>),
      wpWcDownloadLog: json['wp_wc_download_log'] == null
          ? null
          : Wp.fromJson(json['wp_wc_download_log'] as Map<String, dynamic>),
      wpWcOrders: json['wp_wc_orders'] == null
          ? null
          : Wp.fromJson(json['wp_wc_orders'] as Map<String, dynamic>),
      wpWcOrdersMeta: json['wp_wc_orders_meta'] == null
          ? null
          : Wp.fromJson(json['wp_wc_orders_meta'] as Map<String, dynamic>),
      wpWcOrderAddresses: json['wp_wc_order_addresses'] == null
          ? null
          : Wp.fromJson(json['wp_wc_order_addresses'] as Map<String, dynamic>),
      wpWcOrderCouponLookup: json['wp_wc_order_coupon_lookup'] == null
          ? null
          : Wp.fromJson(
              json['wp_wc_order_coupon_lookup'] as Map<String, dynamic>),
      wpWcOrderOperationalData: json['wp_wc_order_operational_data'] == null
          ? null
          : Wp.fromJson(
              json['wp_wc_order_operational_data'] as Map<String, dynamic>),
      wpWcOrderProductLookup: json['wp_wc_order_product_lookup'] == null
          ? null
          : Wp.fromJson(
              json['wp_wc_order_product_lookup'] as Map<String, dynamic>),
      wpWcOrderStats: json['wp_wc_order_stats'] == null
          ? null
          : Wp.fromJson(json['wp_wc_order_stats'] as Map<String, dynamic>),
      wpWcOrderTaxLookup: json['wp_wc_order_tax_lookup'] == null
          ? null
          : Wp.fromJson(json['wp_wc_order_tax_lookup'] as Map<String, dynamic>),
      wpWcProductAttributesLookup: json['wp_wc_product_attributes_lookup'] ==
              null
          ? null
          : Wp.fromJson(
              json['wp_wc_product_attributes_lookup'] as Map<String, dynamic>),
      wpWcProductDownloadDirectories:
          json['wp_wc_product_download_directories'] == null
              ? null
              : Wp.fromJson(json['wp_wc_product_download_directories']
                  as Map<String, dynamic>),
      wpWcProductMetaLookup: json['wp_wc_product_meta_lookup'] == null
          ? null
          : Wp.fromJson(
              json['wp_wc_product_meta_lookup'] as Map<String, dynamic>),
      wpWcRateLimits: json['wp_wc_rate_limits'] == null
          ? null
          : Wp.fromJson(json['wp_wc_rate_limits'] as Map<String, dynamic>),
      wpWcReservedStock: json['wp_wc_reserved_stock'] == null
          ? null
          : Wp.fromJson(json['wp_wc_reserved_stock'] as Map<String, dynamic>),
      wpWcTaxRateClasses: json['wp_wc_tax_rate_classes'] == null
          ? null
          : Wp.fromJson(json['wp_wc_tax_rate_classes'] as Map<String, dynamic>),
      wpWcWebhooks: json['wp_wc_webhooks'] == null
          ? null
          : Wp.fromJson(json['wp_wc_webhooks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherImplToJson(_$OtherImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('wp_actionscheduler_actions',
      instance.wpActionschedulerActions?.toJson());
  writeNotNull(
      'wp_actionscheduler_claims', instance.wpActionschedulerClaims?.toJson());
  writeNotNull(
      'wp_actionscheduler_groups', instance.wpActionschedulerGroups?.toJson());
  writeNotNull(
      'wp_actionscheduler_logs', instance.wpActionschedulerLogs?.toJson());
  writeNotNull('wp_commentmeta', instance.wpCommentmeta?.toJson());
  writeNotNull('wp_comments', instance.wpComments?.toJson());
  writeNotNull('wp_links', instance.wpLinks?.toJson());
  writeNotNull('wp_options', instance.wpOptions?.toJson());
  writeNotNull('wp_postmeta', instance.wpPostmeta?.toJson());
  writeNotNull('wp_posts', instance.wpPosts?.toJson());
  writeNotNull('wp_termmeta', instance.wpTermmeta?.toJson());
  writeNotNull('wp_terms', instance.wpTerms?.toJson());
  writeNotNull('wp_term_relationships', instance.wpTermRelationships?.toJson());
  writeNotNull('wp_term_taxonomy', instance.wpTermTaxonomy?.toJson());
  writeNotNull('wp_usermeta', instance.wpUsermeta?.toJson());
  writeNotNull('wp_users', instance.wpUsers?.toJson());
  writeNotNull('wp_wc_admin_notes', instance.wpWcAdminNotes?.toJson());
  writeNotNull(
      'wp_wc_admin_note_actions', instance.wpWcAdminNoteActions?.toJson());
  writeNotNull('wp_wc_category_lookup', instance.wpWcCategoryLookup?.toJson());
  writeNotNull('wp_wc_customer_lookup', instance.wpWcCustomerLookup?.toJson());
  writeNotNull('wp_wc_download_log', instance.wpWcDownloadLog?.toJson());
  writeNotNull('wp_wc_orders', instance.wpWcOrders?.toJson());
  writeNotNull('wp_wc_orders_meta', instance.wpWcOrdersMeta?.toJson());
  writeNotNull('wp_wc_order_addresses', instance.wpWcOrderAddresses?.toJson());
  writeNotNull(
      'wp_wc_order_coupon_lookup', instance.wpWcOrderCouponLookup?.toJson());
  writeNotNull('wp_wc_order_operational_data',
      instance.wpWcOrderOperationalData?.toJson());
  writeNotNull(
      'wp_wc_order_product_lookup', instance.wpWcOrderProductLookup?.toJson());
  writeNotNull('wp_wc_order_stats', instance.wpWcOrderStats?.toJson());
  writeNotNull('wp_wc_order_tax_lookup', instance.wpWcOrderTaxLookup?.toJson());
  writeNotNull('wp_wc_product_attributes_lookup',
      instance.wpWcProductAttributesLookup?.toJson());
  writeNotNull('wp_wc_product_download_directories',
      instance.wpWcProductDownloadDirectories?.toJson());
  writeNotNull(
      'wp_wc_product_meta_lookup', instance.wpWcProductMetaLookup?.toJson());
  writeNotNull('wp_wc_rate_limits', instance.wpWcRateLimits?.toJson());
  writeNotNull('wp_wc_reserved_stock', instance.wpWcReservedStock?.toJson());
  writeNotNull('wp_wc_tax_rate_classes', instance.wpWcTaxRateClasses?.toJson());
  writeNotNull('wp_wc_webhooks', instance.wpWcWebhooks?.toJson());
  return val;
}

_$WpImpl _$$WpImplFromJson(Map<String, dynamic> json) => _$WpImpl(
      data: json['data'] as String?,
      index: json['index'] as String?,
      engine: json['engine'] as String?,
    );

Map<String, dynamic> _$$WpImplToJson(_$WpImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('index', instance.index);
  writeNotNull('engine', instance.engine);
  return val;
}

_$WoocommerceImpl _$$WoocommerceImplFromJson(Map<String, dynamic> json) =>
    _$WoocommerceImpl(
      wpWoocommerceSessions: json['wp_woocommerce_sessions'] == null
          ? null
          : Wp.fromJson(
              json['wp_woocommerce_sessions'] as Map<String, dynamic>),
      wpWoocommerceApiKeys: json['wp_woocommerce_api_keys'] == null
          ? null
          : Wp.fromJson(
              json['wp_woocommerce_api_keys'] as Map<String, dynamic>),
      wpWoocommerceAttributeTaxonomies:
          json['wp_woocommerce_attribute_taxonomies'] == null
              ? null
              : Wp.fromJson(json['wp_woocommerce_attribute_taxonomies']
                  as Map<String, dynamic>),
      wpWoocommerceDownloadableProductPermissions:
          json['wp_woocommerce_downloadable_product_permissions'] == null
              ? null
              : Wp.fromJson(
                  json['wp_woocommerce_downloadable_product_permissions']
                      as Map<String, dynamic>),
      wpWoocommerceOrderItems: json['wp_woocommerce_order_items'] == null
          ? null
          : Wp.fromJson(
              json['wp_woocommerce_order_items'] as Map<String, dynamic>),
      wpWoocommerceOrderItemmeta: json['wp_woocommerce_order_itemmeta'] == null
          ? null
          : Wp.fromJson(
              json['wp_woocommerce_order_itemmeta'] as Map<String, dynamic>),
      wpWoocommerceTaxRates: json['wp_woocommerce_tax_rates'] == null
          ? null
          : Wp.fromJson(
              json['wp_woocommerce_tax_rates'] as Map<String, dynamic>),
      wpWoocommerceTaxRateLocations:
          json['wp_woocommerce_tax_rate_locations'] == null
              ? null
              : Wp.fromJson(json['wp_woocommerce_tax_rate_locations']
                  as Map<String, dynamic>),
      wpWoocommerceShippingZones: json['wp_woocommerce_shipping_zones'] == null
          ? null
          : Wp.fromJson(
              json['wp_woocommerce_shipping_zones'] as Map<String, dynamic>),
      wpWoocommerceShippingZoneLocations:
          json['wp_woocommerce_shipping_zone_locations'] == null
              ? null
              : Wp.fromJson(json['wp_woocommerce_shipping_zone_locations']
                  as Map<String, dynamic>),
      wpWoocommerceShippingZoneMethods:
          json['wp_woocommerce_shipping_zone_methods'] == null
              ? null
              : Wp.fromJson(json['wp_woocommerce_shipping_zone_methods']
                  as Map<String, dynamic>),
      wpWoocommercePaymentTokens: json['wp_woocommerce_payment_tokens'] == null
          ? null
          : Wp.fromJson(
              json['wp_woocommerce_payment_tokens'] as Map<String, dynamic>),
      wpWoocommercePaymentTokenmeta: json['wp_woocommerce_payment_tokenmeta'] ==
              null
          ? null
          : Wp.fromJson(
              json['wp_woocommerce_payment_tokenmeta'] as Map<String, dynamic>),
      wpWoocommerceLog: json['wp_woocommerce_log'] == null
          ? null
          : Wp.fromJson(json['wp_woocommerce_log'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WoocommerceImplToJson(_$WoocommerceImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'wp_woocommerce_sessions', instance.wpWoocommerceSessions?.toJson());
  writeNotNull(
      'wp_woocommerce_api_keys', instance.wpWoocommerceApiKeys?.toJson());
  writeNotNull('wp_woocommerce_attribute_taxonomies',
      instance.wpWoocommerceAttributeTaxonomies?.toJson());
  writeNotNull('wp_woocommerce_downloadable_product_permissions',
      instance.wpWoocommerceDownloadableProductPermissions?.toJson());
  writeNotNull(
      'wp_woocommerce_order_items', instance.wpWoocommerceOrderItems?.toJson());
  writeNotNull('wp_woocommerce_order_itemmeta',
      instance.wpWoocommerceOrderItemmeta?.toJson());
  writeNotNull(
      'wp_woocommerce_tax_rates', instance.wpWoocommerceTaxRates?.toJson());
  writeNotNull('wp_woocommerce_tax_rate_locations',
      instance.wpWoocommerceTaxRateLocations?.toJson());
  writeNotNull('wp_woocommerce_shipping_zones',
      instance.wpWoocommerceShippingZones?.toJson());
  writeNotNull('wp_woocommerce_shipping_zone_locations',
      instance.wpWoocommerceShippingZoneLocations?.toJson());
  writeNotNull('wp_woocommerce_shipping_zone_methods',
      instance.wpWoocommerceShippingZoneMethods?.toJson());
  writeNotNull('wp_woocommerce_payment_tokens',
      instance.wpWoocommercePaymentTokens?.toJson());
  writeNotNull('wp_woocommerce_payment_tokenmeta',
      instance.wpWoocommercePaymentTokenmeta?.toJson());
  writeNotNull('wp_woocommerce_log', instance.wpWoocommerceLog?.toJson());
  return val;
}

_$DropinsMuPluginsImpl _$$DropinsMuPluginsImplFromJson(
        Map<String, dynamic> json) =>
    _$DropinsMuPluginsImpl(
      dropins: json['dropins'] as List<dynamic>?,
      muPlugins: json['mu_plugins'] as List<dynamic>?,
    );

Map<String, dynamic> _$$DropinsMuPluginsImplToJson(
    _$DropinsMuPluginsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dropins', instance.dropins);
  writeNotNull('mu_plugins', instance.muPlugins);
  return val;
}

_$EnvironmentImpl _$$EnvironmentImplFromJson(Map<String, dynamic> json) =>
    _$EnvironmentImpl(
      homeUrl: json['home_url'] as String?,
      siteUrl: json['site_url'] as String?,
      storeId: json['store_id'] as String?,
      version: json['version'] as String?,
      logDirectory: json['log_directory'] as String?,
      logDirectoryWritable: json['log_directory_writable'] as bool?,
      wpVersion: json['wp_version'] as String?,
      wpMultisite: json['wp_multisite'] as bool?,
      wpMemoryLimit: (json['wp_memory_limit'] as num?)?.toInt(),
      wpDebugMode: json['wp_debug_mode'] as bool?,
      wpCron: json['wp_cron'] as bool?,
      language: json['language'] as String?,
      externalObjectCache: json['external_object_cache'],
      serverInfo: json['server_info'] as String?,
      serverArchitecture: json['server_architecture'] as String?,
      phpVersion: json['php_version'] as String?,
      phpPostMaxSize: (json['php_post_max_size'] as num?)?.toInt(),
      phpMaxExecutionTime: (json['php_max_execution_time'] as num?)?.toInt(),
      phpMaxInputVars: (json['php_max_input_vars'] as num?)?.toInt(),
      curlVersion: json['curl_version'] as String?,
      suhosinInstalled: json['suhosin_installed'] as bool?,
      maxUploadSize: (json['max_upload_size'] as num?)?.toInt(),
      mysqlVersion: json['mysql_version'] as String?,
      mysqlVersionString: json['mysql_version_string'] as String?,
      defaultTimezone: json['default_timezone'] as String?,
      fsockopenOrCurlEnabled: json['fsockopen_or_curl_enabled'] as bool?,
      soapclientEnabled: json['soapclient_enabled'] as bool?,
      domdocumentEnabled: json['domdocument_enabled'] as bool?,
      gzipEnabled: json['gzip_enabled'] as bool?,
      mbstringEnabled: json['mbstring_enabled'] as bool?,
      remotePostSuccessful: json['remote_post_successful'] as bool?,
      remotePostResponse:
          const StringToIntConverter().fromJson(json['remote_post_response']),
      remoteGetSuccessful: json['remote_get_successful'] as bool?,
      remoteGetResponse:
          const StringToIntConverter().fromJson(json['remote_get_response']),
    );

Map<String, dynamic> _$$EnvironmentImplToJson(_$EnvironmentImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('home_url', instance.homeUrl);
  writeNotNull('site_url', instance.siteUrl);
  writeNotNull('store_id', instance.storeId);
  writeNotNull('version', instance.version);
  writeNotNull('log_directory', instance.logDirectory);
  writeNotNull('log_directory_writable', instance.logDirectoryWritable);
  writeNotNull('wp_version', instance.wpVersion);
  writeNotNull('wp_multisite', instance.wpMultisite);
  writeNotNull('wp_memory_limit', instance.wpMemoryLimit);
  writeNotNull('wp_debug_mode', instance.wpDebugMode);
  writeNotNull('wp_cron', instance.wpCron);
  writeNotNull('language', instance.language);
  writeNotNull('external_object_cache', instance.externalObjectCache);
  writeNotNull('server_info', instance.serverInfo);
  writeNotNull('server_architecture', instance.serverArchitecture);
  writeNotNull('php_version', instance.phpVersion);
  writeNotNull('php_post_max_size', instance.phpPostMaxSize);
  writeNotNull('php_max_execution_time', instance.phpMaxExecutionTime);
  writeNotNull('php_max_input_vars', instance.phpMaxInputVars);
  writeNotNull('curl_version', instance.curlVersion);
  writeNotNull('suhosin_installed', instance.suhosinInstalled);
  writeNotNull('max_upload_size', instance.maxUploadSize);
  writeNotNull('mysql_version', instance.mysqlVersion);
  writeNotNull('mysql_version_string', instance.mysqlVersionString);
  writeNotNull('default_timezone', instance.defaultTimezone);
  writeNotNull('fsockopen_or_curl_enabled', instance.fsockopenOrCurlEnabled);
  writeNotNull('soapclient_enabled', instance.soapclientEnabled);
  writeNotNull('domdocument_enabled', instance.domdocumentEnabled);
  writeNotNull('gzip_enabled', instance.gzipEnabled);
  writeNotNull('mbstring_enabled', instance.mbstringEnabled);
  writeNotNull('remote_post_successful', instance.remotePostSuccessful);
  writeNotNull('remote_post_response',
      const StringToIntConverter().toJson(instance.remotePostResponse));
  writeNotNull('remote_get_successful', instance.remoteGetSuccessful);
  writeNotNull('remote_get_response',
      const StringToIntConverter().toJson(instance.remoteGetResponse));
  return val;
}

_$InactivePluginImpl _$$InactivePluginImplFromJson(Map<String, dynamic> json) =>
    _$InactivePluginImpl(
      plugin: json['plugin'] as String?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      versionLatest: json['version_latest'] as String?,
      url: json['url'] as String?,
      authorName: json['author_name'] as String?,
      authorUrl: json['author_url'] as String?,
      networkActivated: json['network_activated'] as bool?,
    );

Map<String, dynamic> _$$InactivePluginImplToJson(
    _$InactivePluginImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('plugin', instance.plugin);
  writeNotNull('name', instance.name);
  writeNotNull('version', instance.version);
  writeNotNull('version_latest', instance.versionLatest);
  writeNotNull('url', instance.url);
  writeNotNull('author_name', instance.authorName);
  writeNotNull('author_url', instance.authorUrl);
  writeNotNull('network_activated', instance.networkActivated);
  return val;
}

_$LoggingImpl _$$LoggingImplFromJson(Map<String, dynamic> json) =>
    _$LoggingImpl(
      loggingEnabled: json['logging_enabled'] as bool?,
      defaultHandler: json['default_handler'] as String?,
      retentionPeriodDays: (json['retention_period_days'] as num?)?.toInt(),
      levelThreshold: json['level_threshold'] as String?,
      logDirectorySize: json['log_directory_size'] as String?,
    );

Map<String, dynamic> _$$LoggingImplToJson(_$LoggingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('logging_enabled', instance.loggingEnabled);
  writeNotNull('default_handler', instance.defaultHandler);
  writeNotNull('retention_period_days', instance.retentionPeriodDays);
  writeNotNull('level_threshold', instance.levelThreshold);
  writeNotNull('log_directory_size', instance.logDirectorySize);
  return val;
}

_$PageImpl _$$PageImplFromJson(Map<String, dynamic> json) => _$PageImpl(
      pageName: json['page_name'] as String?,
      pageId: json['page_id'] as String?,
      pageSet: json['page_set'] as bool?,
      pageExists: json['page_exists'] as bool?,
      pageVisible: json['page_visible'] as bool?,
      shortcode: json['shortcode'] as String?,
      block: json['block'] as String?,
      shortcodeRequired: json['shortcode_required'] as bool?,
      shortcodePresent: json['shortcode_present'] as bool?,
      blockPresent: json['block_present'] as bool?,
      blockRequired: json['block_required'] as bool?,
    );

Map<String, dynamic> _$$PageImplToJson(_$PageImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page_name', instance.pageName);
  writeNotNull('page_id', instance.pageId);
  writeNotNull('page_set', instance.pageSet);
  writeNotNull('page_exists', instance.pageExists);
  writeNotNull('page_visible', instance.pageVisible);
  writeNotNull('shortcode', instance.shortcode);
  writeNotNull('block', instance.block);
  writeNotNull('shortcode_required', instance.shortcodeRequired);
  writeNotNull('shortcode_present', instance.shortcodePresent);
  writeNotNull('block_present', instance.blockPresent);
  writeNotNull('block_required', instance.blockRequired);
  return val;
}

_$PostTypeCountImpl _$$PostTypeCountImplFromJson(Map<String, dynamic> json) =>
    _$PostTypeCountImpl(
      type: json['type'] as String?,
      count: json['count'] as String?,
    );

Map<String, dynamic> _$$PostTypeCountImplToJson(_$PostTypeCountImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('count', instance.count);
  return val;
}

_$SecurityImpl _$$SecurityImplFromJson(Map<String, dynamic> json) =>
    _$SecurityImpl(
      secureConnection: json['secure_connection'] as bool?,
      hideErrors: json['hide_errors'] as bool?,
    );

Map<String, dynamic> _$$SecurityImplToJson(_$SecurityImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('secure_connection', instance.secureConnection);
  writeNotNull('hide_errors', instance.hideErrors);
  return val;
}

_$SettingsImpl _$$SettingsImplFromJson(Map<String, dynamic> json) =>
    _$SettingsImpl(
      apiEnabled: json['api_enabled'] as bool?,
      forceSsl: json['force_ssl'] as bool?,
      currency: json['currency'] as String?,
      currencySymbol: json['currency_symbol'] as String?,
      currencyPosition: json['currency_position'] as String?,
      thousandSeparator: json['thousand_separator'] as String?,
      decimalSeparator: json['decimal_separator'] as String?,
      numberOfDecimals: (json['number_of_decimals'] as num?)?.toInt(),
      geolocationEnabled: json['geolocation_enabled'] as bool?,
      taxonomies: json['taxonomies'] == null
          ? null
          : Taxonomies.fromJson(json['taxonomies'] as Map<String, dynamic>),
      productVisibilityTerms: json['product_visibility_terms'] == null
          ? null
          : ProductVisibilityTerms.fromJson(
              json['product_visibility_terms'] as Map<String, dynamic>),
      woocommerceComConnected: json['woocommerce_com_connected'] as String?,
      enforceApprovedDownloadDirs:
          json['enforce_approved_download_dirs'] as bool?,
      orderDatastore: json['order_datastore'] as String?,
      hposEnabled: json['HPOS_enabled'] as bool?,
      hposSyncEnabled: json['HPOS_sync_enabled'] as bool?,
      enabledFeatures: (json['enabled_features'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SettingsImplToJson(_$SettingsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('api_enabled', instance.apiEnabled);
  writeNotNull('force_ssl', instance.forceSsl);
  writeNotNull('currency', instance.currency);
  writeNotNull('currency_symbol', instance.currencySymbol);
  writeNotNull('currency_position', instance.currencyPosition);
  writeNotNull('thousand_separator', instance.thousandSeparator);
  writeNotNull('decimal_separator', instance.decimalSeparator);
  writeNotNull('number_of_decimals', instance.numberOfDecimals);
  writeNotNull('geolocation_enabled', instance.geolocationEnabled);
  writeNotNull('taxonomies', instance.taxonomies?.toJson());
  writeNotNull(
      'product_visibility_terms', instance.productVisibilityTerms?.toJson());
  writeNotNull('woocommerce_com_connected', instance.woocommerceComConnected);
  writeNotNull(
      'enforce_approved_download_dirs', instance.enforceApprovedDownloadDirs);
  writeNotNull('order_datastore', instance.orderDatastore);
  writeNotNull('HPOS_enabled', instance.hposEnabled);
  writeNotNull('HPOS_sync_enabled', instance.hposSyncEnabled);
  writeNotNull('enabled_features', instance.enabledFeatures);
  return val;
}

_$ProductVisibilityTermsImpl _$$ProductVisibilityTermsImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVisibilityTermsImpl(
      excludeFromCatalog: json['exclude-from-catalog'] as String?,
      excludeFromSearch: json['exclude-from-search'] as String?,
      featured: json['featured'] as String?,
      outofstock: json['outofstock'] as String?,
      rated1: json['rated-1'] as String?,
      rated2: json['rated-2'] as String?,
      rated3: json['rated-3'] as String?,
      rated4: json['rated-4'] as String?,
      rated5: json['rated-5'] as String?,
    );

Map<String, dynamic> _$$ProductVisibilityTermsImplToJson(
    _$ProductVisibilityTermsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('exclude-from-catalog', instance.excludeFromCatalog);
  writeNotNull('exclude-from-search', instance.excludeFromSearch);
  writeNotNull('featured', instance.featured);
  writeNotNull('outofstock', instance.outofstock);
  writeNotNull('rated-1', instance.rated1);
  writeNotNull('rated-2', instance.rated2);
  writeNotNull('rated-3', instance.rated3);
  writeNotNull('rated-4', instance.rated4);
  writeNotNull('rated-5', instance.rated5);
  return val;
}

_$TaxonomiesImpl _$$TaxonomiesImplFromJson(Map<String, dynamic> json) =>
    _$TaxonomiesImpl(
      taxonomiesExternal: json['external'] as String?,
      grouped: json['grouped'] as String?,
      simple: json['simple'] as String?,
      variable: json['variable'] as String?,
    );

Map<String, dynamic> _$$TaxonomiesImplToJson(_$TaxonomiesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('external', instance.taxonomiesExternal);
  writeNotNull('grouped', instance.grouped);
  writeNotNull('simple', instance.simple);
  writeNotNull('variable', instance.variable);
  return val;
}

_$ThemeImpl _$$ThemeImplFromJson(Map<String, dynamic> json) => _$ThemeImpl(
      name: json['name'] as String?,
      version: json['version'] as String?,
      versionLatest: json['version_latest'] as String?,
      authorUrl: json['author_url'] as String?,
      isChildTheme: json['is_child_theme'] as bool?,
      isBlockTheme: json['is_block_theme'] as bool?,
      hasWoocommerceSupport: json['has_woocommerce_support'] as bool?,
      hasWoocommerceFile: json['has_woocommerce_file'] as bool?,
      hasOutdatedTemplates: json['has_outdated_templates'] as bool?,
      overrides: (json['overrides'] as List<dynamic>?)
          ?.map((e) => Override.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentName: json['parent_name'] as String?,
      parentVersion: json['parent_version'] as String?,
      parentVersionLatest: json['parent_version_latest'] as String?,
      parentAuthorUrl: json['parent_author_url'] as String?,
    );

Map<String, dynamic> _$$ThemeImplToJson(_$ThemeImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('version', instance.version);
  writeNotNull('version_latest', instance.versionLatest);
  writeNotNull('author_url', instance.authorUrl);
  writeNotNull('is_child_theme', instance.isChildTheme);
  writeNotNull('is_block_theme', instance.isBlockTheme);
  writeNotNull('has_woocommerce_support', instance.hasWoocommerceSupport);
  writeNotNull('has_woocommerce_file', instance.hasWoocommerceFile);
  writeNotNull('has_outdated_templates', instance.hasOutdatedTemplates);
  writeNotNull(
      'overrides', instance.overrides?.map((e) => e.toJson()).toList());
  writeNotNull('parent_name', instance.parentName);
  writeNotNull('parent_version', instance.parentVersion);
  writeNotNull('parent_version_latest', instance.parentVersionLatest);
  writeNotNull('parent_author_url', instance.parentAuthorUrl);
  return val;
}

_$OverrideImpl _$$OverrideImplFromJson(Map<String, dynamic> json) =>
    _$OverrideImpl(
      file: json['file'] as String?,
      version: json['version'] as String?,
      coreVersion: json['core_version'] as String?,
    );

Map<String, dynamic> _$$OverrideImplToJson(_$OverrideImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('file', instance.file);
  writeNotNull('version', instance.version);
  writeNotNull('core_version', instance.coreVersion);
  return val;
}
