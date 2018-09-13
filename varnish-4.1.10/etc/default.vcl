

# Number of cached sites: 115


vcl 4.0;
import std;
import cookie;
import directors;
import timers;
import revvar;
import header;
import chromelogger;
import querystring;
import wurfl;
import var;
import digest;
# BEGIN: (BP-259) including custom.vcl file
#include "/etc/varnish/custom.vcl";
# END: (BP-259)
# Location of BP.
# BEGIN SITE 'app-resume-example.herokuapp.com'
backend behttp_app__resume__example_herokuapp_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_app__resume__example_herokuapp_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'app-resume-example.herokuapp.com'
# BEGIN SITE 'asher-reseller-workflow-test-child1.com'
backend behttp_asher__reseller__workflow__test__child1_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_asher__reseller__workflow__test__child1_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'asher-reseller-workflow-test-child1.com'
# BEGIN SITE 'asher-reseller-workflow-test-main.com'
backend behttp_asher__reseller__workflow__test__main_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_asher__reseller__workflow__test__main_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'asher-reseller-workflow-test-main.com'
# BEGIN SITE 'asher-test1.com'
backend behttp_asher__test1_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_asher__test1_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'asher-test1.com'
# BEGIN SITE 'asher-test2.com'
backend behttp_asher__test2_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_asher__test2_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'asher-test2.com'
# BEGIN SITE 'asher.test'
backend behttp_asher_test {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_asher_test {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'asher.test'
# BEGIN SITE 'avphuket.com'
backend behttp_avphuket_com {
    .host = "127.0.0.1";
    .port = "9080";
    .probe = {
        .request =
        "GET / HTTP/1.1"
        "Connection: close"
        "Host: avphuket.com";
        .expected_response = 200;
        .interval = 10s;
        .timeout = 1s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
backend behttps_avphuket_com {
    .host = "127.0.0.1";
    .port = "9443";
    .probe = {
        .request =
        "GET / HTTP/1.1"
        "Connection: close"
        "Host: avphuket.com";
        .expected_response = 200;
        .interval = 10s;
        .timeout = 1s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
# END SITE 'avphuket.com'
# BEGIN SITE 'bp_group_test.com'
backend behttp_bp___group___test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_bp___group___test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'bp_group_test.com'
# BEGIN SITE 'cosmosdb-test.revsw.net'
backend behttp_cosmosdb__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_cosmosdb__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'cosmosdb-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1515990680470.revsw.net'
backend behttp_delete__me__cds__qa__name__1515990680470_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1515990680470_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1515990680470.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516072686999.revsw.net'
backend behttp_delete__me__cds__qa__name__1516072686999_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516072686999_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516072686999.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516072697851.revsw.net'
backend behttp_delete__me__cds__qa__name__1516072697851_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516072697851_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516072697851.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516088834598.revsw.net'
backend behttp_delete__me__cds__qa__name__1516088834598_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516088834598_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516088834598.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516088911149.revsw.net'
backend behttp_delete__me__cds__qa__name__1516088911149_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516088911149_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516088911149.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516092001276.revsw.net'
backend behttp_delete__me__cds__qa__name__1516092001276_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516092001276_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516092001276.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516174907031.revsw.net'
backend behttp_delete__me__cds__qa__name__1516174907031_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516174907031_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516174907031.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516178482390.revsw.net'
backend behttp_delete__me__cds__qa__name__1516178482390_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516178482390_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516178482390.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516181083580.revsw.net'
backend behttp_delete__me__cds__qa__name__1516181083580_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516181083580_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516181083580.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net'
backend behttp_delete__me__cds__qa__name__1516243470928__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516243470928__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net'
backend behttp_delete__me__cds__qa__name__1516249811194__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516249811194__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net'
backend behttp_delete__me__cds__qa__name__1516250097413__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516250097413__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net'
backend behttp_delete__me__cds__qa__name__1516255338611__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1516255338611__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net'
backend behttp_delete__me__cds__qa__name__1518511359685__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1518511359685__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net'
backend behttp_delete__me__cds__qa__name__1518511789831__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1518511789831__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net'
backend behttp_delete__me__cds__qa__name__1518583170485__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name__1518583170485__bp__offline__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name2-1518186832769.revsw.net'
backend behttp_delete__me__cds__qa__name2__1518186832769_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__me__cds__qa__name2__1518186832769_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-me-cds-qa-name2-1518186832769.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-bot-protection-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__bot__protection__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__bot__protection__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-bot-protection-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-bot-protection-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__bot__protection__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__bot__protection__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-bot-protection-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__cache__cookies__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__cookies__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__cache__cookies__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__cookies__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-3.revsw.net'
backend behttp_delete__test__api__qa__name__cache__cookies__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__cookies__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-4.revsw.net'
backend behttp_delete__test__api__qa__name__cache__cookies__step__4_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__cookies__step__4_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-4.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-5.revsw.net'
backend behttp_delete__test__api__qa__name__cache__cookies__step__5_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__cookies__step__5_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-5.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__cache__options__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__options__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-options-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__cache__options__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__options__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-options-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-3.revsw.net'
backend behttp_delete__test__api__qa__name__cache__options__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__options__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-options-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-4.revsw.net'
backend behttp_delete__test__api__qa__name__cache__options__step__4_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__options__step__4_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-options-step-4.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-5.revsw.net'
backend behttp_delete__test__api__qa__name__cache__options__step__5_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__options__step__5_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-options-step-5.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-purge-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__cache__purge__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cache__purge__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cache-purge-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__cdn__overlay__urls__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__cdn__overlay__urls__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-decompression-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__enable__decompression__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__enable__decompression__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-enable-decompression-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-decompression-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__enable__decompression__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__enable__decompression__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-enable-decompression-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__enable__rum__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__enable__rum__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-enable-rum-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__enable__rum__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__enable__rum__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-enable-rum-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-3.revsw.net'
backend behttp_delete__test__api__qa__name__enable__rum__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__enable__rum__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-enable-rum-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-freshly-domain-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__freshly__domain__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__freshly__domain__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-freshly-domain-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-freshly-domain-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__freshly__domain__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__freshly__domain__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-freshly-domain-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__locations__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__locations__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-locations-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__locations__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__locations__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-locations-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-3.revsw.net'
backend behttp_delete__test__api__qa__name__locations__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__locations__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-locations-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-4.revsw.net'
backend behttp_delete__test__api__qa__name__locations__step__4_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__locations__step__4_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-locations-step-4.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-5.revsw.net'
backend behttp_delete__test__api__qa__name__locations__step__5_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__locations__step__5_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-locations-step-5.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-6.revsw.net'
backend behttp_delete__test__api__qa__name__locations__step__6_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__locations__step__6_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-locations-step-6.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__ssl__checker__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__ssl__checker__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-ssl-checker-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__ssl__checker__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__ssl__checker__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-ssl-checker-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-3.revsw.net'
backend behttp_delete__test__api__qa__name__ssl__checker__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__ssl__checker__step__3_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-ssl-checker-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-wallarm-step-1.revsw.net'
backend behttp_delete__test__api__qa__name__wallarm__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__wallarm__step__1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-wallarm-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-wallarm-step-2.revsw.net'
backend behttp_delete__test__api__qa__name__wallarm__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test__api__qa__name__wallarm__step__2_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test-api-qa-name-wallarm-step-2.revsw.net'
# BEGIN SITE 'delete-test1.com'
backend behttp_delete__test1_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_delete__test1_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'delete-test1.com'
# BEGIN SITE 'dell.com'
backend behttp_dell_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_dell_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'dell.com'
# BEGIN SITE 'domain-sort-2-portal-ui-test.com'
backend behttp_domain__sort__2__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_domain__sort__2__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'domain-sort-2-portal-ui-test.com'
# BEGIN SITE 'gerzhan.ru'
backend behttp_gerzhan_ru {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_gerzhan_ru {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'gerzhan.ru'
# BEGIN SITE 'images1.voonik.com'
backend behttp_images1_voonik_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_images1_voonik_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'images1.voonik.com'
# BEGIN SITE 'lua-test.com'
backend behttp_lua__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_lua__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'lua-test.com'
# BEGIN SITE 'mbeans.com'
backend behttp_mbeans_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_mbeans_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'mbeans.com'
# BEGIN SITE 'monitor.revsw.net'
backend behttp_monitor_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_monitor_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'monitor.revsw.net'
# BEGIN SITE 'mozilla.com'
backend behttp_mozilla_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_mozilla_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'mozilla.com'
# BEGIN SITE 'new-test-domain2.com'
backend behttp_new__test__domain2_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_new__test__domain2_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'new-test-domain2.com'
# BEGIN SITE 'new-test-domain3.com'
backend behttp_new__test__domain3_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_new__test__domain3_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'new-test-domain3.com'
# BEGIN SITE 'new-test-domain.com'
backend behttp_new__test__domain_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_new__test__domain_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'new-test-domain.com'
# BEGIN SITE 'portal-qa-domain.revsw.net'
backend behttp_portal__qa__domain_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_portal__qa__domain_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'portal-qa-domain.revsw.net'
# BEGIN SITE 'portal-qa-traffic-alerts.revsw.net'
backend behttp_portal__qa__traffic__alerts_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_portal__qa__traffic__alerts_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'portal-qa-traffic-alerts.revsw.net'
# BEGIN SITE 'qa-admin-10-portal-ui-test.com'
backend behttp_qa__admin__10__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_qa__admin__10__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'qa-admin-10-portal-ui-test.com'
# BEGIN SITE 'qa-api-test-proxy-bp-varnish-cheader.revsw.net'
backend behttp_qa__api__test__proxy__bp__varnish__cheader_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    .probe = {
        .request =
        "GET / HTTP/1.1"
        "Connection: close"
        "Host: qa-api-test-proxy-bp-varnish-cheader.revsw.net";
        .expected_response = 200;
        .interval = 1s;
        .timeout = 2s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
backend behttps_qa__api__test__proxy__bp__varnish__cheader_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    .probe = {
        .request =
        "GET / HTTP/1.1"
        "Connection: close"
        "Host: qa-api-test-proxy-bp-varnish-cheader.revsw.net";
        .expected_response = 200;
        .interval = 1s;
        .timeout = 2s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
# END SITE 'qa-api-test-proxy-bp-varnish-cheader.revsw.net'
# BEGIN SITE 'qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net'
backend behttp_qa__api__test__proxy__bp__varnish__ttl__grace_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    .probe = {
        .request =
        "GET / HTTP/1.1"
        "Connection: close"
        "Host: qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net";
        .expected_response = 200;
        .interval = 1s;
        .timeout = 2s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
backend behttps_qa__api__test__proxy__bp__varnish__ttl__grace_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    .probe = {
        .request =
        "GET / HTTP/1.1"
        "Connection: close"
        "Host: qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net";
        .expected_response = 200;
        .interval = 1s;
        .timeout = 2s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
# END SITE 'qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net'
# BEGIN SITE 'qa-api-test-proxy-options-command1.revsw.net'
backend behttp_qa__api__test__proxy__options__command1_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_qa__api__test__proxy__options__command1_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'qa-api-test-proxy-options-command1.revsw.net'
# BEGIN SITE 'qa-cds-purge-test.revsw.net'
backend behttp_qa__cds__purge__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_qa__cds__purge__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'qa-cds-purge-test.revsw.net'
# BEGIN SITE 'qa-domain-group.revsw.net'
backend behttp_qa__domain__group_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_qa__domain__group_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'qa-domain-group.revsw.net'
# BEGIN SITE 'qa-reseller-10-portal-ui-test.com'
backend behttp_qa__reseller__10__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_qa__reseller__10__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'qa-reseller-10-portal-ui-test.com'
# BEGIN SITE 'qa-rev-admin-10-portal-ui-test.com'
backend behttp_qa__rev__admin__10__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_qa__rev__admin__10__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'qa-rev-admin-10-portal-ui-test.com'
# BEGIN SITE 'qa-test-company-nuubit.dell.com'
backend behttp_qa__test__company__nuubit_dell_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_qa__test__company__nuubit_dell_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'qa-test-company-nuubit.dell.com'
# BEGIN SITE 'quic-test.revsw.net'
backend behttp_quic__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_quic__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'quic-test.revsw.net'
# BEGIN SITE 'sometest3.com'
backend behttp_sometest3_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_sometest3_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'sometest3.com'
# BEGIN SITE 'ssltestdomain-1517213014418-portal-ui-test.com'
backend behttp_ssltestdomain__1517213014418__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_ssltestdomain__1517213014418__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'ssltestdomain-1517213014418-portal-ui-test.com'
# BEGIN SITE 'ssltestdomain-1517213297035-portal-ui-test.com'
backend behttp_ssltestdomain__1517213297035__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_ssltestdomain__1517213297035__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'ssltestdomain-1517213297035-portal-ui-test.com'
# BEGIN SITE 'test-access-control2.revsw.com'
backend behttp_test__access__control2_revsw_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__access__control2_revsw_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-access-control2.revsw.com'
# BEGIN SITE 'test-access-control.revsw.com'
backend behttp_test__access__control_revsw_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__access__control_revsw_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-access-control.revsw.com'
# BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
backend behttp_test__domain__1517213565194__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    .probe = {
        .request =
        "GET / HTTP/1.1GET / HTTP/2"
        "Connection: close"
        "Host: test-domain-1517213565194-portal-ui-test.com";
        .expected_response = 404;
        .interval = 3s;
        .timeout = 2s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
backend behttps_test__domain__1517213565194__portal__ui__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    .probe = {
        .request =
        "GET / HTTP/1.1GET / HTTP/2"
        "Connection: close"
        "Host: test-domain-1517213565194-portal-ui-test.com";
        .expected_response = 404;
        .interval = 3s;
        .timeout = 2s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
# END SITE 'test-domain-1517213565194-portal-ui-test.com'
# BEGIN SITE 'test-domain-aliases.revsw.net'
backend behttp_test__domain__aliases_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__domain__aliases_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-domain-aliases.revsw.net'
# BEGIN SITE 'test-lua2.com'
backend behttp_test__lua2_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__lua2_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-lua2.com'
# BEGIN SITE 'test-proxy-acl-deny-except.revsw.net'
backend behttp_test__proxy__acl__deny__except_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__proxy__acl__deny__except_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-proxy-acl-deny-except.revsw.net'
# BEGIN SITE 'test-proxy-cache-config-02.revsw.net'
backend behttp_test__proxy__cache__config__02_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    .probe = {
        .request =
        "GET / HTTP/1.1"
        "Connection: close"
        "Host: test-proxy-cache-config-02.revsw.net";
        .expected_response = 200;
        .interval = 5s;
        .timeout = 20s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
backend behttps_test__proxy__cache__config__02_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    .probe = {
        .request =
        "GET / HTTP/1.1"
        "Connection: close"
        "Host: test-proxy-cache-config-02.revsw.net";
        .expected_response = 200;
        .interval = 5s;
        .timeout = 20s;
        .window = 4; # If 2 out of the last 4 polls succeeded the backend is considered healthy, otherwise it will be marked as sick
        .threshold = 2;
    }
}
# END SITE 'test-proxy-cache-config-02.revsw.net'
# BEGIN SITE 'test-proxy-cache-config.revsw.net'
backend behttp_test__proxy__cache__config_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__proxy__cache__config_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-proxy-cache-config.revsw.net'
# BEGIN SITE 'test-proxy-headers.revsw.net'
backend behttp_test__proxy__headers_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__proxy__headers_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-proxy-headers.revsw.net'
# BEGIN SITE 'test-proxy-lua-locations.revsw.net'
backend behttp_test__proxy__lua__locations_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__proxy__lua__locations_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-proxy-lua-locations.revsw.net'
# BEGIN SITE 'test-proxy-rma-config.revsw.net'
backend behttp_test__proxy__rma__config_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__proxy__rma__config_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-proxy-rma-config.revsw.net'
# BEGIN SITE 'test-proxy-wildcard-domain.revsw.net'
backend behttp_test__proxy__wildcard__domain_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__proxy__wildcard__domain_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-proxy-wildcard-domain.revsw.net'
# BEGIN SITE 'test-qa-quic-protocol.revsw.net'
backend behttp_test__qa__quic__protocol_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__qa__quic__protocol_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-qa-quic-protocol.revsw.net'
# BEGIN SITE 'test-rewrite-wurfl.revsw.net'
backend behttp_test__rewrite__wurfl_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__rewrite__wurfl_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-rewrite-wurfl.revsw.net'
# BEGIN SITE 'test-victor-1.com'
backend behttp_test__victor__1_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__victor__1_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-victor-1.com'
# BEGIN SITE 'test-victor-2.com'
backend behttp_test__victor__2_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test__victor__2_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test-victor-2.com'
# BEGIN SITE 'test.asher.reseller2.com'
backend behttp_test_asher_reseller2_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test_asher_reseller2_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test.asher.reseller2.com'
# BEGIN SITE 'test_origin_server_location_id.dell.com'
backend behttp_test___origin___server___location___id_dell_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_test___origin___server___location___id_dell_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'test_origin_server_location_id.dell.com'
# BEGIN SITE 'testdomain-reseller3.com'
backend behttp_testdomain__reseller3_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_testdomain__reseller3_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'testdomain-reseller3.com'
# BEGIN SITE 'testdomain1-deleteme.com'
backend behttp_testdomain1__deleteme_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_testdomain1__deleteme_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'testdomain1-deleteme.com'
# BEGIN SITE 'testdomain2-deleteme.com'
backend behttp_testdomain2__deleteme_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_testdomain2__deleteme_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'testdomain2-deleteme.com'
# BEGIN SITE 'testforqa-asher.com'
backend behttp_testforqa__asher_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_testforqa__asher_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'testforqa-asher.com'
# BEGIN SITE 'testforqa-reseller.com'
backend behttp_testforqa__reseller_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_testforqa__reseller_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'testforqa-reseller.com'
# BEGIN SITE 'testforqa-victor6.com'
backend behttp_testforqa__victor6_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_testforqa__victor6_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'testforqa-victor6.com'
# BEGIN SITE 'testsub2.com'
backend behttp_testsub2_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_testsub2_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'testsub2.com'
# BEGIN SITE 'vcl-test.revsw.net'
backend behttp_vcl__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_vcl__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'vcl-test.revsw.net'
# BEGIN SITE 'waf-monitor.revsw.net'
backend behttp_waf__monitor_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_waf__monitor_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'waf-monitor.revsw.net'
# BEGIN SITE 'waf-test.revsw.net.revqa.net'
backend behttp_waf__test_revsw_net_revqa_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_waf__test_revsw_net_revqa_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'waf-test.revsw.net.revqa.net'
# BEGIN SITE 'wurfl-test.revsw.net'
backend behttp_wurfl__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_wurfl__test_revsw_net {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'wurfl-test.revsw.net'
# BEGIN SITE 'www.google-test.com'
backend behttp_www_google__test_com {
    .host = "127.0.0.1";
    .port = "9080";
    
}
backend behttps_www_google__test_com {
    .host = "127.0.0.1";
    .port = "9443";
    
}
# END SITE 'www.google-test.com'
# Transparent forward proxy for redirects (30x)
backend befwproxy {
    .host = "127.0.0.1";
    .port = "9081";
}
# revsdk support
backend behttp_all_revsdk_net {
	.host = "127.0.0.1";
	.port = "9080";
}
backend behttps_all_revsdk_net {
	.host = "127.0.0.1";
	.port = "9443";
}
# all domains support
backend behttp_all {
	.host = "127.0.0.1";
	.port = "9080";
}
backend behttps_all {
	.host = "127.0.0.1";
	.port = "9443";
}
# Begin custom VCL backends
# BEGIN SITE 'vcl-test.revsw.net'
backend becustom_vcl__test_revsw_net_fucking_test_block {
	.host = "origin-cdn.krxd.net";
	.port = "80";
	.preresolve_dns = 0;
	  .connect_timeout = 0.5s;
  .first_byte_timeout = 0.5s;
  .max_connections = 200;
  .between_bytes_timeout = 0.5s;
  #REV .share_key = "XXXXXXXXXXXXXXXXXXX";
  
  
  /*.probe = {
      .request = "HEAD / HTTP/1.1"  "Host: origin-cdn.krxd.net" "Connection: close";
      .window = 5;
      .threshold = 1;
      .timeout = 2s;
      .initial = 5;
      #REV .dummy = true;
  }*/
}
backend becustom_vcl__test_revsw_net_F_origin_cdn_krxd_net {
	.host = "origin-cdn.krxd.net";
	.port = "80";
	.preresolve_dns = 0;
	  .connect_timeout = 0.5s;
  .first_byte_timeout = 0.5s;
  .max_connections = 200;
  .between_bytes_timeout = 0.5s;
  #REV .share_key = "XXXXXXXXXXXXXXXXXXX";
  
  
  /*.probe = {
      .request = "HEAD / HTTP/1.1"  "Host: origin-cdn.krxd.net" "Connection: close";
      .window = 5;
      .threshold = 1;
      .timeout = 2s;
      .initial = 5;
      #REV .dummy = true;
  }*/
}
backend becustom_vcl__test_revsw_net_F_beacon_krxd_net {
	.host = "beacon.krxd.net";
	.port = "80";
	.preresolve_dns = 0;
	  .connect_timeout = 1s;
  .first_byte_timeout = 2s;
  .max_connections = 200;
  .between_bytes_timeout = 2s;
  #REV .share_key = "XXXXXXXXXXXXXXXXXXX";
  
  
  /*.probe = {
      .request = "HEAD / HTTP/1.1"  "Host: beacon.krxd.net" "Connection: close";
      .window = 5;
      .threshold = 1;
      .timeout = 2s;
      .initial = 5;
      #REV .dummy = true;
  }*/
}
backend becustom_vcl__test_revsw_net_F_Controltag_S3 {
	.host = "s3.amazonaws.com";
	.port = "80";
	.preresolve_dns = 0;
	  .connect_timeout = 1s;
  .first_byte_timeout = 2s;
  .max_connections = 200;
  .between_bytes_timeout = 2s;
  #REV .share_key = "XXXXXXXXXXXXXXXXXXX";
  
  
  /*.probe = {
      .request = "HEAD /fastly-healthcheck/1x1.GIF HTTP/1.1" "Host: s3.amazonaws.com" "Connection: close";
      .window = 5;
      .threshold = 1;
      .timeout = 2s;
      .initial = 5;
      #REV .dummy = true;
  }*/
}
backend becustom_vcl__test_revsw_net_Redbull_Controltag {
	.host = "origin-cdn.krxd.net";
	.port = "80";
	.preresolve_dns = 0;
	  .connect_timeout = 1s;
  .first_byte_timeout = 2s;
  .max_connections = 200;
  .between_bytes_timeout = 1s;
  #REV .share_key = "XXXXXXXXXXXXXXXXXXX";
  
  
  /*.probe = {
      .request = "HEAD / HTTP/1.1"  "Host: origin-cdn.krxd.net" "Connection: close";
      .window = 5;
      .threshold = 1;
      .timeout = 2s;
      .initial = 5;
      #REV .dummy = true;
  }*/
}
backend becustom_vcl__test_revsw_net_APIServices_user_data {
	.host = "origin-cdn.krxd.net";
	.port = "80";
	.preresolve_dns = 0;
	  .connect_timeout = 1s;
  .first_byte_timeout = 2s;
  .max_connections = 200;
  .between_bytes_timeout = 1s;
  #REV .share_key = "XXXXXXXXXXXXXXXXXXX";
  
  
  /*.probe = {
      .request = "HEAD / HTTP/1.1"  "Host: origin-cdn.krxd.net" "Connection: close";
      .window = 5;
      .threshold = 1;
      .timeout = 2s;
      .initial = 5;
      #REV .dummy = true;
  }*/
}
backend becustom_vcl__test_revsw_net_UserData_Service_V2 {
	.host = "userdata.krxd.net";
	.port = "80";
	.preresolve_dns = 0;
	  .connect_timeout = 1s;
  .first_byte_timeout = 2s;
  .max_connections = 200;
  .between_bytes_timeout = 1s;
  #REV .share_key = "XXXXXXXXXXXXXXXXXXX";
  
  
  /*.probe = {
      .request = "HEAD / HTTP/1.1"  "Host: userdata.krxd.net" "Connection: close";
      .window = 5;
      .threshold = 1;
      .timeout = 2s;
      .initial = 5;
      #REV .dummy = true;
  }*/
}
# END SITE 'vcl-test.revsw.net'
# End custom VCL backends
# Block 2: Define a key based on the User-Agent which can be used for hashing.
# Also set the PS-CapabilityList header for PageSpeed server to respect.
sub generate_user_agent_based_key {
    # Define placeholder PS-CapabilityList header values for large and small
    # screens with no UA dependent optimizations. Note that these placeholder
    # values should not contain any of ll, ii, dj, jw or ws, since these
    # codes will end up representing optimizations to be supported for the
    # request.
    set req.http.default_ps_capability_list_for_large_screens = "LargeScreen.SkipUADependentOptimizations:";
    set req.http.default_ps_capability_list_for_small_screens = "TinyScreen.SkipUADependentOptimizations:";
    # As a fallback, the PS-CapabilityList header that is sent to the upstream
    # PageSpeed server should be for a large screen device with no browser
    # specific optimizations.
    set req.http.PS-CapabilityList = req.http.default_ps_capability_list_for_large_screens;
    # Cache-fragment 1: Desktop User-Agents that support lazyload_images (ll),
    # inline_images (ii) and defer_javascript (dj).
    # Note: Wget is added for testing purposes only.
    if (req.http.User-Agent ~ "(?i)Chrome/|Firefox/|MSIE |Safari|Wget") {
        set req.http.PS-CapabilityList = "ll,ii,dj:";
    }
    # Cache-fragment 2: Desktop User-Agents that support lazyload_images (ll),
    # inline_images (ii), defer_javascript (dj), webp (jw) and lossless_webp
    # (ws).
    if (req.http.User-Agent ~
        "(?i)Chrome/[2][3-9]+\.|Chrome/[[3-9][0-9]+\.|Chrome/[0-9]{3,}\.") {
    set req.http.PS-CapabilityList = "ll,ii,dj,jw,ws:";
    }
    # Cache-fragment 3: This fragment contains (a) Desktop User-Agents that
    # match fragments 1 or 2 but should not because they represent older
    # versions of certain browsers or bots and (b) Tablet User-Agents that
    # on all browsers and use image compression qualities applicable to large
    # screens. Note that even Tablets that are capable of supporting inline or
    # webp images, e.g. Android 4.1.2, will not get these advanced
    # optimizations.
    if (req.http.User-Agent ~ "(?i)Firefox/[1-2]\.|MSIE [5-8]\.|bot|Yahoo!|Ruby|RPT-HTTPClient|(Google \(\+https\:\/\/developers\.google\.com\/\+\/web\/snippet\/\))|Android|iPad|TouchPad|Silk-Accelerated|Kindle Fire") {
        set req.http.PS-CapabilityList = req.http.default_ps_capability_list_for_large_screens;
    }
    # Cache-fragment 4: Mobiles and small screen Tablets will use image compression
    # qualities applicable to small screens, but all other optimizations will be
    # those that work on all browsers.
    if (req.http.User-Agent ~ "(?i)Mozilla.*Android.*Mobile*|iPhone|BlackBerry|Opera Mobi|Opera Mini|SymbianOS|UP.Browser|J-PHONE|Profile/MIDP|portalmmm|DoCoMo|Obigo|Galaxy Nexus|GT-I9300|GT-N7100|HTC One|Nexus [4|7|S]|Xoom|XT907") {
        set req.http.PS-CapabilityList = req.http.default_ps_capability_list_for_small_screens;
    }
    # Remove placeholder header values.
    unset req.http.default_ps_capability_list_for_large_screens;
    unset req.http.default_ps_capability_list_for_large_screens;
}
sub start_cookies_recv {
    # Start with empty per-request cookie rules.
    # We'll change these vars in each rule that matches the URL.
    revvar.unset(true, 5);
    revvar.unset(true, 6);
    revvar.unset(true, 7);
    revvar.unset(true, 1);
    revvar.unset(true, 9);
    revvar.unset(true, 2);
}
sub end_cookies_recv {
    # We will hash the cookies in X-Rev-Cookie-Hash in vcl_hash.
    # By default, ignore all cookies.
    unset req.http.X-Rev-Cookie-Hash;
    if (!revvar.get_bool(true, 5)) {
        if (revvar.get_string(true, 7)) {
            # Ignore all cookies EXCEPT these.
            cookie.filter_except(revvar.get_string(true, 7));
            set req.http.X-Rev-Cookie-Hash = cookie.get_string();
        }
        elsif (revvar.get_string(true, 6)) {
            # Ignore all these cookies and keep all the rest.
            cookie.filter_only(revvar.get_string(true, 6));
            set req.http.X-Rev-Cookie-Hash = cookie.get_string();
        }
        # Restore the recv ROUTEID cookie
        if (revvar.get_string(true, 10) && !cookie.isset("ROUTEID")) {
            cookie.set("ROUTEID", revvar.get_string(true, 10));
        }
    }
    # If we need to remove ignored cookies from the request, overwrite the Cookie header.
    # Otherwise, pass it unchanged.
    if (revvar.get_bool(true, 1)) {
        set req.http.Cookie = cookie.get_string();
    }
}
sub start_cookies_backend_response {
    # Start with a clean state.
    revvar.unset(false, 0);
    revvar.unset(false, 15);
    # Remove some or all Set-Cookie headers, if so decided in vcl_recv.
    if (revvar.get_bool(false, 2)) {
        # Save returned ROUTEID cookie; will restore it in vcl_deliver()
        revvar.set_string_allow_null(false, 3, header.get(beresp.http.Set-Cookie, "^ROUTEID="));
        if (revvar.get_bool(false, 5)) {
            # Remove all cookies.
            unset beresp.http.Set-Cookie;
        }
        else if (revvar.get_string(false, 9)) {
            # Remove only cookies that match the regex set in vcl_recv.
            header.remove(beresp.http.Set-Cookie, revvar.get_string(false, 9));
            header.remove(beresp.http.Set-Cookie, "^ROUTEID=");
        }
    }
}
sub vcl_init {
    timers.unit("microseconds");
    # Custom VCL backends
    # BEGIN SITE 'vcl-test.revsw.net'
    new dircustom_vcl__test_revsw_net_fucking_test_block = directors.rev_dns();
    if (dircustom_vcl__test_revsw_net_fucking_test_block.set_backend(becustom_vcl__test_revsw_net_fucking_test_block)) {}
    new dircustom_vcl__test_revsw_net_F_origin_cdn_krxd_net = directors.rev_dns();
    if (dircustom_vcl__test_revsw_net_F_origin_cdn_krxd_net.set_backend(becustom_vcl__test_revsw_net_F_origin_cdn_krxd_net)) {}
    new dircustom_vcl__test_revsw_net_F_beacon_krxd_net = directors.rev_dns();
    if (dircustom_vcl__test_revsw_net_F_beacon_krxd_net.set_backend(becustom_vcl__test_revsw_net_F_beacon_krxd_net)) {}
    new dircustom_vcl__test_revsw_net_F_Controltag_S3 = directors.rev_dns();
    if (dircustom_vcl__test_revsw_net_F_Controltag_S3.set_backend(becustom_vcl__test_revsw_net_F_Controltag_S3)) {}
    new dircustom_vcl__test_revsw_net_Redbull_Controltag = directors.rev_dns();
    if (dircustom_vcl__test_revsw_net_Redbull_Controltag.set_backend(becustom_vcl__test_revsw_net_Redbull_Controltag)) {}
    new dircustom_vcl__test_revsw_net_APIServices_user_data = directors.rev_dns();
    if (dircustom_vcl__test_revsw_net_APIServices_user_data.set_backend(becustom_vcl__test_revsw_net_APIServices_user_data)) {}
    new dircustom_vcl__test_revsw_net_UserData_Service_V2 = directors.rev_dns();
    if (dircustom_vcl__test_revsw_net_UserData_Service_V2.set_backend(becustom_vcl__test_revsw_net_UserData_Service_V2)) {}
    # END SITE 'vcl-test.revsw.net'
    # End custom VCL backends
}
sub vcl_hash {
    # add support for the *.revsdk.net
    # use the following to hash the data
    # 1. Host
    # 2. X-Rev-Host
    # 3. Url
    if (req.http.host ~ "(?i)\.revsdk\.net$") {
        hash_data(std.tolower(req.http.host + ":" + req.http.X-Rev-Host + ":" + req.http.url));
    }
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            # For caching hash we use object URL path, Host value and detected 
    # device capabilities
    hash_data(req.url);
    if (req.http.host) {
      hash_data(req.http.host);
    } else {
      hash_data(server.ip);
    }
    hash_data(var.get_string("new_directives"));
    return (lookup);
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            # For caching hash we use object URL path, Host value and detected
    # device capabilities
    hash_data(req.url);
    if (req.http.host) {
      hash_data(req.http.host);
    } else {
      hash_data(server.ip);
    }
    hash_data(var.get_string("new_directives"));
    return (lookup);
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <hash>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
              #-FASTLY HASH CODE WITH GENERATION FOR PURGE ALL
      #
    
      # Request Condition: Any UserData Service (v1 or v2) - /user_data & /userdata Prio: 2
      if( req.url ~ "^(/userdata/|/user_data/)" ) {
        hash_data(req.url);
        hash_data(req.http.host);
        hash_data(req.http.X-Krux-Cookie-KUID);
        hash_data(req.http.X-Forwarded-For);
        hash_data("#####GENERATION#####");
        return (lookup);
      }
      #end condition
    
    
      # Request Condition: Krux - X-Krux-Compression-Disabled Prio: 10
      if( req.http.X-Krux-Compression-Disabled && req.http.X-Krux-Compression-Disabled ~ "1" ) {
        hash_data(req.url);
        hash_data(req.http.host);
        hash_data(req.http.X-Forwarded-For);
        hash_data("#####GENERATION#####");
        return (lookup);
      }
      #end condition
    
      #if unspecified fall back to normal
      {
        hash_data(req.url);
        hash_data(req.http.host);
        hash_data("#####GENERATION#####");
        return (lookup);
      }
      #--FASTLY END HASH CODE
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            hash_data(req.url);
        if (req.http.host) {
            hash_data(req.http.host);
        } else {
            hash_data(server.ip);
        }
    hash_data(var.get_string("new_directives"));
    return (lookup);
    }
    # END SITE 'wurfl-test.revsw.net'
    # Include User-Agent in hash if set
    # Hash selected optimization profile
    hash_data(req.http.X-RevSw-Profile);
    # Hash per-domain caching rules
    hash_data(req.http.X-Rev-Rules-Hash);
    # Hash cookies if allowed.
    if (req.http.X-Rev-Cookie-Hash) {
        hash_data(req.http.X-Rev-Cookie-Hash);
    }
}
# Block 3a: Define ACL for purge requests
# BEGIN SITE 'app-resume-example.herokuapp.com'
acl purgehttp_app_resume_example_herokuapp_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_app_resume_example_herokuapp_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'app-resume-example.herokuapp.com'
# BEGIN SITE 'asher-reseller-workflow-test-child1.com'
acl purgehttp_asher_reseller_workflow_test_child1_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_asher_reseller_workflow_test_child1_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'asher-reseller-workflow-test-child1.com'
# BEGIN SITE 'asher-reseller-workflow-test-main.com'
acl purgehttp_asher_reseller_workflow_test_main_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_asher_reseller_workflow_test_main_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'asher-reseller-workflow-test-main.com'
# BEGIN SITE 'asher-test1.com'
acl purgehttp_asher_test1_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_asher_test1_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'asher-test1.com'
# BEGIN SITE 'asher-test2.com'
acl purgehttp_asher_test2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_asher_test2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'asher-test2.com'
# BEGIN SITE 'asher.test'
acl purgehttp_asher_test {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_asher_test {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'asher.test'
# BEGIN SITE 'avphuket.com'
acl purgehttp_avphuket_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_avphuket_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'avphuket.com'
# BEGIN SITE 'bp_group_test.com'
acl purgehttp_bp_group_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_bp_group_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'bp_group_test.com'
# BEGIN SITE 'cosmosdb-test.revsw.net'
acl purgehttp_cosmosdb_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_cosmosdb_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'cosmosdb-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1515990680470.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1515990680470_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1515990680470_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1515990680470.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516072686999.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516072686999_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516072686999_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516072686999.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516072697851.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516072697851_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516072697851_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516072697851.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516088834598.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516088834598_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516088834598_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516088834598.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516088911149.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516088911149_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516088911149_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516088911149.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516092001276.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516092001276_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516092001276_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516092001276.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516174907031.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516174907031_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516174907031_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516174907031.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516178482390.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516178482390_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516178482390_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516178482390.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516181083580.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516181083580_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516181083580_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516181083580.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516243470928_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516243470928_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516249811194_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516249811194_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516250097413_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516250097413_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1516255338611_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1516255338611_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1518511359685_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1518511359685_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1518511789831_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1518511789831_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net'
acl purgehttp_delete_me_cds_qa_name_1518583170485_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name_1518583170485_bp_offline_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net'
# BEGIN SITE 'delete-me-cds-qa-name2-1518186832769.revsw.net'
acl purgehttp_delete_me_cds_qa_name2_1518186832769_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_me_cds_qa_name2_1518186832769_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-me-cds-qa-name2-1518186832769.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-bot-protection-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_bot_protection_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_bot_protection_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-bot-protection-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-bot-protection-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_bot_protection_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_bot_protection_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-bot-protection-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_cookies_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_cookies_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_cookies_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_cookies_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-3.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_cookies_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_cookies_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-4.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_cookies_step_4_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_cookies_step_4_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-4.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-5.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_cookies_step_5_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_cookies_step_5_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-cookies-step-5.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_options_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_options_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-options-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_options_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_options_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-options-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-3.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_options_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_options_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-options-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-4.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_options_step_4_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_options_step_4_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-options-step-4.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-options-step-5.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_options_step_5_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_options_step_5_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-options-step-5.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cache-purge-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_cache_purge_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cache_purge_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cache-purge-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_cdn_overlay_urls_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_cdn_overlay_urls_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-decompression-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_enable_decompression_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_enable_decompression_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-enable-decompression-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-decompression-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_enable_decompression_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_enable_decompression_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-enable-decompression-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_enable_rum_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_enable_rum_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-enable-rum-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_enable_rum_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_enable_rum_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-enable-rum-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-3.revsw.net'
acl purgehttp_delete_test_api_qa_name_enable_rum_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_enable_rum_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-enable-rum-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-freshly-domain-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_freshly_domain_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_freshly_domain_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-freshly-domain-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-freshly-domain-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_freshly_domain_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_freshly_domain_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-freshly-domain-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_locations_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_locations_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-locations-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_locations_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_locations_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-locations-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-3.revsw.net'
acl purgehttp_delete_test_api_qa_name_locations_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_locations_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-locations-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-4.revsw.net'
acl purgehttp_delete_test_api_qa_name_locations_step_4_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_locations_step_4_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-locations-step-4.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-5.revsw.net'
acl purgehttp_delete_test_api_qa_name_locations_step_5_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_locations_step_5_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-locations-step-5.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-locations-step-6.revsw.net'
acl purgehttp_delete_test_api_qa_name_locations_step_6_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_locations_step_6_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-locations-step-6.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_ssl_checker_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_ssl_checker_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-ssl-checker-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_ssl_checker_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_ssl_checker_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-ssl-checker-step-2.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-3.revsw.net'
acl purgehttp_delete_test_api_qa_name_ssl_checker_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_ssl_checker_step_3_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-ssl-checker-step-3.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-wallarm-step-1.revsw.net'
acl purgehttp_delete_test_api_qa_name_wallarm_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_wallarm_step_1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-wallarm-step-1.revsw.net'
# BEGIN SITE 'delete-test-api-qa-name-wallarm-step-2.revsw.net'
acl purgehttp_delete_test_api_qa_name_wallarm_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test_api_qa_name_wallarm_step_2_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test-api-qa-name-wallarm-step-2.revsw.net'
# BEGIN SITE 'delete-test1.com'
acl purgehttp_delete_test1_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_delete_test1_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'delete-test1.com'
# BEGIN SITE 'dell.com'
acl purgehttp_dell_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_dell_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'dell.com'
# BEGIN SITE 'domain-sort-2-portal-ui-test.com'
acl purgehttp_domain_sort_2_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_domain_sort_2_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'domain-sort-2-portal-ui-test.com'
# BEGIN SITE 'gerzhan.ru'
acl purgehttp_gerzhan_ru {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_gerzhan_ru {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'gerzhan.ru'
# BEGIN SITE 'images1.voonik.com'
acl purgehttp_images1_voonik_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_images1_voonik_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'images1.voonik.com'
# BEGIN SITE 'lua-test.com'
acl purgehttp_lua_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_lua_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'lua-test.com'
# BEGIN SITE 'mbeans.com'
acl purgehttp_mbeans_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_mbeans_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'mbeans.com'
# BEGIN SITE 'monitor.revsw.net'
acl purgehttp_monitor_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_monitor_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'monitor.revsw.net'
# BEGIN SITE 'mozilla.com'
acl purgehttp_mozilla_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_mozilla_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'mozilla.com'
# BEGIN SITE 'new-test-domain2.com'
acl purgehttp_new_test_domain2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_new_test_domain2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'new-test-domain2.com'
# BEGIN SITE 'new-test-domain3.com'
acl purgehttp_new_test_domain3_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_new_test_domain3_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'new-test-domain3.com'
# BEGIN SITE 'new-test-domain.com'
acl purgehttp_new_test_domain_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_new_test_domain_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'new-test-domain.com'
# BEGIN SITE 'portal-qa-domain.revsw.net'
acl purgehttp_portal_qa_domain_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_portal_qa_domain_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'portal-qa-domain.revsw.net'
# BEGIN SITE 'portal-qa-traffic-alerts.revsw.net'
acl purgehttp_portal_qa_traffic_alerts_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_portal_qa_traffic_alerts_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'portal-qa-traffic-alerts.revsw.net'
# BEGIN SITE 'qa-admin-10-portal-ui-test.com'
acl purgehttp_qa_admin_10_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_qa_admin_10_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'qa-admin-10-portal-ui-test.com'
# BEGIN SITE 'qa-api-test-proxy-bp-varnish-cheader.revsw.net'
acl purgehttp_qa_api_test_proxy_bp_varnish_cheader_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_qa_api_test_proxy_bp_varnish_cheader_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'qa-api-test-proxy-bp-varnish-cheader.revsw.net'
# BEGIN SITE 'qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net'
acl purgehttp_qa_api_test_proxy_bp_varnish_ttl_grace_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_qa_api_test_proxy_bp_varnish_ttl_grace_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net'
# BEGIN SITE 'qa-api-test-proxy-options-command1.revsw.net'
acl purgehttp_qa_api_test_proxy_options_command1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_qa_api_test_proxy_options_command1_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'qa-api-test-proxy-options-command1.revsw.net'
# BEGIN SITE 'qa-cds-purge-test.revsw.net'
acl purgehttp_qa_cds_purge_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "testsjc20-co-test.revqa.net";
}
acl purgehttps_qa_cds_purge_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "testsjc20-co-test.revqa.net";
}
# END SITE 'qa-cds-purge-test.revsw.net'
# BEGIN SITE 'qa-domain-group.revsw.net'
acl purgehttp_qa_domain_group_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_qa_domain_group_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'qa-domain-group.revsw.net'
# BEGIN SITE 'qa-reseller-10-portal-ui-test.com'
acl purgehttp_qa_reseller_10_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_qa_reseller_10_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'qa-reseller-10-portal-ui-test.com'
# BEGIN SITE 'qa-rev-admin-10-portal-ui-test.com'
acl purgehttp_qa_rev_admin_10_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_qa_rev_admin_10_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'qa-rev-admin-10-portal-ui-test.com'
# BEGIN SITE 'qa-test-company-nuubit.dell.com'
acl purgehttp_qa_test_company_nuubit_dell_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_qa_test_company_nuubit_dell_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'qa-test-company-nuubit.dell.com'
# BEGIN SITE 'quic-test.revsw.net'
acl purgehttp_quic_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_quic_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'quic-test.revsw.net'
# BEGIN SITE 'sometest3.com'
acl purgehttp_sometest3_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_sometest3_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'sometest3.com'
# BEGIN SITE 'ssltestdomain-1517213014418-portal-ui-test.com'
acl purgehttp_ssltestdomain_1517213014418_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_ssltestdomain_1517213014418_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'ssltestdomain-1517213014418-portal-ui-test.com'
# BEGIN SITE 'ssltestdomain-1517213297035-portal-ui-test.com'
acl purgehttp_ssltestdomain_1517213297035_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_ssltestdomain_1517213297035_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'ssltestdomain-1517213297035-portal-ui-test.com'
# BEGIN SITE 'test-access-control2.revsw.com'
acl purgehttp_test_access_control2_revsw_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_access_control2_revsw_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-access-control2.revsw.com'
# BEGIN SITE 'test-access-control.revsw.com'
acl purgehttp_test_access_control_revsw_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_access_control_revsw_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-access-control.revsw.com'
# BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
acl purgehttp_test_domain_1517213565194_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_domain_1517213565194_portal_ui_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-domain-1517213565194-portal-ui-test.com'
# BEGIN SITE 'test-domain-aliases.revsw.net'
acl purgehttp_test_domain_aliases_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_domain_aliases_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-domain-aliases.revsw.net'
# BEGIN SITE 'test-lua2.com'
acl purgehttp_test_lua2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_lua2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-lua2.com'
# BEGIN SITE 'test-proxy-acl-deny-except.revsw.net'
acl purgehttp_test_proxy_acl_deny_except_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_proxy_acl_deny_except_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-proxy-acl-deny-except.revsw.net'
# BEGIN SITE 'test-proxy-cache-config-02.revsw.net'
acl purgehttp_test_proxy_cache_config_02_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_proxy_cache_config_02_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-proxy-cache-config-02.revsw.net'
# BEGIN SITE 'test-proxy-cache-config.revsw.net'
acl purgehttp_test_proxy_cache_config_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "testsjc20-co-test.revqa.net";
}
acl purgehttps_test_proxy_cache_config_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "testsjc20-co-test.revqa.net";
}
# END SITE 'test-proxy-cache-config.revsw.net'
# BEGIN SITE 'test-proxy-headers.revsw.net'
acl purgehttp_test_proxy_headers_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_proxy_headers_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-proxy-headers.revsw.net'
# BEGIN SITE 'test-proxy-lua-locations.revsw.net'
acl purgehttp_test_proxy_lua_locations_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_proxy_lua_locations_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-proxy-lua-locations.revsw.net'
# BEGIN SITE 'test-proxy-rma-config.revsw.net'
acl purgehttp_test_proxy_rma_config_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_proxy_rma_config_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-proxy-rma-config.revsw.net'
# BEGIN SITE 'test-proxy-wildcard-domain.revsw.net'
acl purgehttp_test_proxy_wildcard_domain_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_proxy_wildcard_domain_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-proxy-wildcard-domain.revsw.net'
# BEGIN SITE 'test-qa-quic-protocol.revsw.net'
acl purgehttp_test_qa_quic_protocol_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_qa_quic_protocol_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-qa-quic-protocol.revsw.net'
# BEGIN SITE 'test-rewrite-wurfl.revsw.net'
acl purgehttp_test_rewrite_wurfl_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_rewrite_wurfl_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-rewrite-wurfl.revsw.net'
# BEGIN SITE 'test-victor-1.com'
acl purgehttp_test_victor_1_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_victor_1_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-victor-1.com'
# BEGIN SITE 'test-victor-2.com'
acl purgehttp_test_victor_2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_victor_2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test-victor-2.com'
# BEGIN SITE 'test.asher.reseller2.com'
acl purgehttp_test_asher_reseller2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_asher_reseller2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test.asher.reseller2.com'
# BEGIN SITE 'test_origin_server_location_id.dell.com'
acl purgehttp_test_origin_server_location_id_dell_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_test_origin_server_location_id_dell_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'test_origin_server_location_id.dell.com'
# BEGIN SITE 'testdomain-reseller3.com'
acl purgehttp_testdomain_reseller3_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_testdomain_reseller3_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'testdomain-reseller3.com'
# BEGIN SITE 'testdomain1-deleteme.com'
acl purgehttp_testdomain1_deleteme_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_testdomain1_deleteme_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'testdomain1-deleteme.com'
# BEGIN SITE 'testdomain2-deleteme.com'
acl purgehttp_testdomain2_deleteme_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_testdomain2_deleteme_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'testdomain2-deleteme.com'
# BEGIN SITE 'testforqa-asher.com'
acl purgehttp_testforqa_asher_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_testforqa_asher_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'testforqa-asher.com'
# BEGIN SITE 'testforqa-reseller.com'
acl purgehttp_testforqa_reseller_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_testforqa_reseller_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'testforqa-reseller.com'
# BEGIN SITE 'testforqa-victor6.com'
acl purgehttp_testforqa_victor6_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_testforqa_victor6_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'testforqa-victor6.com'
# BEGIN SITE 'testsub2.com'
acl purgehttp_testsub2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_testsub2_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'testsub2.com'
# BEGIN SITE 'vcl-test.revsw.net'
acl purgehttp_vcl_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_vcl_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'vcl-test.revsw.net'
# BEGIN SITE 'waf-monitor.revsw.net'
acl purgehttp_waf_monitor_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_waf_monitor_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'waf-monitor.revsw.net'
# BEGIN SITE 'waf-test.revsw.net.revqa.net'
acl purgehttp_waf_test_revsw_net_revqa_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "testsjc20-co-test.revqa.net";
}
acl purgehttps_waf_test_revsw_net_revqa_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "testsjc20-co-test.revqa.net";
}
# END SITE 'waf-test.revsw.net.revqa.net'
# BEGIN SITE 'wurfl-test.revsw.net'
acl purgehttp_wurfl_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_wurfl_test_revsw_net {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'wurfl-test.revsw.net'
# BEGIN SITE 'www.google-test.com'
acl purgehttp_www_google_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
acl purgehttps_www_google_test_com {
    # Purge requests are only allowed from localhost.
    "localhost";
    "127.0.0.1";
      "TESTSJC20-BP01.REVSW.NET";
}
# END SITE 'www.google-test.com'
# Implement local purging support for *.revsdk.net
acl purgehttp_all_revsdk_net {
	"localhost";
	"127.0.0.1";
}
acl purgehttps_all_revsdk_net {
	"localhost";
	"127.0.0.1";
}
# Implement local purging support for *.revsw.net
acl purgehttp_all {
	"localhost";
	"127.0.0.1";
}
acl purgehttps_all {
	"localhost";
	"127.0.0.1";
}
# Block 3b: Issue purge when there is a cache hit for the purge request.
sub vcl_hit {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            #
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            #
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <hit>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
              # REVSW - return the stale object in vcl_hit if 50x errors in vcl_backend_response
      if (req.http.x-krux-serve-type == "stale" && req.restarts == 1 && obj.ttl + obj.grace > 0s) {
        return (deliver);
      }
      # Don't unset req.http.x-krux-serve-type, we need it in vcl_backend_response to detect restarts
    
      #--FASTLY HIT START
    
      # we cannot reach obj.ttl and obj.grace in vcl_deliver, save them when we can in vcl_hit
      set req.http.Fastly-Tmp-Obj-TTL = obj.ttl;
      set req.http.Fastly-Tmp-Obj-Grace = obj.grace;
    
      set req.http.Fastly-Cachetype = "HIT";
      #--FASTLY HIT END
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            #
    }
    # END SITE 'wurfl-test.revsw.net'
    set req.http.X-Rev-obj-ttl = obj.ttl;
    #set req.http.X-Rev-obj-grace = obj.grace;
    revvar.set_bool(true, 14, true);
    if (obj.ttl >= 0s) {
        # A pure unadultered hit, deliver it
        return (deliver);
    }
    # We have no fresh fish. Lets look at the stale ones.
    if (std.healthy(req.backend_hint)) {
        # Backend is healthy. Limit age to value set by caching rules.
        if (obj.ttl + revvar.get_duration(true, 17) > 0s) {
            return (deliver);
        } else {
            # No candidate for grace. Fetch a fresh object.
            return(fetch);
        }
    } else {
        # backend is sick - use full grace
        if (obj.ttl + obj.grace > 0s) {
            return (deliver);
        } else {
            # no graced object.
            return (fetch);
        }
    }
    # Not reachable
    return (fetch);
}
# Block 3c: Issue a no-op purge when there is a cache miss for the purge
# request.
sub vcl_miss {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            # For cache misses we need to prefix the request URL to include the
    # origin URL (with hard-coded "http://" prefix so even if end user is
    # requesting HTTPS object ImageEngine secondary cache will use HTTP
    # protocol for origin access)
    if (req.url !~ "^/https?:/") {
        set req.url = "/http://" + req.http.x-ie-origin + req.url;
    }
    
    # Check whether the IE debug header is set in the request if it is then
    # set an internal flag in the request header so we will know whether
    # we need to delete debug header from the response.
    if (req.http.X-WIT-Debug ~ "true") {
      set req.http.X-WIT-Debug-Save = "true";
    } else {
      set req.http.X-WIT-Debug = "true";
    }
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            # For cache misses we need to prefix the request URL to include the
    # origin URL (with hard-coded "http://" prefix so even if end user is
    # requesting HTTPS object ImageEngine secondary cache will use HTTP
    # protocol for origin access)
    if (req.url !~ "^/https?:/") {
        set req.url = "/http://" + req.http.x-ie-origin + req.url;
    }
    
    # Check whether the IE debug header is set in the request if it is then
    # set an internal flag in the request header so we will know whether
    # we need to delete debug header from the response.
    if (req.http.X-WIT-Debug ~ "true") {
      set req.http.X-WIT-Debug-Save = "true";
    } else {
      set req.http.X-WIT-Debug = "true";
    }
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <miss>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
              #--FASTLY MISS START
    
      # this is not a hit after all, clean up these set in vcl_hit
      unset req.http.Fastly-Tmp-Obj-TTL;
      unset req.http.Fastly-Tmp-Obj-Grace;
    
      if (req.http.Fastly-Check-SHA1) {
         return (synth(550, "Doesnt exist"));
      }
    
      #--FASTLY BEREQ START
      if (req.http.Fastly-Original-Cookie) {
        set req.http.Cookie = req.http.Fastly-Original-Cookie;
      }
    
      if (req.http.Fastly-Original-URL) {
        set req.url = req.http.Fastly-Original-URL;
      }
    
      if (req.http.Fastly-FF) {
        set req.http.Fastly-Client = "1";
      }
    
      # do not send this to the backend
      unset req.http.Fastly-Original-Cookie;
      unset req.http.Fastly-Original-URL;
      unset req.http.Fastly-Vary-String;
      unset req.http.X-Varnish-Client;
    
      if (req.http.Fastly-Temp-XFF) {
        if (req.http.Fastly-Temp-XFF == "") {
          unset req.http.X-Forwarded-For;
        } else {
          set req.http.X-Forwarded-For = req.http.Fastly-Temp-XFF;
        }
        # unset req.http.Fastly-Temp-XFF;
      }
      #--FASTLY BEREQ STOP
    
      set req.http.Fastly-Cachetype = "MISS";
    
      #--FASTLY MISS STOP
      return (fetch);
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            #
    }
    # END SITE 'wurfl-test.revsw.net'
}
# Block 4: In vcl_recv, on receiving a request, call the method responsible for
# generating the User-Agent based key for hashing into the cache.
sub vcl_recv {
    # Initialize the variable store.
    revvar.init_var_count(19);
    revvar.set_duration(true, 17, 10s);
    # Varnish has added the Apache address to X-Forwarded-For. Revert this.
    set req.http.X-Forwarded-For = regsub(req.http.X-Forwarded-For, "^([^,]+),?.*$", "\1");
    # Remove shards from hostname
    set req.http.Host = regsub(req.http.Host, "^s\d+-", "");
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            if (req.url ~ "^/product/[^/]+/?$") {
            # Get a product
            set req.http.cosmos-verb = "GET";
            set req.http.cosmos-resource-type = "docs";
            set req.http.cosmos-product-id = regsub(req.url, "^/product/([^/]+)/?$", "\1");
            set req.http.cosmos-resource-id = "dbs/DummyData/colls/DummyData1/docs/Product-" + req.http.cosmos-product-id;
            set req.http.cosmos-url = "/" + req.http.cosmos-resource-id;
            set req.http.x-ms-documentdb-partitionkey = {"["This is the value for product 0"} + req.http.cosmos-product-id + {""]"};
            unset req.http.cosmos-product-id;
        }
        else if (req.url ~ "^/update/[^/]+/?$") {
            # Update a product
            set req.http.cosmos-verb = "PUT";
            set req.http.cosmos-resource-type = "docs";
            set req.http.cosmos-product-id = regsub(req.url, "^/update/([^/]+)/?$", "\1");
            set req.http.cosmos-resource-id = "dbs/DummyData/colls/DummyData1/docs/Product-" + req.http.cosmos-product-id;
            set req.http.cosmos-url = "/" + req.http.cosmos-resource-id;
            set req.http.x-ms-documentdb-partitionkey = {"["This is the value for product 0"} + req.http.cosmos-product-id + {""]"};
            unset req.http.cosmos-product-id;
        }
        else if (req.url ~ "^/delete/[^/]+/?$") {
            # Delete a product
            set req.http.cosmos-verb = "DELETE";
            set req.http.cosmos-resource-type = "docs";
            set req.http.cosmos-product-id = regsub(req.url, "^/delete/([^/]+)/?$", "\1");
            set req.http.cosmos-resource-id = "dbs/DummyData/colls/DummyData1/docs/Product-" + req.http.cosmos-product-id;
            set req.http.cosmos-url = "/" + req.http.cosmos-resource-id;
            set req.http.x-ms-documentdb-partitionkey = {"["This is the value for product 0"} + req.http.cosmos-product-id + {""]"};
            unset req.http.cosmos-product-id;
        }
        else if (req.url ~ "^/add/?$") {
            # Create a product
            set req.http.cosmos-verb = "POST";
            set req.http.cosmos-resource-type = "docs";
            set req.http.cosmos-resource-id = "dbs/DummyData/colls/DummyData1";
            set req.http.cosmos-url = "/dbs/DummyData/colls/DummyData1/docs";
            set req.http.x-ms-documentdb-partitionkey = {"["This is the value for product 0"} + req.http.cosmos-product-id + {""]"};
        }
        else {
            set req.http.oldschool = "true";
        }
        if (!req.http.oldschool) {
            return (pass);
        }
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            # !!!!!! Workaround for Voonik, rewrite the UAs of apps that send a bad UA
    if (req.http.user-agent ~ "^(android:\d+:\d+|okhttp/[\d\.]+|gzip)$") {
        set req.http.user-agent = "Dalvik/2.1.0 (Linux; U; Android 6.0.1; SM-J700F Build/MMB29K) Voonik/" + req.http.user-agent;
    }
    
    unset req.http.Cookie;
    unset req.http.proxy;
    
    # Saving the request URL in X-Rev-Url header (the header is used during cache purging on NB edge servers)
    set req.http.X-Rev-Url = req.url;
    
    if (req.url == "/favicon.ico") {
        return (hash);
    }
    # || wurfl.get_capability("webp_lossy_support") == "true" || wurfl.get_capability("webp_lossless_support") == "true"
    if (req.http.accept ~ "webp") {
        # webp is supported, so we don't include it in the blacklist
    } else {
        var.set_string("unsupported_formats", var.get_string("unsupported_formats") + "_webp");
    }
    
    var.set_string("new_directives", "");
    
    if (req.http.dpr && req.http.width) {
        # Use client hints to determine width
        var.set_string("new_width", req.http.width);
    
        # We'll use this to send the Content-DPR header later
        var.set_string("content_dpr", req.http.dpr);
    
        # Add "Width" to the Vary header
        var.set_string("vary", var.get_string("vary") + "Width, ");
    
    } else if (req.http.dpr && req.http.viewport-width) {
        # Use client hints to determine width
    
        if (req.http.dpr ~ "\.") {
            # Non-integral DPR Math
    
            # From "2.0"  capture ["2","0"],  return 20
            # From "1.75" capture ["1", "7"], return 17
    
            # NOTE: if std.integer() fails to parse the regsub() result, it will return 10 (which will be divided by 10 later to get a 1x multiplier)
            var.set_int("dpr", std.integer(regsub(req.http.dpr, "(\d+)?\.(\d)", "\1\2"), 10));
    
            # NOTE: the ' "" +  ' prefix is required to implicitly typecast the INT to a STRING, otherwise set_string() will fail
            var.set_string("new_width", "" + (  std.integer(req.http.viewport-width, 0) * var.get_int("dpr") / 10  ));
    
        } else {
            var.set_string("new_width", "" + (  std.integer(req.http.viewport-width, 0) * std.integer(req.http.dpr, 2)  ));
        }
    
        # We'll use this to send the Content-DPR header later
        var.set_string("content_dpr", req.http.dpr);
    
        # Add "Viewport-Width" and "DPR" to the Vary header
        var.set_string("vary", var.get_string("vary") + "Viewport-Width, DPR, ");
    
    #} else if (wurfl.get_capability("is_wireless_device") == "true") {
    
    #    if (wurfl.get_capability("is_tablet") == "true") {
            # For tablets we use max_image_height because they are normally used in LANDSCAPE orientation
            
            # Since WURFL inconsistently models the orientation of tablets, we normalize it
    #        if (std.integer(wurfl.get_capability("resolution_width"), 1280) > std.integer(wurfl.get_capability("resolution_height"), 0)) {
                # This is modeled in landscape orientation - it's wider than it is tall
    #            var.set_string("new_width", wurfl.get_capability("resolution_width"));
    #        } else {
                # This is modeled in portrait orientation - it's taller than it is wide
    #            var.set_string("new_width", wurfl.get_capability("resolution_height"));
    #        }
    
    #    } else {
            # For everything else we use max_image_width because they are in PORTRAIT orientation
    #        var.set_string("new_width", wurfl.get_capability("resolution_width"));
    #    }
    
        # Add "User-Agent" to the Vary header
    #    var.set_string("vary", var.get_string("vary") + "User-Agent, ");
    
     } else {
        # Non-mobile, use hard-coded maximum
        var.set_string("new_width", "2560");
    
        var.set_string("vary", var.get_string("vary") + "User-Agent, ");
    }
    
    var.set_string("new_directives", var.get_string("new_directives") + "/w_" + var.get_string("new_width"));
    
    # `/a_*` and `/pc_*` should never make it back to the origin server
    var.set_string("directives", regsuball(var.get_string("directives"), "/(?:a|pc)_[^/]+", ""));
    
    # Remove params that are already set in auto mode
    var.set_string("directives", regsuball(var.get_string("directives"), "/(?:w|h|m)_[^/]+", ""));
    
    var.set_string("new_directives", var.get_string("new_directives") + var.get_string("directives"));
    
    if (var.get_string("unsupported_formats") != "") {
        # Each unsupported format is added with "_" prepended, so this might look like "_webp_bmp_gif"
        # then we prepend "/naf" to it to make "/naf_webp_bmp_gif" and add that to the directives
        var.set_string("new_directives", var.get_string("new_directives") + "/naf" + var.get_string("unsupported_formats"));
    }
    
    # std.syslog(0, var.get_string("new_directives"));
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            # Workaround for Voonik, rewrite the UAs of apps that send a bad UA
        if (req.http.user-agent ~ "^(android:\d+:\d+|okhttp/[\d\.]+|gzip)$") {
            set req.http.user-agent = "Dalvik/2.1.0 (Linux; U; Android 6.0.1; SM-J700F Build/MMB29K) Voonik/" + req.http.user-agent;
        }
    
        unset req.http.Cookie;
        unset req.http.proxy;
    # Saving the request URL in X-Rev-Url header (the header is used during cache purging on NB edge servers)
        set req.http.X-Rev-Url = req.url;
    
        if (req.url == "/favicon.ico") {
            return (hash);
        }
    
        # Logic for the ImageEngine system.
        # Note: this is included in vcl_recv()
    
        ############################################################################
        ## Request cleanup / normalization
        ############################################################################
    
        if (req.http.host ~ ":\d+$") {
            var.set_string("port", regsub(req.http.host, "^.*(:\d+)$","\1"));
        } else {
            var.set_string("port", "");
        }
    
        # Strip the port from the Host header as it is not relevant
        # Also, lowercase the hostname
        set req.http.host = std.tolower(regsub(req.http.host, ":[0-9]+$",""));
    
        # Fix issue where the colon in the URL is replaced with "%3A"
        # JIRA Issue #IR-90
        set req.url = regsub(req.url, "^(.*?/https?)%3A(/.+)$", "\1:\2");
    
        # Fix issue where target image URL is missing second slash to avoid protocol violation
        # JIRA Issue #IR-87
        set req.url = regsub(req.url, "^(.*?/https?:/)([^/].+)$", "\1/\2");
    
        # Fix the issue where a relative scheme was used (the scheme was excluded)
        # JIRA Issue #IR-82
        if (req.url !~ "https?://") {
            set req.url = regsub(req.url, "^(.*?/)(//.+)$", "\1http:\2");
        }
    
        # Build the original URL and pass it back to the backends
        if (req.http.X-Forwarded-Proto == "https") {
            var.set_string("scheme", "https");
            if (var.get_string("port") == "443") {
                var.set_string("port", "");
            }
        } else {
            var.set_string("scheme", "http");
            if (var.get_string("port") == "80") {
                var.set_string("port", "");
            }
        }
    
        ############################################################################
        ## Setup variables to be used throughout the logic
        ############################################################################
    
        var.set_string("vary", "");
        var.set_string("original_url", req.url);
        var.set_string("target_image", regsub(req.url, "^.*?/(https?://.*)", "\1"));
        var.set_string("referer", regsub(req.http.referer, "^\s*https?://([^/:]+).*", "\1"));
        var.set_string("unsupported_formats", "");
        var.set_string("new_directives", "");
        var.set_int("recompute_dpr", 0);
        var.set_int("fallback_width", 0);
    
        # Compute the directives string, ex: /f_jpg/w_120/h_200/m_cropbox
        var.set_string("directives", regsub(req.url, "^(.*?)/https?://.*", "\1"));
    
        # Add URL parameter directives
        if (req.url ~ "^.*?/https?://.*(?:\?.*\&|\?)imgeng=([^\&]+).*?") {
            var.set_string("directives",
                var.get_string("directives") + regsub(req.url, "^.*?/https?://.*(?:\?.*\&|\?)imgeng=([^\&]+).*?", "/\1/")
            );
        }
    
        var.set_int("auto", 0);
        var.set_int("free", 0);
    
        #var.set_string("debug", wurfl.get_device_id());
    
        ############################################################################
        ## Determine if this request is ImageEngine CE or BE and set token
        ############################################################################
    
        # Default to sending misses to the proper lite miss server
        var.set_string("miss_host", "lite-miss.imgeng.in");
    
        if (req.http.host ~ "^wit(-miss)?.wurfl.io$") {
            # ImageEngine *Unregistered Users* using the old wit.wurfl.io hostname
            var.set_string("type", "ce-unreg");
            var.set_int("free", 1);
    
            if (var.get_string("referer") ~ "crazy-factory") {
                var.set_string("token", "crzy");
            } else if (var.get_string("referer") ~ "gta5-mods") {
                var.set_string("token", "gta5");
            } else {
                var.set_string("token", "wit");
            }
    
            var.set_string("miss_host", var.get_string("token")+".lite-miss.imgeng.in");
    
            if (req.http.host ~ "miss") {
                set req.http.X-WIT-SYNC = "true";
                var.set_string("miss_host", req.http.host);
            }
    
        } else if (req.http.host ~ "^([^\.]+)\.(?:(staging)[\.-])?(?:(lite(?:-miss)?|miss)\.)?imgeng\.in$") {
            # Regex notes:
            #  \1: Token
            #  \2: Staging Flag: "staging" or ""
            #  \3: Subdomain:    "lite" or "lite-miss" or "miss" or ""
    
            # ImageEngine - PRODUCTION
            var.set_string("token", regsub(req.http.host, "^([^\.]+)\..*", "\1"));
            var.set_string("staging", regsub(req.http.host, "^([^\.]+)\.(?:(staging)[\.-])?(?:(lite(?:-miss)?|miss)\.)?imgeng\.in$", "\2"));
            var.set_string("subdomain", regsub(req.http.host, "^([^\.]+)\.(?:(staging)[\.-])?(?:(lite(?:-miss)?|miss)\.)?imgeng\.in$", "\3"));
    
            if (var.get_string("subdomain") == "lite" || var.get_string("subdomain") == "lite-miss") {
                var.set_string("type", "ce");
                var.set_int("free", 1);
            } else {
                var.set_string("type", "be");
                var.set_int("free", 0);
            }
    
            if (var.get_string("subdomain") ~ "miss$") {
                set req.http.X-WIT-SYNC = "true";
                var.set_string("miss_host", req.http.host);
            } else {
                if (var.get_string("staging") == "staging") {
                        if (var.get_string("subdomain") == "") {
                            var.set_string("miss_host", var.get_string("token") + ".staging-miss.imgeng.in");
                        } else {
                            var.set_string("miss_host", var.get_string("token") + ".staging-" + var.get_string("subdomain") + "-miss" + ".imgeng.in");
                        }
                } else {
                        if (var.get_string("subdomain") == "") {
                            var.set_string("miss_host", var.get_string("token") + ".miss.imgeng.in");
                        } else {
                            var.set_string("miss_host", var.get_string("token") + "." + var.get_string("subdomain") + "-miss" + ".imgeng.in");
                        }
                }
            }
    
        } else if (req.http.host ~ "^([^\.]+)\.(?:(local)[\.-])?(?:(lite(?:-miss)?|miss)\.)?imgeng\.local$") {
    
            # Regex notes:
            #  \1: Token
            #  \2: Staging Flag: "local" or ""
            #  \3: Subdomain:    "lite" or "lite-miss" or "miss" or ""
    
            # ImageEngine - PRODUCTION
            var.set_string("token", regsub(req.http.host, "^([^\.]+)\..*", "\1"));
            var.set_string("local", regsub(req.http.host, "^([^\.]+)\.(?:(local)[\.-])?(?:(lite(?:-miss)?|miss)\.)?imgeng\.local$", "\2"));
            var.set_string("subdomain", regsub(req.http.host, "^([^\.]+)\.(?:(local)[\.-])?(?:(lite(?:-miss)?|miss)\.)?imgeng\.local$", "\3"));
    
            if (var.get_string("subdomain") == "lite" || var.get_string("subdomain") == "lite-miss") {
                var.set_string("type", "ce");
                var.set_int("free", 1);
            } else {
                var.set_string("type", "be");
                var.set_int("free", 0);
            }
    
            if (var.get_string("subdomain") ~ "miss$") {
                set req.http.X-WIT-SYNC = "true";
                var.set_string("miss_host", req.http.host);
            } else {
                if (var.get_string("local") == "local") {
                        if (var.get_string("subdomain") == "") {
                            var.set_string("miss_host", var.get_string("token") + ".local-miss.imgeng.local");
                        } else {
                            var.set_string("miss_host", var.get_string("token") + ".local-" + var.get_string("subdomain") + "-miss" + ".imgeng.local");
                        }
                } else {
                        if (var.get_string("subdomain") == "") {
                            var.set_string("miss_host", var.get_string("token") + ".miss.imgeng.local");
                        } else {
                            var.set_string("miss_host", var.get_string("token") + "." + var.get_string("subdomain") + "-miss" + ".imgeng.local");
                        }
                }
            }
    
    
        } else {
            # Something else.  Either someone CNAMEd us or it's a dev running ImageEngine locally
            # Devs should use something like `local.imgeng.in`
            # This is the place to forcefully disable CNAMEing
    
            if (req.http.X-WIT-Token) {
                var.set_string("type", "be");
                var.set_int("free", 0);
                var.set_string("token", req.http.X-WIT-Token);
    
            } else {
                var.set_string("token", "");
                var.set_string("type", "ce-unreg");
                var.set_int("free", 1);
            }
    
            if (req.http.host ~ "miss") {
                set req.http.X-WIT-SYNC = "true";
                var.set_string("miss_host", req.http.host);
            }
        }
    
        if (req.http.X-WIT-SYNC != "true") {
            set req.http.X-MISS-URL = var.get_string("scheme") + "://" + var.get_string("miss_host") + var.get_string("port") + req.url;
        }
    
    
        ############################################################################
        ## Determine if this request is explicit or automatic
        ############################################################################
    
        # Start in auto mode
        var.set_int("auto", 1);
        var.set_int("passthrough", 0);
    
        if (var.get_string("directives") ~ "/a_false") {
            # Explicitly disabled auto mode
            var.set_int("auto", 0);
    
        } else if (var.get_string("directives") ~ "/pass_true") {
            # Disabled auto mode
            var.set_int("auto", 0);
            # Enable passthrough mode
            var.set_int("passthrough", 1);
    
        # CHECK req.url, shouldn't it be var.get_string("directives")
        # FIX w_auto,100 goes always to the auto 0 mode , so never used,
        # there might be a better fix
        # Width, height or crop was given, use explicit mode
        } else if (req.url ~ "/(w|h|cr)_[^a-z]") { // try to disable w_auto,100 match
            var.set_int("auto", 0);
        }
    
        ############################################################################
        ## Determine DPI Class
        ############################################################################
        # Default to the lowest DPI class
        var.set_int("dpi_class", 1);
        #var.set_int("res_width", std.integer(wurfl.get_capability("resolution_width"), 0));
        #var.set_int("res_height", std.integer(wurfl.get_capability("resolution_height"), 0));
        #var.set_int("phy_width", std.integer(wurfl.get_capability("physical_screen_width"), 0));
        #var.set_int("phy_height", std.integer(wurfl.get_capability("physical_screen_height"), 0));
    
        if (var.get_int("res_width") == 0 ||
            var.get_int("res_height") == 0 ||
            var.get_int("phy_width") == 0 ||
            var.get_int("phy_height") == 0) { 
#            || wurfl.get_device_id() ~ "generic") {
    

            # DPI is unavalable, use lowest DPI class
            var.set_int("dpi_class", 1);
        #} else if (wurfl.get_capability("is_wireless_device") != "true") {
            # This is not a mobile device, use lowest DPI class
        #    var.set_int("dpi_class", 1);
        } else {
            # Compute the actual DPI and its corresponding class
            # Note that we're using 254 and 20 instead of 25.4 and 2.0 to avoid decimal math
            var.set_int("dpi", ( (var.get_int("res_width") / var.get_int("phy_width")) + (var.get_int("res_height") / var.get_int("phy_height")) ) * 254 / 20);
    
            if (var.get_int("dpi") >= 390) {
                var.set_int("dpi_class", 4);
            } else if (var.get_int("dpi") >= 300) {
                var.set_int("dpi_class", 3);
            } else if (var.get_int("dpi") >= 230) {
                var.set_int("dpi_class", 2);
            } else {
                var.set_int("dpi_class", 1);
            }
        }
    
        # IF we have DPR we are going to recalculate dpi_class according to that value
        if (req.http.dpr) {
    
            var.set_real("dpr_real", std.real(req.http.dpr, 0.0));
    
            if (var.get_real("dpr_real") > 0.0) {
    
                if (var.get_real("dpr_real") < 1.5) {
                    var.set_int("dpi_class", 1);
                } else if (var.get_real("dpr_real") >= 1.5 && var.get_real("dpr_real") < 2.5) {
                    var.set_int("dpi_class", 2);
                } else if (var.get_real("dpr_real") >= 2.5 && var.get_real("dpr_real") < 3.5) {
                    var.set_int("dpi_class", 3);
                } else if (var.get_real("dpr_real") >= 3.5) {
                    var.set_int("dpi_class", 4);
                }
    
            }
        }
    
        ############################################################################
        ## Determine unsupported image formats
        ############################################################################
    
        # Technically WURFL can tell us if webp is supported, but since virtually all
        #  clients that support it also sent `image/webp` in the `accept` header, I
        #  think it is most safe for us to rely only on the header until we can do some
        #  analysis to see which additional clients would be served with webp if we
        #  did include the WURFL detection.
        #
        # if (req.http.accept ~ "image/webp" ||
        #     ( wurfl.get_capability("webp_lossy_support") == "true" && wurfl.get_capability("webp_lossless_support") == "true" )
        #     ) {
    
        if (req.http.accept ~ "image/webp") {
            # webp is supported, so we don't include it in the blacklist
        } else {
            var.set_string("unsupported_formats", var.get_string("unsupported_formats") + "_webp");
        }
    
        # Every JXR-compatible client we tested sends `image/jxr` and requires `image/vnd.ms-photo`
        #  to be sent back in the response header.
# || wurfl.get_capability("jpeg_xr") == "true"
        if (req.http.accept ~ "image/(vnd\.ms-photo|jxr)") {
            # JPEG XR is supported, so we don't include it in the blacklist
        } else {
            var.set_string("unsupported_formats", var.get_string("unsupported_formats") + "_jxr");
        }
    
        # We turn off  the automatic conversion of jpg to jp2 , since it produces big files
        var.set_string("unsupported_formats", var.get_string("unsupported_formats") + "_jp2");
    
        # Clients that support JPEG 2000 do not advertise this capability in my testing,
        #  so we are dependent on WURFL for this detection.
        #if (req.http.accept ~ "image/jp2" || wurfl.get_capability("jpeg_2000") == "true") {
        #    # JPEG 2000 is supported, so we don't include it in the blacklist
        #} else {
        #    var.set_string("unsupported_formats", var.get_string("unsupported_formats") + "_jp2");
        #}
    
        # NOTE: if the automatic filetype conversion needs to be disabled quickly, it
        #  can by done here like this (no auto-conversion will happen):
        #
        # var.set_string("unsupported_formats", "");
        #
        # This change can be applied by running the Ansible `Deploy` job (not `Dock`),
        #  since it will push the new code to the Varnish servers and live-reload them.
    
        ############################################################################
        ## Take different actions based on explicit or automatic or client-hints
        ############################################################################
    
        if (var.get_int("auto") == 0) {
    
            ### Explicit Mode
    
            # In explicit mode, all directives are passed to the backend server
            var.set_string("new_directives", var.get_string("directives"));
    
        } else {
    
            ### Auto Mode
    
            ############################################################################
            ## Determine fallback_width, if specified
            ############################################################################
            if (var.get_string("directives") ~ "/w_auto,\d+") {
                var.set_int("fallback_width", std.integer(regsub(var.get_string("directives"), "^.*/w_auto,(\d+)\b.*$", "\1"), 0));
                var.set_string("directives", regsuball(var.get_string("directives"), "/w_auto,\d+", ""));
            }
    
            ############################################################################
            ## Determine new image width
            ############################################################################
    
            # Get DPR and Width
            # Vary: DPR, Width
            # Send: Content-DPR: DPR
    
    
            # Validate if we have client hints
            var.set_real("ch_dpr", 0.0);
            var.set_real("ch_width", 0.0);
            var.set_real("ch_viewport_width", 0.0);
    
            if (req.http.dpr) {
                var.set_real("ch_dpr", std.real(req.http.dpr, 0.0));
            }
            if (req.http.width ~ "^\d+$") {
                var.set_real("ch_width", std.real(req.http.width, 0.0));
            }
            if (req.http.viewport-width ~ "^\d+$") {
                var.set_real("ch_viewport_width", std.real(req.http.viewport-width, 0.0));
            }
    
            if (var.get_real("ch_dpr") > 0.0 && var.get_real("ch_width") > 0.0) {
    
                # Use client hints to determine width
                var.set_string("new_width", req.http.width);
    
                # The DPR needs to be recomputed once the resultant image width is known
                # NOTE: this happens in default.vcl:vcl_deliver()
                var.set_int("recompute_dpr", 1);
    
                # Add "Width" to the Vary header
                var.set_string("vary", var.get_string("vary") + "Width, ");
    #&& wurfl.get_capability("is_wireless_device") == "true"
            } else if (var.get_real("ch_dpr") > 0.0 && var.get_real("ch_viewport_width") > 0.0) {
    
                var.set_int("ch_dpr_1000x", std.integer(regsub(regsub(var.get_real("ch_dpr"), "^(\d+)?\.(\d+)?$", "\1\2"), "^0*(\d*)$", "\1") , 1000));
                var.set_int("ch_viewport_width_1000x", std.integer(regsub(regsub(var.get_real("ch_viewport_width"), "^(\d+)?\.(\d+)?$", "\1\2"), "^0*(\d*)$", "\1") , 1000));
    
                var.set_string("new_width", regsub("" + (var.get_int("ch_viewport_width_1000x") * var.get_int("ch_dpr_1000x")), "^(\d+)(\d{6})$", "\1"));
                # NOTE: we do *not* set the Content-DPR here because we cannot know if the image is undersized
    
                # Add "Viewport-Width" and "DPR" to the Vary header
                var.set_string("vary", var.get_string("vary") + "Viewport-Width, DPR, ");
    
#            } else if (wurfl.get_capability("is_wireless_device") == "true") {
    
                # 2017-04-17 Steve Kamerman - Vilara / Voonik is noticing "pixelated images" and we've tracked it down to the usage of `max_image_width`
                # instead of resolution_width, which returns an image that is half (often less than half for iPhones) the width of the screen.  People are
                # noticing this lack of quality and it is threatening our contract, so I am switching it to resolution_width.  Note that we are already
                # resizing images to the resolution_width in the case of client-hints: std.integer(req.http.viewport-width, 0) * std.integer(req.http.dpr, 2)
    
 #               if (wurfl.get_capability("is_tablet") == "true") {
                    # For tablets we use resolution_height because they are normally used in LANDSCAPE orientation
    
                    # Since WURFL inconsistently models the orientation of tablets, we normalize it
  #                  if (std.integer(wurfl.get_capability("resolution_width"), 1280) > std.integer(wurfl.get_capability("resolution_height"), 0)) {
                        # This is modeled in landscape orientation - it's wider than it is tall
   #                     var.set_string("new_width", wurfl.get_capability("resolution_width"));
    #                } else {
                        # This is modeled in portrait orientation - it's taller than it is wide
     #                   var.set_string("new_width", wurfl.get_capability("resolution_height"));
      #              }
    
       #         } else {
                    # For everything else we use resolution_width because they are in PORTRAIT orientation
        #            var.set_string("new_width", wurfl.get_capability("resolution_width"));
         #       }
    
                # Add "User-Agent" to the Vary header
          #      var.set_string("vary", var.get_string("vary") + "User-Agent, ");
    
            } else {
    
                if (var.get_int("fallback_width") > 0) {
                    # Use the fallback_width if it was specified in /w_auto,<width>
                    var.set_string("new_width", "" + var.get_int("fallback_width"));
                } else {
                    # Non-mobile, use hard-coded maximum
                    var.set_string("new_width", "2560");
                }
    
                # Add "User-Agent" to the Vary header since WURFL was used to determine that WURFL couldn't be used :)
                var.set_string("vary", var.get_string("vary") + "User-Agent, ");
            }
    
            if (var.get_string("directives") ~ "/pc_[^/]+") {
                # Calculate the new width like this: new_width = (percent / 100) * new_width
                # Note that floating point math is tricky in VCL, so to keep things integral, we do new_width = new_width * percent / 100
                var.set_int("new_width", std.integer(regsub(var.get_string("directives"), "^.*?/pc_([^/]+).*$", "\1"), 0) * std.integer(var.get_string("new_width"), 0) / 100);
                var.set_string("new_directives", var.get_string("new_directives") + "/w_" + var.get_int("new_width"));
            } else {
                var.set_string("new_directives", var.get_string("new_directives") + "/w_" + var.get_string("new_width"));
            }
    
            # `/a_*` and `/pc_*` should never make it back to the origin server
            var.set_string("directives", regsuball(var.get_string("directives"), "/(?:a|pc)_[^/]+", ""));
    
            if (var.get_int("free") == 1) {
                # For free requests, none of the original directives are passed through directly
    
            } else {
                # Remove params that are already set in auto mode
                var.set_string("directives", regsuball(var.get_string("directives"), "/(?:w|h|m)_[^/]+", ""));
    
                # Pass through the original (sanitized) directives
                var.set_string("new_directives", var.get_string("new_directives") + var.get_string("directives"));
            }
        }
    
        ############################################################################
        ## Handle unsupported image formats
        ############################################################################
        if (var.get_string("unsupported_formats") != "") {
            # Each unsupported format is added with "_" prepended, so this might look like "_webp_bmp_gif"
            # then we prepend "/naf" to it to make "/naf_webp_bmp_gif" and add that to the directives
            var.set_string("new_directives", var.get_string("new_directives") + "/naf" + var.get_string("unsupported_formats"));
        }
    
        ############################################################################
        ## Add DPI class
        ############################################################################
        if (var.get_int("dpi_class") > 0) {
            var.set_string("new_directives", var.get_string("new_directives") + "/dpicl_" + var.get_int("dpi_class"));
        }
    
        ############################################################################
        ## Handle Save-Data client hint
        ############################################################################
        if (req.http.save-data ~ "on") {
    
            # If compression was already specified, alter it, otherwise add it to the directives
            if (var.get_string("new_directives") ~ "/cmpr_\d+") {
                var.set_string("new_directives", regsub(var.get_string("new_directives"), "/cmpr_\d+", "/cmpr_80"));
            } else {
                var.set_string("new_directives", var.get_string("new_directives") + "/cmpr_80");
            }
        }
    
        # Remove excess "/" chars that may have been added above
        var.set_string("new_directives",
            regsuball(var.get_string("new_directives"), "//+", "/")
        );
    
        if (var.get_int("passthrough") == 1) {
            var.set_string("new_directives", "/pass_true");
        }
    
        # std.syslog(0, var.get_string("new_directives"));
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <recv>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
              # synthetic workaround
      if (req.restarts > 0 && req.http.x-krux-serve-type != "stale" && req.http.x-krux-serve-type != "e_stale") {
        return (synth(503, "workaround"));
      }
    
      # default conditions
      if (!req.http.Fastly-FF) {
        if (req.http.X-Forwarded-For) {
          set req.http.Fastly-Temp-XFF = req.http.X-Forwarded-For + ", " + client.ip;
        } else {
          set req.http.Fastly-Temp-XFF = client.ip;
        }
      } else {
        set req.http.Fastly-Temp-XFF = req.http.X-Forwarded-For;
      }
    
      #REV -- moved to vcl_backend_response
      #set req.http.krux-grace = "864000s";
    
      set req.hash_ignore_busy = false;
      set req.hash_always_miss = false;
    
      # Header rewrite Rewrite /ctjs/ - needed for compression support from S3 : 5
      set req.url = regsub(req.url, "/ctjs/", "/ctjs-fastly/");
    
      # end default conditions
    
      # Request Condition: Krux CDN - ^cdn Prio: 1
      if( req.http.host ~ "^cdn" ) {
        set req.backend_hint = dircustom_vcl__test_revsw_net_F_origin_cdn_krxd_net.backend();
      }
      #end condition
    
      # Request Condition: Any UserData Service (v1 or v2) - /user_data & /userdata Prio: 2
      if( req.url ~ "^(/userdata/|/user_data/)" ) {
        if (!req.http.Fastly-FF) {
          if (req.http.X-Forwarded-For) {
            set req.http.Fastly-Temp-XFF = req.http.X-Forwarded-For + ", " + client.ip;
          } else {
            set req.http.Fastly-Temp-XFF = client.ip;
          }
        } else {
          set req.http.Fastly-Temp-XFF = req.http.X-Forwarded-For;
        }
    
        set req.http.krux-grace = "864000s";
    
        # Header rewrite Add X-Krux-Cookie-KUID Default Header - KEEP AT PRIO 1 - THIS IS THE DEFAULT, WILL BE OVERWRITTEN IF POSSIBLE!!!! : 1
        set req.http.X-Krux-Cookie-KUID = "unset";
    
        # Header rewrite Add X-Forwarded-For to X-Krux-Query-IP - APIServices user_data GeoIP uses Fastly IP otherwise : 10
        if (!req.http.X-Krux-Query-IP) {
          set req.http.X-Krux-Query-IP = req.http.X-Forwarded-For;
        }
      }
      #end condition
    
      # Request Condition: Static JS files Prio: 10
      if( req.url ~ "^(/krux.js|/kruxcontent/|/static/|/ctjs(-fastly)?/)" ) {
        # Header rewrite Remove Query String : 10
        set req.url = regsub(req.url, "\?.*$", "");
      }
      #end condition
    
      # Request Condition: Krux APISERVICES - /user_data Prio: 10
      if( req.url ~ "^/user_data" ) {
        set req.backend_hint = dircustom_vcl__test_revsw_net_APIServices_user_data.backend();
      }
      #end condition
    
      # Request Condition: S3 controltag - ^/ctjs(-fastly)?/ Prio: 10
      if( req.url ~ "^/ctjs(-fastly)?/" ) {
        set req.backend_hint = dircustom_vcl__test_revsw_net_F_Controltag_S3.backend();
        if (!req.http.Fastly-FF) {
          if (req.http.X-Forwarded-For) {
            set req.http.Fastly-Temp-XFF = req.http.X-Forwarded-For + ", " + client.ip;
          } else {
            set req.http.Fastly-Temp-XFF = client.ip;
          }
        } else {
          set req.http.Fastly-Temp-XFF = req.http.X-Forwarded-For;
        }
    
        set req.http.krux-grace = "8640000s";
        set req.http.host = "krux-config-service.s3.amazonaws.com";
    
        # RevSw -- always compress, regardless of Accept-Encoding
        set req.http.Accept-Encoding = "gzip";
      }
      #end condition
    
      # Request Condition: Krux Static - Self Hosted Files Prio: 10
      if( req.url ~ "^(/krux.js|/kruxcontent/|/static/)" ) {
        set req.backend_hint = dircustom_vcl__test_revsw_net_F_beacon_krxd_net.backend();
      }
      #end condition
    
      # Request Condition: Krux ControlTag - Version 2 & Version 3 Prio: 10
      if( req.url ~ "^(/controltagv2|/controltagv3)" ) {
        set req.backend_hint = dircustom_vcl__test_revsw_net_Redbull_Controltag.backend();
      }
      #end condition
    
      # Request Condition: KRUX apiservices - _kuid_ cookie Prio: 10
      if( req.url ~ "^(/userdata|/user_data)" && req.http.cookie ~ "_kuid_\s*=\s*[^;\s]+" ) {
        # Header rewrite Add X-Krux-Cookie-KUID Default Header via Cookie - MUST COME AFTER THE DEFAULT (HIGHER PRIORITY!!!!!) - MUST ALWAYS BE SET, DO NOT IGNORE IF SET! : 20
        set req.http.X-Krux-Cookie-KUID = regsub(req.http.cookie, ".*?_kuid_\s*=\s*([^;\s]+).*", "\1");
      }
      #end condition
    
      # Request Condition: Krux - GeoIP JSON Prio: 10
      if( req.url == "/geoip_esi" ) {
        # ResponseObject: GeoIP JSON
        return (synth(900, "Fastly Internal"));
      }
      #end condition
    
      # Request Condition: Krux - X-Krux-Compression-Disabled Prio: 10
      if( req.http.X-Krux-Compression-Disabled && req.http.X-Krux-Compression-Disabled ~ "1" ) {
        if (!req.http.Fastly-FF) {
          if (req.http.X-Forwarded-For) {
            set req.http.Fastly-Temp-XFF = req.http.X-Forwarded-For + ", " + client.ip;
          } else {
            set req.http.Fastly-Temp-XFF = client.ip;
          }
        } else {
          set req.http.Fastly-Temp-XFF = req.http.X-Forwarded-For;
        }
    
        set req.http.krux-grace = "864000s";
      }
      #end condition
    
      # Request Condition: UserData Service - /userdata (v2 implementation) Prio: 10
      if( req.url ~ "^/userdata" ) {
        set req.backend_hint = dircustom_vcl__test_revsw_net_UserData_Service_V2.backend();
      }
      #end condition
    
      ### XXX this must be included, or this gets replaced with a default vcl_recv
      ### that does NOT have fastly defaults in it.
      if (req.method != "HEAD" && req.method != "GET" && req.method != "PURGE") {
        return (pass);
      }
    
      return (hash);
      ### END boilerplate
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            unset req.http.Cookie;
    unset req.http.proxy;
    
    if (req.url == "/favicon.ico") {
        return (hash);
    }
    
    if (req.http.accept ~ "webp"){           #||   wurfl.get_capability("webp_lossy_support") == "true" || wurfl.get_capability("webp_lossless_support") == "true") {
        # webp is supported, so we don't include it in the blacklist
    } else {
        var.set_string("unsupported_formats", var.get_string("unsupported_formats") + "_webp");
    }
    
    var.set_string("new_directives", "");
    
    if (req.http.dpr && req.http.width) {
            # Use client hints to determine width
            var.set_string("new_width", req.http.width);
    
            # We'll use this to send the Content-DPR header later
            var.set_string("content_dpr", req.http.dpr);
    
            # Add "Width" to the Vary header
            var.set_string("vary", var.get_string("vary") + "Width, ");
    
    } else if (req.http.dpr && req.http.viewport-width) {
            # Use client hints to determine width
    
            if (req.http.dpr ~ "\.") {
                # Non-integral DPR Math
    
                # From "2.0"  capture ["2","0"],  return 20
                # From "1.75" capture ["1", "7"], return 17
    
                # NOTE: if std.integer() fails to parse the regsub() result, it will return 10 (which will be divided by 10 later to get a 1x multiplier)
                var.set_int("dpr", std.integer(regsub(req.http.dpr, "(\d+)?\.(\d)", "\1\2"), 10));
    
                # NOTE: the ' "" +  ' prefix is required to implicitly typecast the INT to a STRING, otherwise set_string() will fail
                var.set_string("new_width", "" + (  std.integer(req.http.viewport-width, 0) * var.get_int("dpr") / 10  ));
    
            } else {
                var.set_string("new_width", "" + (  std.integer(req.http.viewport-width, 0) * std.integer(req.http.dpr, 2)  ));
            }
    
            # We'll use this to send the Content-DPR header later
            var.set_string("content_dpr", req.http.dpr);
    
            # Add "Viewport-Width" and "DPR" to the Vary header
            var.set_string("vary", var.get_string("vary") + "Viewport-Width, DPR, ");
    
    #} else if (wurfl.get_capability("is_wireless_device") == "true") {
    
    #     if (wurfl.get_capability("is_tablet") == "true") {
                # For tablets we use max_image_height because they are normally used in LANDSCAPE orientation
                
                # Since WURFL inconsistently models the orientation of tablets, we normalize it
    #            if (std.integer(wurfl.get_capability("max_image_width"), 1280) > std.integer(wurfl.get_capability("max_image_height"), 0)) {
                    # This is modeled in landscape orientation - it's wider than it is tall
    #                var.set_string("new_width", wurfl.get_capability("max_image_width"));
    #            } else {
                    # This is modeled in portrait orientation - it's taller than it is wide
    #                var.set_string("new_width", wurfl.get_capability("max_image_height"));
    #            }
    
    #     } else {
                # For everything else we use max_image_width because they are in PORTRAIT orientation
    #            var.set_string("new_width", wurfl.get_capability("max_image_width"));
    #     }
    
            # Add "User-Agent" to the Vary header
    #      var.set_string("vary", var.get_string("vary") + "User-Agent, ");
    
     } else {
            # Non-mobile, use hard-coded maximum
            var.set_string("new_width", "2560");
    
            var.set_string("vary", var.get_string("vary") + "User-Agent, ");
     }
    
            var.set_string("new_directives", var.get_string("new_directives") + "/w_" + var.get_string("new_width"));
    
        # `/a_*` and `/pc_*` should never make it back to the origin server
     var.set_string("directives", regsuball(var.get_string("directives"), "/(?:a|pc)_[^/]+", ""));
    
            # Remove params that are already set in auto mode
     var.set_string("directives", regsuball(var.get_string("directives"), "/(?:w|h|m)_[^/]+", ""));
    
     var.set_string("new_directives", var.get_string("new_directives") + var.get_string("directives"));
    
    # std.syslog(0, var.get_string("new_directives"));
    }
    # END SITE 'wurfl-test.revsw.net'
    call generate_user_agent_based_key;
    # Parse Cookie header into individual cookies.
    cookie.parse(req.http.Cookie);
    # Save the ROUTEID cookie; we need it for CO load balancing
    revvar.set_string_allow_null(true, 10, cookie.get("ROUTEID"));
    # Domain-specific configuration
    # BEGIN SITE 'app-resume-example.herokuapp.com'
    if (req.http.host == "app-resume-example.herokuapp.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_app__resume__example_herokuapp_com;
    }
    else {
        set req.backend_hint = behttps_app__resume__example_herokuapp_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_app_resume_example_herokuapp_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_app_resume_example_herokuapp_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'app-resume-example.herokuapp.com'
    # BEGIN SITE 'asher-reseller-workflow-test-child1.com'
    elsif (req.http.host == "asher-reseller-workflow-test-child1.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_asher__reseller__workflow__test__child1_com;
    }
    else {
        set req.backend_hint = behttps_asher__reseller__workflow__test__child1_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_asher_reseller_workflow_test_child1_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_asher_reseller_workflow_test_child1_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'asher-reseller-workflow-test-child1.com'
    # BEGIN SITE 'asher-reseller-workflow-test-main.com'
    elsif (req.http.host == "asher-reseller-workflow-test-main.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_asher__reseller__workflow__test__main_com;
    }
    else {
        set req.backend_hint = behttps_asher__reseller__workflow__test__main_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_asher_reseller_workflow_test_main_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_asher_reseller_workflow_test_main_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'asher-reseller-workflow-test-main.com'
    # BEGIN SITE 'asher-test1.com'
    elsif (req.http.host == "asher-test1.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_asher__test1_com;
    }
    else {
        set req.backend_hint = behttps_asher__test1_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_asher_test1_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_asher_test1_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'asher-test1.com'
    # BEGIN SITE 'asher-test2.com'
    elsif (req.http.host == "asher-test2.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_asher__test2_com;
    }
    else {
        set req.backend_hint = behttps_asher__test2_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_asher_test2_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_asher_test2_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'asher-test2.com'
    # BEGIN SITE 'asher.test'
    elsif (req.http.host == "asher.test") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_asher_test;
    }
    else {
        set req.backend_hint = behttps_asher_test;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_asher_test) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_asher_test)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|movuuuuuuuuuu9999999uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu)(\?.*)?$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'asher.test'
    # BEGIN SITE 'avphuket.com'
    elsif (req.http.host == "avphuket.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_avphuket_com;
    }
    else {
        set req.backend_hint = behttps_avphuket_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_avphuket_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_avphuket_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {
          revvar.set_duration(true, 17, 15s);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|mov)(\?.*)?$") {
          revvar.set_duration(true, 17, 15s);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'avphuket.com'
    # BEGIN SITE 'bp_group_test.com'
    elsif (req.http.host == "bp_group_test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_bp___group___test_com;
    }
    else {
        set req.backend_hint = behttps_bp___group___test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_bp_group_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_bp_group_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'bp_group_test.com'
    # BEGIN SITE 'cosmosdb-test.revsw.net'
    elsif (req.http.host == "cosmosdb-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_cosmosdb__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_cosmosdb__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_cosmosdb_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_cosmosdb_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1515990680470.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1515990680470.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1515990680470_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1515990680470_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1515990680470_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1515990680470_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1515990680470.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516072686999.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516072686999.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516072686999_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516072686999_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516072686999_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516072686999_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516072686999.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516072697851.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516072697851.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516072697851_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516072697851_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516072697851_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516072697851_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516072697851.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516088834598.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516088834598.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516088834598_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516088834598_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516088834598_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516088834598_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516088834598.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516088911149.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516088911149.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516088911149_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516088911149_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516088911149_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516088911149_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516088911149.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516092001276.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516092001276.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516092001276_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516092001276_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516092001276_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516092001276_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516092001276.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516174907031.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516174907031.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516174907031_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516174907031_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516174907031_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516174907031_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516174907031.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516178482390.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516178482390.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516178482390_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516178482390_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516178482390_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516178482390_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516178482390.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516181083580.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516181083580.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516181083580_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516181083580_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516181083580_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516181083580_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516181083580.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516243470928__bp__offline__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516243470928__bp__offline__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516243470928_bp_offline_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516243470928_bp_offline_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516249811194__bp__offline__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516249811194__bp__offline__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516249811194_bp_offline_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516249811194_bp_offline_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516250097413__bp__offline__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516250097413__bp__offline__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516250097413_bp_offline_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516250097413_bp_offline_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1516255338611__bp__offline__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1516255338611__bp__offline__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1516255338611_bp_offline_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1516255338611_bp_offline_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1518511359685__bp__offline__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1518511359685__bp__offline__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1518511359685_bp_offline_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1518511359685_bp_offline_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1518511789831__bp__offline__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1518511789831__bp__offline__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1518511789831_bp_offline_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1518511789831_bp_offline_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name__1518583170485__bp__offline__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name__1518583170485__bp__offline__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name_1518583170485_bp_offline_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name_1518583170485_bp_offline_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name2-1518186832769.revsw.net'
    elsif (req.http.host == "delete-me-cds-qa-name2-1518186832769.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__me__cds__qa__name2__1518186832769_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__me__cds__qa__name2__1518186832769_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_me_cds_qa_name2_1518186832769_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_me_cds_qa_name2_1518186832769_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-me-cds-qa-name2-1518186832769.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-bot-protection-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-bot-protection-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__bot__protection__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__bot__protection__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_bot_protection_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_bot_protection_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-bot-protection-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-bot-protection-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-bot-protection-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__bot__protection__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__bot__protection__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_bot_protection_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_bot_protection_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-bot-protection-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-cookies-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__cookies__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__cookies__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_cookies_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_cookies_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-cookies-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__cookies__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__cookies__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_cookies_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_cookies_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, false);
          revvar.set_bool(true, 2, false);
          # Ignore all cookies EXCEPT these.
          revvar.set_bool(true, 5, false);
          revvar.unset(true, 6);
          revvar.set_string_literal(true, 7, "k1");
          # This will be matched in vcl_backend_response when removing Set-Cookie headers.
          # We want to remove all Set-Cookie instances that match a name EXCEPT these.
          revvar.set_string_literal(true, 9, "^(?!(k1)=)");
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-3.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-cookies-step-3.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__cookies__step__3_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__cookies__step__3_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_cookies_step_3_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_cookies_step_3_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, false);
          revvar.set_bool(true, 2, false);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-4.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-cookies-step-4.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__cookies__step__4_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__cookies__step__4_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_cookies_step_4_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_cookies_step_4_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, false);
          revvar.set_bool(true, 2, false);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-4.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-5.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-cookies-step-5.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__cookies__step__5_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__cookies__step__5_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_cookies_step_5_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_cookies_step_5_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, false);
          # Ignore all cookies EXCEPT these.
          revvar.set_bool(true, 5, false);
          revvar.unset(true, 6);
          revvar.set_string_literal(true, 7, "k1");
          # This will be matched in vcl_backend_response when removing Set-Cookie headers.
          # We want to remove all Set-Cookie instances that match a name EXCEPT these.
          revvar.set_string_literal(true, 9, "^(?!(k1)=)");
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-5.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-options-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__options__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__options__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_options_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_options_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-options-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__options__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__options__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_options_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_options_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-3.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-options-step-3.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__options__step__3_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__options__step__3_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_options_step_3_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_options_step_3_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-4.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-options-step-4.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__options__step__4_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__options__step__4_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_options_step_4_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_options_step_4_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-4.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-5.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-options-step-5.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__options__step__5_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__options__step__5_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_options_step_5_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_options_step_5_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-5.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-purge-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cache-purge-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cache__purge__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cache__purge__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cache_purge_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cache_purge_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cache-purge-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__cdn__overlay__urls__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__cdn__overlay__urls__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_cdn_overlay_urls_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_cdn_overlay_urls_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(mp4|webp|js|css|woff)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(dat|cgi)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(png|css)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(jpg|jpeg|gif)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-decompression-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-enable-decompression-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__enable__decompression__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__enable__decompression__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_enable_decompression_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_enable_decompression_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-enable-decompression-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-decompression-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-enable-decompression-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__enable__decompression__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__enable__decompression__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_enable_decompression_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_enable_decompression_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-enable-decompression-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-enable-rum-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__enable__rum__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__enable__rum__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_enable_rum_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_enable_rum_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-enable-rum-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-enable-rum-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__enable__rum__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__enable__rum__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_enable_rum_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_enable_rum_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-enable-rum-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-3.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-enable-rum-step-3.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__enable__rum__step__3_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__enable__rum__step__3_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_enable_rum_step_3_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_enable_rum_step_3_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-enable-rum-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-freshly-domain-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-freshly-domain-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__freshly__domain__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__freshly__domain__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_freshly_domain_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_freshly_domain_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-freshly-domain-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-freshly-domain-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-freshly-domain-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__freshly__domain__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__freshly__domain__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_freshly_domain_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_freshly_domain_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-freshly-domain-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-locations-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__locations__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__locations__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_locations_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_locations_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-locations-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-locations-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__locations__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__locations__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_locations_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_locations_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-locations-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-3.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-locations-step-3.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__locations__step__3_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__locations__step__3_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_locations_step_3_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_locations_step_3_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-locations-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-4.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-locations-step-4.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__locations__step__4_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__locations__step__4_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_locations_step_4_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_locations_step_4_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-locations-step-4.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-5.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-locations-step-5.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__locations__step__5_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__locations__step__5_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_locations_step_5_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_locations_step_5_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-locations-step-5.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-6.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-locations-step-6.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__locations__step__6_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__locations__step__6_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_locations_step_6_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_locations_step_6_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-locations-step-6.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-ssl-checker-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__ssl__checker__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__ssl__checker__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_ssl_checker_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_ssl_checker_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-ssl-checker-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-ssl-checker-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__ssl__checker__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__ssl__checker__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_ssl_checker_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_ssl_checker_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-ssl-checker-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-3.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-ssl-checker-step-3.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__ssl__checker__step__3_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__ssl__checker__step__3_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_ssl_checker_step_3_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_ssl_checker_step_3_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-ssl-checker-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-wallarm-step-1.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-wallarm-step-1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__wallarm__step__1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__wallarm__step__1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_wallarm_step_1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_wallarm_step_1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-wallarm-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-wallarm-step-2.revsw.net'
    elsif (req.http.host == "delete-test-api-qa-name-wallarm-step-2.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test__api__qa__name__wallarm__step__2_revsw_net;
    }
    else {
        set req.backend_hint = behttps_delete__test__api__qa__name__wallarm__step__2_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test_api_qa_name_wallarm_step_2_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test_api_qa_name_wallarm_step_2_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test-api-qa-name-wallarm-step-2.revsw.net'
    # BEGIN SITE 'delete-test1.com'
    elsif (req.http.host == "delete-test1.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_delete__test1_com;
    }
    else {
        set req.backend_hint = behttps_delete__test1_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_delete_test1_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_delete_test1_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'delete-test1.com'
    # BEGIN SITE 'dell.com'
    elsif (req.http.host == "dell.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_dell_com;
    }
    else {
        set req.backend_hint = behttps_dell_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_dell_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_dell_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|mov)(\?.*)?$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'dell.com'
    # BEGIN SITE 'domain-sort-2-portal-ui-test.com'
    elsif (req.http.host == "domain-sort-2-portal-ui-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_domain__sort__2__portal__ui__test_com;
    }
    else {
        set req.backend_hint = behttps_domain__sort__2__portal__ui__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_domain_sort_2_portal_ui_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_domain_sort_2_portal_ui_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'domain-sort-2-portal-ui-test.com'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_gerzhan_ru;
    }
    else {
        set req.backend_hint = behttps_gerzhan_ru;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_gerzhan_ru) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_gerzhan_ru)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {
          set req.http.x-ie-origin = "piwik.gerzhan.ru";
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_images1_voonik_com;
    }
    else {
        set req.backend_hint = behttps_images1_voonik_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_images1_voonik_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_images1_voonik_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {
          set req.http.x-ie-origin = "images11.voonik.com.s3-ap-southeast-1.amazonaws.com";
          set req.http.werwer = "werwerwer";
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'lua-test.com'
    elsif (req.http.host == "lua-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_lua__test_com;
    }
    else {
        set req.backend_hint = behttps_lua__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_lua_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_lua_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'lua-test.com'
    # BEGIN SITE 'mbeans.com'
    elsif (req.http.host == "mbeans.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_mbeans_com;
    }
    else {
        set req.backend_hint = behttps_mbeans_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_mbeans_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_mbeans_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {
          set req.http.Rev-Test-Request = "Rev-Value-Request";
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|mov)(\?.*)?$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'mbeans.com'
    # BEGIN SITE 'monitor.revsw.net'
    elsif (req.http.host == "monitor.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_monitor_revsw_net;
    }
    else {
        set req.backend_hint = behttps_monitor_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_monitor_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_monitor_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'monitor.revsw.net'
    # BEGIN SITE 'mozilla.com'
    elsif (req.http.host == "mozilla.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_mozilla_com;
    }
    else {
        set req.backend_hint = behttps_mozilla_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_mozilla_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_mozilla_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'mozilla.com'
    # BEGIN SITE 'new-test-domain2.com'
    elsif (req.http.host == "new-test-domain2.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_new__test__domain2_com;
    }
    else {
        set req.backend_hint = behttps_new__test__domain2_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_new_test_domain2_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_new_test_domain2_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'new-test-domain2.com'
    # BEGIN SITE 'new-test-domain3.com'
    elsif (req.http.host == "new-test-domain3.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_new__test__domain3_com;
    }
    else {
        set req.backend_hint = behttps_new__test__domain3_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_new_test_domain3_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_new_test_domain3_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'new-test-domain3.com'
    # BEGIN SITE 'new-test-domain.com'
    elsif (req.http.host == "new-test-domain.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_new__test__domain_com;
    }
    else {
        set req.backend_hint = behttps_new__test__domain_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_new_test_domain_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_new_test_domain_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'new-test-domain.com'
    # BEGIN SITE 'portal-qa-domain.revsw.net'
    elsif (req.http.host == "portal-qa-domain.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_portal__qa__domain_revsw_net;
    }
    else {
        set req.backend_hint = behttps_portal__qa__domain_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_portal_qa_domain_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_portal_qa_domain_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'portal-qa-domain.revsw.net'
    # BEGIN SITE 'portal-qa-traffic-alerts.revsw.net'
    elsif (req.http.host == "portal-qa-traffic-alerts.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_portal__qa__traffic__alerts_revsw_net;
    }
    else {
        set req.backend_hint = behttps_portal__qa__traffic__alerts_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_portal_qa_traffic_alerts_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_portal_qa_traffic_alerts_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'portal-qa-traffic-alerts.revsw.net'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__admin__10__portal__ui__test_com;
    }
    else {
        set req.backend_hint = behttps_qa__admin__10__portal__ui__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_admin_10_portal_ui_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_admin_10_portal_ui_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'qa-api-test-proxy-bp-varnish-cheader.revsw.net'
    elsif (req.http.host == "qa-api-test-proxy-bp-varnish-cheader.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__api__test__proxy__bp__varnish__cheader_revsw_net;
    }
    else {
        set req.backend_hint = behttps_qa__api__test__proxy__bp__varnish__cheader_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_api_test_proxy_bp_varnish_cheader_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_api_test_proxy_bp_varnish_cheader_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/test_generic_css.css") {
          set req.http.ADD_UNDERLINE_HEADER_DONE_WITH_SUCCESS_origin_css = "ADD_UNDERLINE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_css";
          set req.http.ADD-HEADER-DONE-WITH-SUCCESS-origin-css = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_origin_css";
          set req.http.REPLACE-HEADER-DONE-WITH-SUCCESS-origin-css = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_css";
          unset req.http.X-Test-Header-Remove;
          revvar.set_duration(true, 17, 8s);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/test_generic_txt.txt") {
          set req.http.ADD_UNDERLINE_HEADER_DONE_WITH_SUCCESS_origin_text = "ADD_UNDERLINE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_text";
          set req.http.ADD-HEADER-DONE-WITH-SUCCESS-origin-text = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_origin_text";
          set req.http.REPLACE-HEADER-DONE-WITH-SUCCESS-origin-text = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_text";
          unset req.http.X-Test-Header-Remove;
          revvar.set_duration(true, 17, 8s);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/test_generic_swf.swf") {
          set req.http.ADD_UNDERLINE_HEADER_DONE_WITH_SUCCESS_origin_swf = "ADD_UNDERLINE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_swf";
          set req.http.ADD-HEADER-DONE-WITH-SUCCESS-origin-swf = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_origin_swf";
          set req.http.REPLACE-HEADER-DONE-WITH-SUCCESS-origin-swf = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_swf";
          unset req.http.add-header-bg-REMOVE-HEADER-DONE-WITH-SUCCESS-origin-swf;
          revvar.set_duration(true, 17, 8s);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/test_generic_js.js") {
          set req.http.ADD_UNDERLINE_HEADER_DONE_WITH_SUCCESS_origin_js = "ADD_UNDERLINE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_js";
          set req.http.ADD-HEADER-DONE-WITH-SUCCESS-origin-js = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_origin_js";
          set req.http.REPLACE-HEADER-DONE-WITH-SUCCESS-origin-js = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_js";
          unset req.http.add-header-bg-REMOVE-HEADER-DONE-WITH-SUCCESS-origin-js;
          revvar.set_duration(true, 17, 8s);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/test_generic_html.html") {
          set req.http.ADD_UNDERLINE_HEADER_DONE_WITH_SUCCESS_origin_html = "ADD_UNDERLINE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_html";
          set req.http.ADD-HEADER-DONE-WITH-SUCCESS-origin-html = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_origin_html";
          set req.http.REPLACE-HEADER-DONE-WITH-SUCCESS-origin-html = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_html";
          unset req.http.add-header-bg-REMOVE-HEADER-DONE-WITH-SUCCESS-origin-html;
          revvar.set_duration(true, 17, 8s);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/test_generic_jpg.jpg") {
          set req.http.ADD_UNDERLINE_HEADER_DONE_WITH_SUCCESS_origin_jpg = "ADD_UNDERLINE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_jpg";
          set req.http.ADD-HEADER-DONE-WITH-SUCCESS-origin-jpg = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_origin_jpg";
          set req.http.REPLACE-HEADER-DONE-WITH-SUCCESS-origin-jpg = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_jpg";
          unset req.http.add-header-bg-REMOVE-HEADER-DONE-WITH-SUCCESS-origin-jpg;
          revvar.set_duration(true, 17, 8s);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/cgi-bin/envtest.cgi") {
          set req.http._THIS_IS_A_BUG_FAIL______ADD_UNDERLINE_HEADER_DONE_WITH_SUCCESS_origin_cgi = "ADD_UNDERLINE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_cgi";
          set req.http.ADD-HEADER-DONE-WITH-SUCCESS-origin-cgi = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_origin_cgi";
          set req.http.REPLACE-HEADER-DONE-WITH-SUCCESS-origin-cgi = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_origin_cgi";
          unset req.http.User-Agent;
          revvar.set_duration(true, 17, 8s);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-api-test-proxy-bp-varnish-cheader.revsw.net'
    # BEGIN SITE 'qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net'
    elsif (req.http.host == "qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__api__test__proxy__bp__varnish__ttl__grace_revsw_net;
    }
    else {
        set req.backend_hint = behttps_qa__api__test__proxy__bp__varnish__ttl__grace_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_api_test_proxy_bp_varnish_ttl_grace_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_api_test_proxy_bp_varnish_ttl_grace_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/fictive_resource.html") {
          set req.http.ADD-TEST-HEADER-ORIGIN = "ADD-TEST-HEADER-VALUE-ORIGIN";
          revvar.set_duration(true, 17, 15s);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "/fictive_resource_for_grace.html") {
          set req.http.ADD-TEST-HEADER-ORIGIN = "ADD-TEST-HEADER-VALUE-ORIGIN";
          revvar.set_duration(true, 17, 23s);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net'
    # BEGIN SITE 'qa-api-test-proxy-options-command1.revsw.net'
    elsif (req.http.host == "qa-api-test-proxy-options-command1.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__api__test__proxy__options__command1_revsw_net;
    }
    else {
        set req.backend_hint = behttps_qa__api__test__proxy__options__command1_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_api_test_proxy_options_command1_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_api_test_proxy_options_command1_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-api-test-proxy-options-command1.revsw.net'
    # BEGIN SITE 'qa-cds-purge-test.revsw.net'
    elsif (req.http.host == "qa-cds-purge-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__cds__purge__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_qa__cds__purge__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_cds_purge_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_cds_purge_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-cds-purge-test.revsw.net'
    # BEGIN SITE 'qa-domain-group.revsw.net'
    elsif (req.http.host == "qa-domain-group.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__domain__group_revsw_net;
    }
    else {
        set req.backend_hint = behttps_qa__domain__group_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_domain_group_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_domain_group_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-domain-group.revsw.net'
    # BEGIN SITE 'qa-reseller-10-portal-ui-test.com'
    elsif (req.http.host == "qa-reseller-10-portal-ui-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__reseller__10__portal__ui__test_com;
    }
    else {
        set req.backend_hint = behttps_qa__reseller__10__portal__ui__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_reseller_10_portal_ui_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_reseller_10_portal_ui_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-reseller-10-portal-ui-test.com'
    # BEGIN SITE 'qa-rev-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-rev-admin-10-portal-ui-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__rev__admin__10__portal__ui__test_com;
    }
    else {
        set req.backend_hint = behttps_qa__rev__admin__10__portal__ui__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_rev_admin_10_portal_ui_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_rev_admin_10_portal_ui_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-rev-admin-10-portal-ui-test.com'
    # BEGIN SITE 'qa-test-company-nuubit.dell.com'
    elsif (req.http.host == "qa-test-company-nuubit.dell.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_qa__test__company__nuubit_dell_com;
    }
    else {
        set req.backend_hint = behttps_qa__test__company__nuubit_dell_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_qa_test_company_nuubit_dell_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_qa_test_company_nuubit_dell_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'qa-test-company-nuubit.dell.com'
    # BEGIN SITE 'quic-test.revsw.net'
    elsif (req.http.host == "quic-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_quic__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_quic__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_quic_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_quic_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {
          set req.http.X-Add = "Add";
          unset req.http.X-Delete;
          set req.http.X-Replace = "Replace";
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'quic-test.revsw.net'
    # BEGIN SITE 'sometest3.com'
    elsif (req.http.host == "sometest3.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_sometest3_com;
    }
    else {
        set req.backend_hint = behttps_sometest3_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_sometest3_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_sometest3_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'sometest3.com'
    # BEGIN SITE 'ssltestdomain-1517213014418-portal-ui-test.com'
    elsif (req.http.host == "ssltestdomain-1517213014418-portal-ui-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_ssltestdomain__1517213014418__portal__ui__test_com;
    }
    else {
        set req.backend_hint = behttps_ssltestdomain__1517213014418__portal__ui__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_ssltestdomain_1517213014418_portal_ui_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_ssltestdomain_1517213014418_portal_ui_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'ssltestdomain-1517213014418-portal-ui-test.com'
    # BEGIN SITE 'ssltestdomain-1517213297035-portal-ui-test.com'
    elsif (req.http.host == "ssltestdomain-1517213297035-portal-ui-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_ssltestdomain__1517213297035__portal__ui__test_com;
    }
    else {
        set req.backend_hint = behttps_ssltestdomain__1517213297035__portal__ui__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_ssltestdomain_1517213297035_portal_ui_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_ssltestdomain_1517213297035_portal_ui_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'ssltestdomain-1517213297035-portal-ui-test.com'
    # BEGIN SITE 'test-access-control2.revsw.com'
    elsif (req.http.host == "test-access-control2.revsw.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__access__control2_revsw_com;
    }
    else {
        set req.backend_hint = behttps_test__access__control2_revsw_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_access_control2_revsw_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_access_control2_revsw_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-access-control2.revsw.com'
    # BEGIN SITE 'test-access-control.revsw.com'
    elsif (req.http.host == "test-access-control.revsw.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__access__control_revsw_com;
    }
    else {
        set req.backend_hint = behttps_test__access__control_revsw_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_access_control_revsw_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_access_control_revsw_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-access-control.revsw.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__domain__1517213565194__portal__ui__test_com;
    }
    else {
        set req.backend_hint = behttps_test__domain__1517213565194__portal__ui__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_domain_1517213565194_portal_ui_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_domain_1517213565194_portal_ui_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {
          set req.http.x-ie-origin = "test-domain-portal-ui-test.origin-host-header.com";
          set req.http.testHeader = "testValue";
          revvar.set_duration(true, 17, 9s);
          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
          # Ignore all query string parameters EXCEPT these.
          revvar.set_string_literal(true, 12, "test");
          revvar.unset(true, 13);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'test-domain-aliases.revsw.net'
    elsif (req.http.host == "test-domain-aliases.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__domain__aliases_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__domain__aliases_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_domain_aliases_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_domain_aliases_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-domain-aliases.revsw.net'
    # BEGIN SITE 'test-lua2.com'
    elsif (req.http.host == "test-lua2.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__lua2_com;
    }
    else {
        set req.backend_hint = behttps_test__lua2_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_lua2_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_lua2_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-lua2.com'
    # BEGIN SITE 'test-proxy-acl-deny-except.revsw.net'
    elsif (req.http.host == "test-proxy-acl-deny-except.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__proxy__acl__deny__except_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__proxy__acl__deny__except_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_proxy_acl_deny_except_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_proxy_acl_deny_except_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-proxy-acl-deny-except.revsw.net'
    # BEGIN SITE 'test-proxy-cache-config-02.revsw.net'
    elsif (req.http.host == "test-proxy-cache-config-02.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__proxy__cache__config__02_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__proxy__cache__config__02_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_proxy_cache_config_02_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_proxy_cache_config_02_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(dat)(\?.*)?$") {
          revvar.set_duration(true, 17, 31337s);
          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-proxy-cache-config-02.revsw.net'
    # BEGIN SITE 'test-proxy-cache-config.revsw.net'
    elsif (req.http.host == "test-proxy-cache-config.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__proxy__cache__config_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__proxy__cache__config_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_proxy_cache_config_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_proxy_cache_config_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(mp4|webp|js|css|woff)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(dat|cgi)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(png|css)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(jpg|jpeg|gif)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-proxy-cache-config.revsw.net'
    # BEGIN SITE 'test-proxy-headers.revsw.net'
    elsif (req.http.host == "test-proxy-headers.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__proxy__headers_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__proxy__headers_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_proxy_headers_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_proxy_headers_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-proxy-headers.revsw.net'
    # BEGIN SITE 'test-proxy-lua-locations.revsw.net'
    elsif (req.http.host == "test-proxy-lua-locations.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__proxy__lua__locations_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__proxy__lua__locations_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_proxy_lua_locations_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_proxy_lua_locations_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-proxy-lua-locations.revsw.net'
    # BEGIN SITE 'test-proxy-rma-config.revsw.net'
    elsif (req.http.host == "test-proxy-rma-config.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__proxy__rma__config_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__proxy__rma__config_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_proxy_rma_config_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_proxy_rma_config_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(mp4|webp|js|css|woff)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(dat|cgi)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(png|css)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(jpg|jpeg|gif)(\?.*)?$") {

          # Should we remove ignored cookies from request/response ?
          revvar.set_bool(true, 1, true);
          revvar.set_bool(true, 2, true);
          # Ignore ALL cookies.
          revvar.set_bool(true, 5, true);
          revvar.unset(true, 6);
          revvar.unset(true, 7);
          revvar.unset(true, 9);
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-proxy-rma-config.revsw.net'
    # BEGIN SITE 'test-proxy-wildcard-domain.revsw.net'
    elsif (req.http.host == "test-proxy-wildcard-domain.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__proxy__wildcard__domain_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__proxy__wildcard__domain_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_proxy_wildcard_domain_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_proxy_wildcard_domain_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-proxy-wildcard-domain.revsw.net'
    # BEGIN SITE 'test-qa-quic-protocol.revsw.net'
    elsif (req.http.host == "test-qa-quic-protocol.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__qa__quic__protocol_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__qa__quic__protocol_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_qa_quic_protocol_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_qa_quic_protocol_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-qa-quic-protocol.revsw.net'
    # BEGIN SITE 'test-rewrite-wurfl.revsw.net'
    elsif (req.http.host == "test-rewrite-wurfl.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__rewrite__wurfl_revsw_net;
    }
    else {
        set req.backend_hint = behttps_test__rewrite__wurfl_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_rewrite_wurfl_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_rewrite_wurfl_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-rewrite-wurfl.revsw.net'
    # BEGIN SITE 'test-victor-1.com'
    elsif (req.http.host == "test-victor-1.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__victor__1_com;
    }
    else {
        set req.backend_hint = behttps_test__victor__1_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_victor_1_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_victor_1_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-victor-1.com'
    # BEGIN SITE 'test-victor-2.com'
    elsif (req.http.host == "test-victor-2.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test__victor__2_com;
    }
    else {
        set req.backend_hint = behttps_test__victor__2_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_victor_2_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_victor_2_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test-victor-2.com'
    # BEGIN SITE 'test.asher.reseller2.com'
    elsif (req.http.host == "test.asher.reseller2.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test_asher_reseller2_com;
    }
    else {
        set req.backend_hint = behttps_test_asher_reseller2_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_asher_reseller2_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_asher_reseller2_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test.asher.reseller2.com'
    # BEGIN SITE 'test_origin_server_location_id.dell.com'
    elsif (req.http.host == "test_origin_server_location_id.dell.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_test___origin___server___location___id_dell_com;
    }
    else {
        set req.backend_hint = behttps_test___origin___server___location___id_dell_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_test_origin_server_location_id_dell_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_test_origin_server_location_id_dell_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'test_origin_server_location_id.dell.com'
    # BEGIN SITE 'testdomain-reseller3.com'
    elsif (req.http.host == "testdomain-reseller3.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_testdomain__reseller3_com;
    }
    else {
        set req.backend_hint = behttps_testdomain__reseller3_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_testdomain_reseller3_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_testdomain_reseller3_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'testdomain-reseller3.com'
    # BEGIN SITE 'testdomain1-deleteme.com'
    elsif (req.http.host == "testdomain1-deleteme.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_testdomain1__deleteme_com;
    }
    else {
        set req.backend_hint = behttps_testdomain1__deleteme_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_testdomain1_deleteme_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_testdomain1_deleteme_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'testdomain1-deleteme.com'
    # BEGIN SITE 'testdomain2-deleteme.com'
    elsif (req.http.host == "testdomain2-deleteme.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_testdomain2__deleteme_com;
    }
    else {
        set req.backend_hint = behttps_testdomain2__deleteme_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_testdomain2_deleteme_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_testdomain2_deleteme_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'testdomain2-deleteme.com'
    # BEGIN SITE 'testforqa-asher.com'
    elsif (req.http.host == "testforqa-asher.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_testforqa__asher_com;
    }
    else {
        set req.backend_hint = behttps_testforqa__asher_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_testforqa_asher_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_testforqa_asher_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'testforqa-asher.com'
    # BEGIN SITE 'testforqa-reseller.com'
    elsif (req.http.host == "testforqa-reseller.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_testforqa__reseller_com;
    }
    else {
        set req.backend_hint = behttps_testforqa__reseller_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_testforqa_reseller_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_testforqa_reseller_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'testforqa-reseller.com'
    # BEGIN SITE 'testforqa-victor6.com'
    elsif (req.http.host == "testforqa-victor6.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_testforqa__victor6_com;
    }
    else {
        set req.backend_hint = behttps_testforqa__victor6_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_testforqa_victor6_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_testforqa_victor6_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'testforqa-victor6.com'
    # BEGIN SITE 'testsub2.com'
    elsif (req.http.host == "testsub2.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_testsub2_com;
    }
    else {
        set req.backend_hint = behttps_testsub2_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_testsub2_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_testsub2_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'testsub2.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_vcl__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_vcl__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_vcl_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_vcl_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'waf-monitor.revsw.net'
    elsif (req.http.host == "waf-monitor.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_waf__monitor_revsw_net;
    }
    else {
        set req.backend_hint = behttps_waf__monitor_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_waf_monitor_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_waf_monitor_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'waf-monitor.revsw.net'
    # BEGIN SITE 'waf-test.revsw.net.revqa.net'
    elsif (req.http.host == "waf-test.revsw.net.revqa.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_waf__test_revsw_net_revqa_net;
    }
    else {
        set req.backend_hint = behttps_waf__test_revsw_net_revqa_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_waf_test_revsw_net_revqa_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_waf_test_revsw_net_revqa_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'waf-test.revsw.net.revqa.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_wurfl__test_revsw_net;
    }
    else {
        set req.backend_hint = behttps_wurfl__test_revsw_net;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_wurfl_test_revsw_net) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_wurfl_test_revsw_net)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|mov)(\?.*)?$") {
          set req.http.x-ie-origin = "reva.imgeng.in";
    }
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {
          set req.http.x-ie-origin = "reva.imgeng.in";
    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'wurfl-test.revsw.net'
    # BEGIN SITE 'www.google-test.com'
    elsif (req.http.host == "www.google-test.com") {
    
    if (std.port(server.ip) == 8080) {
        set req.backend_hint = behttp_www_google__test_com;
    }
    else {
        set req.backend_hint = behttps_www_google__test_com;
    }
    # Adapt the default VCL logic: allow caching with cookies, don't add X-Forwarded-For.
    if (req.method != "GET" &&
    req.method != "HEAD" &&
    req.method != "PUT" &&
    req.method != "TRACE" &&
    req.method != "OPTIONS" &&
    req.method != "DELETE") {
        # Non-RFC2616 or CONNECT which is weird.
        # Also, POST times out when doing large uploads - see https://www.varnish-cache.org/trac/ticket/849
        return (pipe);
    }
    if (req.method != "GET" && req.method != "HEAD") {
        # We only deal with GET and HEAD by default
        return (pass);
    }
    if (req.http.Authorization /*|| req.http.Cookie*/) {
        # Not cacheable by default
        return (pass);
    }
    # Block 3d: Verify the ACL for an incoming purge request and handle it.
    if (req.method == "PURGE") {
        if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_www_google_test_com) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_www_google_test_com)) {
            return (synth(405, "Not allowed."));
        }
        return (purge);
    }
    call start_cookies_recv;
    #################### Cookies and query string plus per-domain rules hash handling ####################
        
      # BEGIN: (BP-344) Check for bypass cookies
      # END: (BP-344) Check for bypass cookies
      if (req.url ~ "^.+$") {

    }
    ################## End cookies and query string plus per-domain rules hash handling ##################
    call end_cookies_recv;
    }
    # END SITE 'www.google-test.com'
    # Add in vcl_recv support for *.revsdk.net
    # a problem will appear in case no domains are defined
    elsif (req.http.host ~ "(?i)\.revsdk\.net$") {
        if (std.port(server.ip) == 8080) {
            set req.backend_hint = behttp_all_revsdk_net;
        } else {
            set req.backend_hint = behttps_all_revsdk_net;
        }
        if (req.method == "PURGE") {
            if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_all_revsdk_net) ||
                (std.port(server.ip) == 8443 && client.ip !~ purgehttps_all_revsdk_net)) {
                  return (synth(405, "Not allowed."));
            }
            return (purge);
        }
        if (req.method != "GET" && req.method != "HEAD") {
            # We only deal with GET and HEAD by default
            return (pass);
        }
    }
    # Add in vcl_recv support for *.revsw.net
    else {
        if (std.port(server.ip) == 8080) {
            set req.backend_hint = behttp_all;
        } else {
            set req.backend_hint = behttps_all;
        }
        if (req.method == "PURGE") {
            if ((std.port(server.ip) == 8080 && client.ip !~ purgehttp_all) ||
            (std.port(server.ip) == 8443 && client.ip !~ purgehttps_all)) {
                return (synth(405, "Not allowed."));
            }
            return (purge);
        }
        if (req.method != "GET" && req.method != "HEAD") {
            # We only deal with GET and HEAD by default
            return (pass);
        }
    }
    if (revvar.get_string(true, 12)) {
        set req.url = querystring.filter_except_csv(req.url, revvar.get_string(true, 12));
    }
    else if (revvar.get_string(true, 13)) {
        set req.url = querystring.filter_csv(req.url, revvar.get_string(true, 13));
    }
    return (hash);
}
sub vcl_pass {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            #
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            #
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <pass>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
              #--FASTLY PASS START
      #--FASTLY BEREQ START
      if (req.http.Fastly-Original-Cookie) {
        set req.http.Cookie = req.http.Fastly-Original-Cookie;
      }
    
      if (req.http.Fastly-Original-URL) {
        set req.url = req.http.Fastly-Original-URL;
      }
      if (req.http.Fastly-FF) {
        set req.http.Fastly-Client = "1";
      }
    
      # do not send this to the backend
      unset req.http.Fastly-Original-Cookie;
      unset req.http.Fastly-Original-URL;
      unset req.http.Fastly-Vary-String;
      unset req.http.X-Varnish-Client;
    
      if (req.http.Fastly-Temp-XFF) {
         if (req.http.Fastly-Temp-XFF == "") {
           unset req.http.X-Forwarded-For;
         } else {
           set req.http.X-Forwarded-For = req.http.Fastly-Temp-XFF;
         }
         # unset req.http.Fastly-Temp-XFF;
      }
      #--FASTLY BEREQ STOP
    
      set req.http.Fastly-Cachetype = "PASS";
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            #
    }
    # END SITE 'wurfl-test.revsw.net'
}
sub vcl_pipe {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            #
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            #
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <pipe>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
              #--FASTLY PIPE START
      #  error 403 "Forbidden";
    
      #--FASTLY BEREQ START
      if (req.http.Fastly-Original-Cookie) {
        set bereq.http.Cookie = req.http.Fastly-Original-Cookie;
      }
    
      if (req.http.Fastly-Original-URL) {
        set bereq.url = req.http.Fastly-Original-URL;
      }
      {
        if (req.http.Fastly-FF) {
          set bereq.http.Fastly-Client = "1";
        }
      }
      {
        # do not send this to the backend
        unset bereq.http.Fastly-Original-Cookie;
        unset bereq.http.Fastly-Original-URL;
        unset bereq.http.Fastly-Vary-String;
        unset bereq.http.X-Varnish-Client;
      }
      if (req.http.Fastly-Temp-XFF) {
         if (req.http.Fastly-Temp-XFF == "") {
           unset bereq.http.X-Forwarded-For;
         } else {
           set bereq.http.X-Forwarded-For = req.http.Fastly-Temp-XFF;
         }
         # unset bereq.http.Fastly-Temp-XFF;
      }
      #--FASTLY BEREQ STOP
    
      set req.http.Fastly-Cachetype = "PIPE";
      set bereq.http.connection = "close";
      #--FASTLY PIPE STOP
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            #
    }
    # END SITE 'wurfl-test.revsw.net'
}
sub vcl_purge {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
            
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            
    }
    # END SITE 'wurfl-test.revsw.net'
}
sub vcl_backend_fetch {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (bereq.http.host == "cosmosdb-test.revsw.net") {
            set bereq.method = bereq.http.cosmos-verb;
        if (!bereq.http.oldschool) {
            set bereq.url = bereq.http.cosmos-url;
        }
        set bereq.http.cosmos-key = "9eHgBLhafru6QIuvI2LYXvZknEuQ21ql12aSM9wMNajXxdLdeJ3HxlA2P6vHzwecKcpa7hCPwJGecAweTN4Lew==";
        set bereq.http.x-ms-version = "2017-01-19";
        set bereq.http.x-ms-date = now;
        set bereq.http.cosmos-text = std.tolower(bereq.method) + {"
    "} + std.tolower(bereq.http.cosmos-resource-type) + {"
    "} + bereq.http.cosmos-resource-id + {"
    "} + std.tolower(bereq.http.x-ms-date) + {"
    
    "};
        set bereq.http.cosmos-digest = digest.hmac_sha256_base64(bereq.http.cosmos-key, bereq.http.cosmos-text);
        set bereq.http.cosmos-digest = regsuball(bereq.http.cosmos-digest, "\+", "%2b");
        set bereq.http.cosmos-digest = regsuball(bereq.http.cosmos-digest, "\/", "%2f");
        set bereq.http.Authorization = "type=master&ver=1.0&sig=" + bereq.http.cosmos-digest;
    
        unset bereq.http.cosmos-key;
        unset bereq.http.cosmos-verb;
        unset bereq.http.cosmos-resource-type;
        unset bereq.http.cosmos-resource-id;
        unset bereq.http.cosmos-text;
        unset bereq.http.cosmos-digest;
    
    set bereq.http.x-ms-consistency-level = "Session";
    set bereq.http.x-ms-session-token = "";
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (bereq.http.host == "gerzhan.ru") {
            
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (bereq.http.host == "images1.voonik.com") {
            
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (bereq.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (bereq.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <backend_fetch>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (bereq.http.host == "vcl-test.revsw.net") {
            
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (bereq.http.host == "wurfl-test.revsw.net") {
            
    }
    # END SITE 'wurfl-test.revsw.net'
    /* The backend shouldn't get the GeoIP information from us
    if (bereq.http.X-Rev-CountryCode) {
    unset bereq.http.X-Rev-CountryCode;
    unset bereq.http.X-Rev-CountryName;
    unset bereq.http.X-Rev-CityName;
    unset bereq.http.X-Rev-Latitude;
    unset bereq.http.X-Rev-Longitude;
    }*/
}
# Block 6: Mark HTML uncacheable by caches beyond our control.
sub vcl_backend_response {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (bereq.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (bereq.http.host == "gerzhan.ru") {
            # Saving the origin response Vary header in X-Rev-Vary header
    # and removing it from the response. Late we will restore the header
    # value in our end user response.
    set beresp.http.X-Rev-Vary = beresp.http.Vary;
    unset beresp.http.Vary;
    
    # Remove IE debug headers if the object was not requested with 
    # debug header set
    if (bereq.http.X-WIT-Debug-Save != "true") {
      unset beresp.http.x-wit-account-id;
      unset beresp.http.x-wit-bytes;
      unset beresp.http.x-wit-libwurfl-ver;
      unset beresp.http.x-wit-wurfl-ver;
      unset beresp.http.x-wit-time-process;
      unset beresp.http.x-wit-time-init;
      unset beresp.http.x-wit-time-fetch;
      unset beresp.http.x-wit-proto;
      unset beresp.http.x-wit-token;
      unset beresp.http.x-rszr-url;
      unset beresp.http.x-rszr-type;
      unset beresp.http.x-wit-origin-cache;
    }
    
    # This keeps the objects longer than the TTL specifies in case we 
    # get bombarded with requests when a TTL expires, in which case some 
    # of the requests in the queue will get stale cached content
    # while we wait for the new data to be fetched from the backend servers.
    set beresp.grace = 2h;
    
    if (beresp.status >= 400 && beresp.status < 600) {
         # Cache all strange/error responses for a short period of time
         unset beresp.http.cache-control;
         unset beresp.http.pragma;
         unset beresp.http.expires;
         set beresp.uncacheable = false;
         set beresp.ttl = 30s;
    } elseif (beresp.status >= 300 && beresp.status < 400) {
         # Don't cache redirects
         unset beresp.http.cache-control;
         unset beresp.http.pragma;
         unset beresp.http.expires;
         set beresp.uncacheable = false;
         set beresp.ttl = 0s;
    } elseif (beresp.ttl < 1h) {
         # Cache everything valid for at least 1 hour regardless of 
         # cache control settings
         unset beresp.http.X-Cache-Debug;
         unset beresp.http.x-cache-status;
         unset beresp.http.X-Backend-Key;
         unset beresp.http.Server;  # gunicorn/0.14.3
         unset beresp.http.Via;  # 1.1 vegur, 1.1 varnish
         unset beresp.http.X-Served-By;  # cache-lcy1132-LCY
         unset beresp.http.X-Cache;  # MISS
         unset beresp.http.X-Cache-Hits;  # 0
         unset beresp.http.X-Timer;
         unset beresp.http.set-cookie;
         set beresp.uncacheable = false;
         set beresp.ttl = 1h;
    }
    
    # Return deliver here to avoid the varnish logic that hit-for-passes 
    # 0s ttl objects
    #   https://www.varnish-cache.org/trac/browser/bin/varnishd/builtin.vcl?rev=4.0#L154
    
    # Required for NUUBIT edge cache purging to work
    set beresp.http.X-Rev-Host = bereq.http.Host;
    set beresp.http.X-Rev-Url = bereq.http.X-Rev-Url;
    
    return (deliver);
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (bereq.http.host == "images1.voonik.com") {
            # Saving the origin response Vary header in X-Rev-Vary header
    # and removing it from the response. Late we will restore the header
    # value in our end user response.
    set beresp.http.X-Rev-Vary = beresp.http.Vary;
    unset beresp.http.Vary;
    
    # Remove IE debug headers if the object was not requested with
    # debug header set
    if (bereq.http.X-WIT-Debug-Save != "true") {
      unset beresp.http.x-wit-account-id;
      unset beresp.http.x-wit-bytes;
      unset beresp.http.x-wit-libwurfl-ver;
      unset beresp.http.x-wit-wurfl-ver;
      unset beresp.http.x-wit-time-process;
      unset beresp.http.x-wit-time-init;
      unset beresp.http.x-wit-time-fetch;
      unset beresp.http.x-wit-proto;
      unset beresp.http.x-wit-token;
      unset beresp.http.x-rszr-url;
      unset beresp.http.x-rszr-type;
      unset beresp.http.x-wit-origin-cache;
    }
    
    # This keeps the objects longer than the TTL specifies in case we
    # get bombarded with requests when a TTL expires, in which case some
    # of the requests in the queue will get stale cached content
    # while we wait for the new data to be fetched from the backend servers.
    set beresp.grace = 2h;
    
    if (beresp.status >= 400 && beresp.status < 600) {
         # Cache all strange/error responses for a short period of time
         unset beresp.http.cache-control;
         unset beresp.http.pragma;
         unset beresp.http.expires;
         set beresp.uncacheable = false;
         set beresp.ttl = 30s;
    } elseif (beresp.status >= 300 && beresp.status < 400) {
         # Don't cache redirects
         unset beresp.http.cache-control;
         unset beresp.http.pragma;
         unset beresp.http.expires;
         set beresp.uncacheable = false;
         set beresp.ttl = 0s;
    } elseif (beresp.ttl < 1h) {
         # Cache everything valid for at least 1 hour regardless of
         # cache control settings
         unset beresp.http.X-Cache-Debug;
         unset beresp.http.x-cache-status;
         unset beresp.http.X-Backend-Key;
         unset beresp.http.Server;  # gunicorn/0.14.3
         unset beresp.http.Via;  # 1.1 vegur, 1.1 varnish
         unset beresp.http.X-Served-By;  # cache-lcy1132-LCY
         unset beresp.http.X-Cache;  # MISS
         unset beresp.http.X-Cache-Hits;  # 0
         unset beresp.http.X-Timer;
         unset beresp.http.set-cookie;
         set beresp.uncacheable = false;
         set beresp.ttl = 1h;
    }
    
    # Return deliver here to avoid the varnish logic that hit-for-passes
    # 0s ttl objects
    #   https://www.varnish-cache.org/trac/browser/bin/varnishd/builtin.vcl?rev=4.0#L154
    
    # Required for NUUBIT edge cache purging to work
    set beresp.http.X-Rev-Host = bereq.http.Host;
    set beresp.http.X-Rev-Url = bereq.http.X-Rev-Url;
    set beresp.http.X-Rev-beresp-ttl = beresp.ttl;
    
    return (deliver);
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (bereq.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (bereq.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <backend_response>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (bereq.http.host == "vcl-test.revsw.net") {
              # RevSw -- enable compression for non-binary resources
      if (beresp.http.Content-Type ~ "(image|audio|video|pdf|flash)") {
        set beresp.do_gzip = false;
      } else {
        set beresp.do_gzip = true;
      }
    
      #REV -- moved from vcl_recv
      set beresp.grace = std.duration(bereq.http.krux-grace, 864000s);
    
      set beresp.http.X-Rev-Backend = beresp.backend.ip;
    
      #--FASTLY FETCH START
    
      # record which cache ran vcl_fetch for this object and when
      set beresp.http.Fastly-Debug-Path = "(F " + server.identity + " " + now + ") ";
      if (beresp.http.Fastly-Debug-Path) {
        set beresp.http.Fastly-Debug-Path = beresp.http.Fastly-Debug-Path + beresp.http.Fastly-Debug-Path;
      }
    
      # generic mechanism to vary on something
      if (bereq.http.Fastly-Vary-String) {
        if (beresp.http.Vary) {
          set beresp.http.Vary = "Fastly-Vary-String, " + beresp.http.Vary;
        } else {
          set beresp.http.Vary = "Fastly-Vary-String, ";
        }
      }
    
      # priority: 0
    
      # Set Grace on BRESP (TTL left blank on purpose)
      #REV set beresp.grace = 864000s;
    
      # Header rewrite Add Backend Server Name to Response : 10
      if (!beresp.http.X-CDN-Backend) {
        set beresp.http.X-CDN-Backend = bereq.backend;
      }
    
      # priority: 10
      if ( bereq.url ~ "^/ctjs" && beresp.status == 200 && !beresp.http.X-Cache-Response ) {
        # Cache Controltag Forever
        set beresp.ttl = 315360000s;
        set beresp.grace = 315360000s;
        return (deliver);
      }
    
      # priority: 10
      /* REVSW -- always enable compression
      if ( !beresp.http.X-Krux-Compression-Disabled && !beresp.http.X-Krux-Compression-Disabled ~ "1" ) {
        # Gzip JS/CSS/HTML
        if ((beresp.status == 200 || beresp.status == 404) && (beresp.http.content-type ~ "^(text\/html|application\/x\-javascript|text\/css|application\/javascript|text\/javascript|application\/json|text\/json|text\/x\-json)\s*($|;)" || req.url ~ "\.(js|css|html|json)($|\?)" ) ) {
    
          # always set vary to make sure uncompressed versions dont always win
          if (!beresp.http.Vary ~ "Accept-Encoding") {
            if (beresp.http.Vary) {
              set beresp.http.Vary = beresp.http.Vary ", Accept-Encoding";
            } else {
              set beresp.http.Vary = "Accept-Encoding";
            }
          }
          if (req.http.Accept-Encoding == "gzip") {
            set beresp.gzip = true;
          }
        }
      }
      */
    
      #--FASTLY FETCH END
    
      ### Set stale_while_revalidate and stale-if-error defaults
      # REVSW -- this is not necessary, Varnish4 supports stale-while-revalidate in builtin VCL
      #set beresp.stale_while_revalidate = 300s;
      #set beresp.stale_if_error = 864000s;
    
      ### XXX Fastly ESI GeoIP injection via the /geoip_esi synthetic end point
      ### which is required exclusively to support salary.com and as a result
      ### requires their configuration be served uncompressed in order to do the
      ### injection.
      ###
      ### Full deatils in OPS-1545
      if (bereq.url ~ "^/controltag") {
        set beresp.do_esi = true;
        set beresp.http.X-Do-Esi = "esi";
      }
    
      ### XXX Fastly logging cannot access beresp variables like the response code,
      ###     so we add a krux-beresp-status header equal to beresp.status and log
      ###     that request header instead (c.f. FASTLY #5058) via vcl log.
      set beresp.http.x-krux-beresp-status = beresp.status;
    
      ### Set a default request header 'krux-serve-type: normal' which can be over-
      ### ridden as necessary contextually with a descriptive value and captured in
      ### vcl log.
      ### Log "X-Krux-Serve-Type: normal"
      set beresp.http.x-krux-serve-type = "normal";
    
      ### Previous valid response can be sent by Fastly
      ### Log "X-Krux-Serve-Type: stale"
      if (beresp.status >= 500 && !bereq.http.x-krux-serve-type) {
        set beresp.http.x-krux-serve-type = "stale";
        return (deliver);
        # REVSW -- we look at req.http.x-krux-serve-type in deliver; if it's "stale", we restart
        # the transaction to allow vcl_miss to return the stale object
      }
    
      ### CONTROLTAG/CTJS
      ### Send empty responses (synthetic)
      ### Log "X-Krux-Serve-Type: synth"
      if (beresp.status >= 500 && bereq.url ~ "^/(controltag|ctjs)") {
        set beresp.http.x-krux-serve-type = "synth";
        set beresp.http.x-krux-synth-code = 503;
        set beresp.http.x-krux-synth-text = "synthetic bounce";
        return (deliver);
      }
    
      ### APISERVICES USER_DATA
      ### Send empty responses (synthetic)
      ### Log "X-Krux-Serve-Type: synth"
      ### This covers both userdata v1 & v2
      if (beresp.status >= 500 && bereq.url ~ "^(/user_data|/userdata)") {
        set beresp.http.x-krux-serve-type = "synth";
        set beresp.http.x-krux-synth-code = 503;
        set beresp.http.x-krux-synth-text = "synthetic bounce";
        return (deliver);
      }
    
      ### Shield the backend from aggressive users
      ### Log "X-Krux-Serve-Type: backoff"
      if (beresp.status >= 400) { # true for 500+ without stale
        set beresp.http.x-krux-serve-type = "backoff";
        set beresp.ttl = 10s;
    
        ### make the clients back off too
        set beresp.http.Cache-Control = "public, max-age=10";
    
        ### No other actions from here.
        return (deliver);
      }
    
      ### XXX this must be included, or this gets replaced with a default vcl_recv
      ### that does NOT have fastly defaults in it.
      /* REVSW -- this is not necessary
      if(req.restarts > 0 ) {
        set beresp.http.Fastly-Restarts = req.restarts;
      }
      */
    
      ### No cookie in backend response
      ### "Log X-Krux-Serve-Type: cookie"
      if (beresp.http.Set-Cookie) {
        set beresp.http.x-krux-serve-type = "cookie";
        set beresp.http.Fastly-Cachetype = "SETCOOKIE";
        set beresp.uncacheable = true;
        return (deliver);
      }
    
      ### Cache control private
      ### Log "X-Krux-Serve-Type: private"
      ### This covers both userdata v1 & v2
      if (beresp.http.Cache-Control ~ "private" && bereq.url !~ "^(/user_data|/userdata)") {
        set beresp.http.x-krux-serve-type = "private";
        set beresp.http.Fastly-Cachetype = "PRIVATE";
        set beresp.uncacheable = true;
        return (deliver);
      }
    
      ### Force caching on 204s
      /* REVSW -- no "cacheable" keyword in Varnish
      if (beresp.status == 204) {
        set beresp.cacheable = true;
      }
      */
    
      if (beresp.http.Expires || beresp.http.Surrogate-Control ~ "max-age" || beresp.http.Cache-Control ~"(s-maxage|max-age)") {
        # keep the ttl here
      } else {
        ### XXX this SHOULD come from the template, but doesn't; so we set
        ### the default TTL here explicitly. Note that changes in the UIs
        ### default TTL settings will NOT have any effects.
        # apply the default ttl
        set beresp.ttl = 1200s;
      }
    
      return (deliver);
      ### END boilerplate
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (bereq.http.host == "wurfl-test.revsw.net") {
            # This keeps the objects longer than the TTL specifies in case we get bombarded with requests
        #  when a TTL expires, in which case some of the requests in the queue will get stale cached content
        #  while we wait for the new data to be fetched from the backend servers.
        set beresp.grace = 2h;
    
        if (beresp.status == 404) {
            # Cache 404s for a short time
            unset beresp.http.cache-control;
            unset beresp.http.pragma;
            unset beresp.http.expires;
    
            set beresp.uncacheable = false;
            set beresp.ttl = 30s;
    
        } elseif (beresp.status >= 300 && beresp.status < 400) {
            # Don't cache redirects
            unset beresp.http.cache-control;
            unset beresp.http.pragma;
            unset beresp.http.expires;
    
            set beresp.uncacheable = false;
            set beresp.ttl = 0s;
    
        } elseif (beresp.status >= 500 && beresp.status < 600) {
            # Cache server errors for only a tiny time
            unset beresp.http.cache-control;
            unset beresp.http.pragma;
            unset beresp.http.expires;
    
            set beresp.uncacheable = false;
            set beresp.ttl = 5s;
    
        } elseif (beresp.ttl < 1h) {
            # Cache everything valid for at least 1 hour regardless of cache control
            set beresp.uncacheable = false;
            set beresp.ttl = 1h;
        }
    
        # Return deliver here to avoid the varnish logic that hit-for-passes 0s ttl objects
        #   https://www.varnish-cache.org/trac/browser/bin/varnishd/builtin.vcl?rev=4.0#L154
        return (deliver);
    }
    # END SITE 'wurfl-test.revsw.net'
    # Don't cache requests with status code between 307 and 499
    if (beresp.status > 307 && beresp.status <= 499 && beresp.status == 508) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Serve stale object if problem with backend
    if (beresp.status >= 500 && beresp.status != 508) {
        set beresp.ttl = 0s;
        return (retry);
    }
    # This can happen if a backend responds with a redirect and Content Encoding (which Varnish returns a 503 for)
    if (beresp.http.Content-Encoding ~ "gzip" ) {
        if (beresp.http.Content-Length == "0") {
            unset beresp.http.Content-Encoding;
        }
    }
    # Remove headers set by upstream Varnish instances.
    unset beresp.http.X-Cache;
    unset beresp.http.X-Cache-Hits;
    if (beresp.http.Cache-Control || beresp.http.Expires) {
        # We need this var later on
        revvar.set_bool(false, 4, true);
        # The Expires header is confusing and causes wrong misses.
        # Max-Age takes precedence, so eliminate the confusion.
        if (beresp.http.Cache-Control ~ "max-age") {
            unset beresp.http.Expires;
        }
    }
    # Domain-specific configuration
    # BEGIN SITE 'app-resume-example.herokuapp.com'
    if (bereq.http.host == "app-resume-example.herokuapp.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'app-resume-example.herokuapp.com'
    # BEGIN SITE 'asher-reseller-workflow-test-child1.com'
    elsif (bereq.http.host == "asher-reseller-workflow-test-child1.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'asher-reseller-workflow-test-child1.com'
    # BEGIN SITE 'asher-reseller-workflow-test-main.com'
    elsif (bereq.http.host == "asher-reseller-workflow-test-main.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'asher-reseller-workflow-test-main.com'
    # BEGIN SITE 'asher-test1.com'
    elsif (bereq.http.host == "asher-test1.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'asher-test1.com'
    # BEGIN SITE 'asher-test2.com'
    elsif (bereq.http.host == "asher-test2.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'asher-test2.com'
    # BEGIN SITE 'asher.test'
    elsif (bereq.http.host == "asher.test") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|movuuuuuuuuuu9999999uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 604800s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=604800";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'asher.test'
    # BEGIN SITE 'avphuket.com'
    elsif (bereq.http.host == "avphuket.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|mov)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 1111s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=1111";
          revvar.set_duration(false, 18, 15s);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'avphuket.com'
    # BEGIN SITE 'bp_group_test.com'
    elsif (bereq.http.host == "bp_group_test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'bp_group_test.com'
    # BEGIN SITE 'cosmosdb-test.revsw.net'
    elsif (bereq.http.host == "cosmosdb-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1515990680470.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1515990680470.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1515990680470.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516072686999.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516072686999.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516072686999.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516072697851.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516072697851.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516072697851.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516088834598.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516088834598.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516088834598.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516088911149.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516088911149.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516088911149.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516092001276.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516092001276.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516092001276.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516174907031.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516174907031.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516174907031.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516178482390.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516178482390.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516178482390.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516181083580.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516181083580.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516181083580.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516243470928-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516249811194-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516250097413-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1516255338611-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1518511359685-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1518511789831-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name-1518583170485-bp-offline-test.revsw.net'
    # BEGIN SITE 'delete-me-cds-qa-name2-1518186832769.revsw.net'
    elsif (bereq.http.host == "delete-me-cds-qa-name2-1518186832769.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-me-cds-qa-name2-1518186832769.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-bot-protection-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-bot-protection-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-bot-protection-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-bot-protection-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-bot-protection-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-bot-protection-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-cookies-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 10s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=10";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-cookies-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 10s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=10";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-3.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-cookies-step-3.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 10s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=10";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-4.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-cookies-step-4.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 10s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=10";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-4.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-cookies-step-5.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-cookies-step-5.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 10s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=10";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-cookies-step-5.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-options-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-options-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^/st.+css$") {
          # Override caching time (0 means "don't cache").
      # Only override if object is cacheable, as specified by the origin.
      if (revvar.get_bool(false, 4)) {
                      set beresp.ttl = 120s;
            revvar.set_bool(false, 15, true);
            set beresp.http.Cache-Control = "public, max-age=120";
      }
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-3.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-options-step-3.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^/st.+css$") {
          # Override caching time (0 means "don't cache").
      # Only override if object is cacheable, as specified by the origin.
      if (revvar.get_bool(false, 4)) {
                      set beresp.ttl = 120s;
            revvar.set_bool(false, 15, true);
            # Override browser caching; don't use either edge or origin value.
            revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
            set beresp.http.Cache-Control = "public, max-age=240";
      }
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-4.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-options-step-4.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
      # Only override if object is cacheable, as specified by the origin.
      if (revvar.get_bool(false, 4)) {
                      set beresp.ttl = 120s;
            revvar.set_bool(false, 15, true);
            set beresp.http.Cache-Control = "public, max-age=120";
      }
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-4.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-options-step-5.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-options-step-5.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "\.(js|css)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 720000s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=720000";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-options-step-5.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cache-purge-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cache-purge-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cache-purge-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(mp4|webp|js|css|woff)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 360000s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=360000";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(dat|cgi)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 0s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "no-cache, max-age=0";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(png|css)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 99999s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=99999";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(jpg|jpeg|gif)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 37731s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=37731";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-cdn-overlay-urls-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-decompression-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-enable-decompression-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-enable-decompression-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-decompression-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-enable-decompression-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-enable-decompression-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-enable-rum-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-enable-rum-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-enable-rum-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-enable-rum-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-enable-rum-step-3.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-enable-rum-step-3.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-enable-rum-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-freshly-domain-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-freshly-domain-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-freshly-domain-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-freshly-domain-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-freshly-domain-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-freshly-domain-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-locations-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-locations-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-locations-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-locations-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-3.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-locations-step-3.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-locations-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-4.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-locations-step-4.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-locations-step-4.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-5.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-locations-step-5.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-locations-step-5.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-locations-step-6.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-locations-step-6.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-locations-step-6.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-ssl-checker-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-ssl-checker-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-ssl-checker-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-ssl-checker-step-2.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-ssl-checker-step-3.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-ssl-checker-step-3.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-ssl-checker-step-3.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-wallarm-step-1.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-wallarm-step-1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-wallarm-step-1.revsw.net'
    # BEGIN SITE 'delete-test-api-qa-name-wallarm-step-2.revsw.net'
    elsif (bereq.http.host == "delete-test-api-qa-name-wallarm-step-2.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test-api-qa-name-wallarm-step-2.revsw.net'
    # BEGIN SITE 'delete-test1.com'
    elsif (bereq.http.host == "delete-test1.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'delete-test1.com'
    # BEGIN SITE 'dell.com'
    elsif (bereq.http.host == "dell.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|mov)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 1111s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=1111";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'dell.com'
    # BEGIN SITE 'domain-sort-2-portal-ui-test.com'
    elsif (bereq.http.host == "domain-sort-2-portal-ui-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'domain-sort-2-portal-ui-test.com'
    # BEGIN SITE 'gerzhan.ru'
    elsif (bereq.http.host == "gerzhan.ru") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (bereq.http.host == "images1.voonik.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
      # Only override if object is cacheable, as specified by the origin.
      if (revvar.get_bool(false, 4)) {
            
      }
          set beresp.http.werwerwer = "werwerwerwer";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'lua-test.com'
    elsif (bereq.http.host == "lua-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'lua-test.com'
    # BEGIN SITE 'mbeans.com'
    elsif (bereq.http.host == "mbeans.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
      # Only override if object is cacheable, as specified by the origin.
      if (revvar.get_bool(false, 4)) {
            
      }
          set beresp.http.Rev-Test-Response = "Test-Value-Response";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|mov)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 1000s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=1000";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'mbeans.com'
    # BEGIN SITE 'monitor.revsw.net'
    elsif (bereq.http.host == "monitor.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'monitor.revsw.net'
    # BEGIN SITE 'mozilla.com'
    elsif (bereq.http.host == "mozilla.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'mozilla.com'
    # BEGIN SITE 'new-test-domain2.com'
    elsif (bereq.http.host == "new-test-domain2.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'new-test-domain2.com'
    # BEGIN SITE 'new-test-domain3.com'
    elsif (bereq.http.host == "new-test-domain3.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'new-test-domain3.com'
    # BEGIN SITE 'new-test-domain.com'
    elsif (bereq.http.host == "new-test-domain.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'new-test-domain.com'
    # BEGIN SITE 'portal-qa-domain.revsw.net'
    elsif (bereq.http.host == "portal-qa-domain.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'portal-qa-domain.revsw.net'
    # BEGIN SITE 'portal-qa-traffic-alerts.revsw.net'
    elsif (bereq.http.host == "portal-qa-traffic-alerts.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'portal-qa-traffic-alerts.revsw.net'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (bereq.http.host == "qa-admin-10-portal-ui-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'qa-api-test-proxy-bp-varnish-cheader.revsw.net'
    elsif (bereq.http.host == "qa-api-test-proxy-bp-varnish-cheader.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/test_generic_css.css") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 6s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=9";
          set beresp.http.ADD_HEADER_DONE_WITH_SUCCESS_css = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_css";
          set beresp.http.REPLACE_HEADER_DONE_WITH_SUCCESS_css = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_css";
          set beresp.http.X-Test-Header-Replace = "replaced-in-varnish";
          unset beresp.http.X-Test-Header-Remove;
          revvar.set_duration(false, 18, 8s);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/test_generic_txt.txt") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 6s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=9";
          set beresp.http.ADD_HEADER_DONE_WITH_SUCCESS_text = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_text";
          set beresp.http.REPLACE_HEADER_DONE_WITH_SUCCESS_text = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_text";
          set beresp.http.X-Test-Header-Replace = "replaced-in-varnish";
          unset beresp.http.X-Test-Header-Remove;
          revvar.set_duration(false, 18, 8s);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/test_generic_swf.swf") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 6s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=9";
          set beresp.http.ADD_HEADER_DONE_WITH_SUCCESS_swf = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_swf";
          set beresp.http.REPLACE_HEADER_DONE_WITH_SUCCESS_swf = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_swf";
          set beresp.http.X-Test-Header-Replace = "replaced-in-varnish";
          unset beresp.http.X-Test-Header-Remove;
          revvar.set_duration(false, 18, 8s);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/test_generic_js.js") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 6s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=9";
          set beresp.http.ADD_HEADER_DONE_WITH_SUCCESS_js = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_js";
          set beresp.http.REPLACE_HEADER_DONE_WITH_SUCCESS_js = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_js";
          set beresp.http.X-Test-Header-Replace = "replaced-in-varnish";
          unset beresp.http.X-Test-Header-Remove;
          revvar.set_duration(false, 18, 8s);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/test_generic_html.html") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 6s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=9";
          set beresp.http.ADD_HEADER_DONE_WITH_SUCCESS_html = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_html";
          set beresp.http.REPLACE_HEADER_DONE_WITH_SUCCESS_html = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_html";
          set beresp.http.X-Test-Header-Replace = "replaced-in-varnish";
          unset beresp.http.X-Test-Header-Remove;
          revvar.set_duration(false, 18, 8s);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/test_generic_jpg.jpg") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 6s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=9";
          set beresp.http.ADD_HEADER_DONE_WITH_SUCCESS_jpg = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_jpg";
          set beresp.http.REPLACE_HEADER_DONE_WITH_SUCCESS_jpg = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_jpg";
          set beresp.http.X-Test-Header-Replace = "replaced-in-varnish";
          unset beresp.http.X-Test-Header-Remove;
          revvar.set_duration(false, 18, 8s);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/cgi-bin/envtest.cgi") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 6s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=9";
          set beresp.http.ADD_HEADER_DONE_WITH_SUCCESS_cgi = "ADD_HEADER_VALUE_DONE_WITH_SUCCESS_cgi";
          set beresp.http.REPLACE_HEADER_DONE_WITH_SUCCESS_cgi = "REPLACE_HEADER_VALUE_DONE_WITH_SUCCESS_cgi";
          set beresp.http.X-Test-Header-Replace = "replaced-in-varnish";
          unset beresp.http.X-Test-Header-Remove;
          revvar.set_duration(false, 18, 8s);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-api-test-proxy-bp-varnish-cheader.revsw.net'
    # BEGIN SITE 'qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net'
    elsif (bereq.http.host == "qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/fictive_resource.html") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 3s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=4";
          set beresp.http.ADD-TEST-HEADER = "ADD-TEST-HEADER-VALUE";
          revvar.set_duration(false, 18, 15s);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "/fictive_resource_for_grace.html") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 5s;
          revvar.set_bool(false, 15, true);
          # Override browser caching; don't use either edge or origin value.
          revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
          set beresp.http.Cache-Control = "public, max-age=9";
          set beresp.http.ADD-TEST-HEADER = "ADD-TEST-HEADER-VALUE";
          revvar.set_duration(false, 18, 23s);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-api-test-proxy-bp-varnish-ttl-grace.revsw.net'
    # BEGIN SITE 'qa-api-test-proxy-options-command1.revsw.net'
    elsif (bereq.http.host == "qa-api-test-proxy-options-command1.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-api-test-proxy-options-command1.revsw.net'
    # BEGIN SITE 'qa-cds-purge-test.revsw.net'
    elsif (bereq.http.host == "qa-cds-purge-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 3600s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=3600";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-cds-purge-test.revsw.net'
    # BEGIN SITE 'qa-domain-group.revsw.net'
    elsif (bereq.http.host == "qa-domain-group.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-domain-group.revsw.net'
    # BEGIN SITE 'qa-reseller-10-portal-ui-test.com'
    elsif (bereq.http.host == "qa-reseller-10-portal-ui-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-reseller-10-portal-ui-test.com'
    # BEGIN SITE 'qa-rev-admin-10-portal-ui-test.com'
    elsif (bereq.http.host == "qa-rev-admin-10-portal-ui-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-rev-admin-10-portal-ui-test.com'
    # BEGIN SITE 'qa-test-company-nuubit.dell.com'
    elsif (bereq.http.host == "qa-test-company-nuubit.dell.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'qa-test-company-nuubit.dell.com'
    # BEGIN SITE 'quic-test.revsw.net'
    elsif (bereq.http.host == "quic-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
      # Only override if object is cacheable, as specified by the origin.
      if (revvar.get_bool(false, 4)) {
            
      }
          set beresp.http.X-Add2 = "Add2";
          unset beresp.http.X-Remove2;
          set beresp.http.X-Replace2 = "Replace2";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'quic-test.revsw.net'
    # BEGIN SITE 'sometest3.com'
    elsif (bereq.http.host == "sometest3.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'sometest3.com'
    # BEGIN SITE 'ssltestdomain-1517213014418-portal-ui-test.com'
    elsif (bereq.http.host == "ssltestdomain-1517213014418-portal-ui-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'ssltestdomain-1517213014418-portal-ui-test.com'
    # BEGIN SITE 'ssltestdomain-1517213297035-portal-ui-test.com'
    elsif (bereq.http.host == "ssltestdomain-1517213297035-portal-ui-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'ssltestdomain-1517213297035-portal-ui-test.com'
    # BEGIN SITE 'test-access-control2.revsw.com'
    elsif (bereq.http.host == "test-access-control2.revsw.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-access-control2.revsw.com'
    # BEGIN SITE 'test-access-control.revsw.com'
    elsif (bereq.http.host == "test-access-control.revsw.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-access-control.revsw.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (bereq.http.host == "test-domain-1517213565194-portal-ui-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      if (bereq.url ~ "^.+$") {
          set beresp.do_esi = true;
          set beresp.http.X-Rev-Esi = "esi";
      }
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
      # Only override if object is cacheable, as specified by the origin.
      if (revvar.get_bool(false, 4)) {
                      # Override browser caching; don't use either edge or origin value.
            revvar.set_bool(false, 0, true); # will always set Age to 0 before returning to browser
            set beresp.http.Cache-Control = "public, max-age=5, must-revalidate";
      }
          set beresp.http.testHeader = "testValue";
          revvar.set_duration(false, 18, 9s);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'test-domain-aliases.revsw.net'
    elsif (bereq.http.host == "test-domain-aliases.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-domain-aliases.revsw.net'
    # BEGIN SITE 'test-lua2.com'
    elsif (bereq.http.host == "test-lua2.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-lua2.com'
    # BEGIN SITE 'test-proxy-acl-deny-except.revsw.net'
    elsif (bereq.http.host == "test-proxy-acl-deny-except.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-proxy-acl-deny-except.revsw.net'
    # BEGIN SITE 'test-proxy-cache-config-02.revsw.net'
    elsif (bereq.http.host == "test-proxy-cache-config-02.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(dat)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 2s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=2";
          revvar.set_duration(false, 18, 31337s);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-proxy-cache-config-02.revsw.net'
    # BEGIN SITE 'test-proxy-cache-config.revsw.net'
    elsif (bereq.http.host == "test-proxy-cache-config.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(mp4|webp|js|css|woff)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 360000s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=360000";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(dat|cgi)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 0s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "no-cache, max-age=0";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(png|css)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 99999s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=99999";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(jpg|jpeg|gif)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 37731s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=37731";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-proxy-cache-config.revsw.net'
    # BEGIN SITE 'test-proxy-headers.revsw.net'
    elsif (bereq.http.host == "test-proxy-headers.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-proxy-headers.revsw.net'
    # BEGIN SITE 'test-proxy-lua-locations.revsw.net'
    elsif (bereq.http.host == "test-proxy-lua-locations.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-proxy-lua-locations.revsw.net'
    # BEGIN SITE 'test-proxy-rma-config.revsw.net'
    elsif (bereq.http.host == "test-proxy-rma-config.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(mp4|webp|js|css|woff)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 360000s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=360000";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(dat|cgi)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 0s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "no-cache, max-age=0";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(png|css)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 99999s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=99999";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
      if (bereq.url ~ "\.(jpg|jpeg|gif)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 37731s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=37731";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-proxy-rma-config.revsw.net'
    # BEGIN SITE 'test-proxy-wildcard-domain.revsw.net'
    elsif (bereq.http.host == "test-proxy-wildcard-domain.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "^.+$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 3600s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=3600";
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-proxy-wildcard-domain.revsw.net'
    # BEGIN SITE 'test-qa-quic-protocol.revsw.net'
    elsif (bereq.http.host == "test-qa-quic-protocol.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-qa-quic-protocol.revsw.net'
    # BEGIN SITE 'test-rewrite-wurfl.revsw.net'
    elsif (bereq.http.host == "test-rewrite-wurfl.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-rewrite-wurfl.revsw.net'
    # BEGIN SITE 'test-victor-1.com'
    elsif (bereq.http.host == "test-victor-1.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-victor-1.com'
    # BEGIN SITE 'test-victor-2.com'
    elsif (bereq.http.host == "test-victor-2.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test-victor-2.com'
    # BEGIN SITE 'test.asher.reseller2.com'
    elsif (bereq.http.host == "test.asher.reseller2.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test.asher.reseller2.com'
    # BEGIN SITE 'test_origin_server_location_id.dell.com'
    elsif (bereq.http.host == "test_origin_server_location_id.dell.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'test_origin_server_location_id.dell.com'
    # BEGIN SITE 'testdomain-reseller3.com'
    elsif (bereq.http.host == "testdomain-reseller3.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'testdomain-reseller3.com'
    # BEGIN SITE 'testdomain1-deleteme.com'
    elsif (bereq.http.host == "testdomain1-deleteme.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'testdomain1-deleteme.com'
    # BEGIN SITE 'testdomain2-deleteme.com'
    elsif (bereq.http.host == "testdomain2-deleteme.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'testdomain2-deleteme.com'
    # BEGIN SITE 'testforqa-asher.com'
    elsif (bereq.http.host == "testforqa-asher.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'testforqa-asher.com'
    # BEGIN SITE 'testforqa-reseller.com'
    elsif (bereq.http.host == "testforqa-reseller.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'testforqa-reseller.com'
    # BEGIN SITE 'testforqa-victor6.com'
    elsif (bereq.http.host == "testforqa-victor6.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'testforqa-victor6.com'
    # BEGIN SITE 'testsub2.com'
    elsif (bereq.http.host == "testsub2.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'testsub2.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (bereq.http.host == "vcl-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'waf-monitor.revsw.net'
    elsif (bereq.http.host == "waf-monitor.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'waf-monitor.revsw.net'
    # BEGIN SITE 'waf-test.revsw.net.revqa.net'
    elsif (bereq.http.host == "waf-test.revsw.net.revqa.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'waf-test.revsw.net.revqa.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (bereq.http.host == "wurfl-test.revsw.net") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
      if (bereq.url ~ "\.(jpg|jpeg|png|gif|webp|js|css|woff|woff2|mp4|swf|avi|mpeg|mov)(\?.*)?$") {
          # Override caching time (0 means "don't cache").
              set beresp.ttl = 604800s;
          revvar.set_bool(false, 15, true);
          set beresp.http.Cache-Control = "public, max-age=604800";
    }
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'wurfl-test.revsw.net'
    # BEGIN SITE 'www.google-test.com'
    elsif (bereq.http.host == "www.google-test.com") {
    
    # Don't allow browser to cache PageSpeed-optimized HTML.
    if (beresp.http.X-Mod-Pagespeed) {
        if (beresp.http.Content-Type ~ "text/html") {
            # Mark as "Hit-For-Pass" for the next 2 minutes
            set beresp.ttl = 120 s;
            set beresp.http.X-Rev-Hit-For-Pass = "YES";
            set beresp.uncacheable = true;
            return (deliver);
        }
        # Don't pass this header to the users; they don't have to know we use PS
        unset beresp.http.X-Mod-Pagespeed;
    }
    # Domain-specific configuration
    call start_cookies_backend_response;
    ############################# Caching override #############################
    revvar.set_bool(false, 0, false);
    revvar.set_duration(false, 18, 0s);
        
      # do_esi if enable_esi is true
      # Does not cache when Set-Cookies are true
    if (beresp.http.Set-Cookie) {
        set beresp.ttl = 0s;
        return (deliver);
    }
    ############################# End caching override #############################
    if (revvar.get_bool(false, 16) && # follow origin redirects
        (beresp.status == 301 || beresp.status == 302 || beresp.status == 303 || beresp.status == 307)) # redirect
    {
        # The request following a 303 must be GET (RFC2616)
        if (beresp.status == 303) {
            set bereq.method = "GET";
        }
        # Refetch the object from the specified location, using the Apache forward proxy
        set bereq.backend = befwproxy;
        set bereq.url = beresp.http.Location;
        return (retry);
    }
    else if (beresp.status != 200) { # don't follow origin redirects
        set beresp.http.Cache-Control = "max-age=0, no-cache, no-store";
        set beresp.ttl = 0s;
        return (deliver);
    }
    # Taken from default VCL, but without the Set-Cookie part.
    if (beresp.ttl <= 0s ||
    beresp.http.Vary == "*") {
        # Mark as "Hit-For-Pass" for the next 2 minutes
        set beresp.ttl = 120s;
        set beresp.http.X-Rev-Hit-For-Pass = "YES";
        set beresp.uncacheable = true;
        return (deliver);
    }
    }
    # END SITE 'www.google-test.com'
    # Add in vcl_backend_response support for *.revsdk.net
    # a problem will appear in case no domains are defined
    elseif (bereq.http.host ~ "(?i)\.revsdk\.net$") {
        revvar.set_duration(false, 18, 60s);
        if (beresp.status != 200) {
            set beresp.ttl = 0s;
            return (deliver);
        }
        set beresp.http.X-Rev-SDK = "1";
    }
    else {
        if (beresp.status != 200) {
            set beresp.ttl = 0s;
            return (deliver);
        }
        if (bereq.method != "GET" && bereq.method != "HEAD") {
            set beresp.ttl = 0s;
            return (deliver);
        }
        if (beresp.http.Set-Cookie) {
            set beresp.ttl = 0s;
            return (deliver);
        }
        revvar.set_duration(false, 18, 60s);
        set beresp.http.X-Rev-Default = "1";
    }
    set beresp.http.X-Rev-beresp-ttl = beresp.ttl;
    set beresp.http.X-Rev-beresp-grace = revvar.get_duration(false, 18);
    # Save original host and URL for smart ban.
    set beresp.http.X-Rev-Host = bereq.http.Host;
    set beresp.http.X-Rev-Url = bereq.url;
    # Compress objects stored in the cache, if not already compressed by backend
    if (beresp.http.Content-Type ~ "(image|audio|video|pdf|flash)") {
        set beresp.do_gzip = false;
    } else {
        set beresp.do_gzip = true;
    }
    # We can't use backend revvars in vcl_deliver, so we have to set headers instead
    if (revvar.get_bool(false, 15) && beresp.http.Age) {
        set beresp.http.rev-orig-age = beresp.http.Age;
        set beresp.ttl = beresp.ttl + std.duration(beresp.http.Age + "s", 0s);
    }
    if (revvar.get_bool(false, 0) && beresp.http.Age) {
        set beresp.http.rev-del-age = 1;
    }
    if (revvar.get_string(false, 3)) {
        set beresp.http.rev-FROUTEID = revvar.get_string(false, 3);
    }
    # Grace is set through caching rules
    if (revvar.get_duration(false, 18) > 0s) {
        set beresp.grace = revvar.get_duration(false, 18);
    }
    return (deliver);
}
sub vcl_backend_error {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (bereq.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (bereq.http.host == "gerzhan.ru") {
            #
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (bereq.http.host == "images1.voonik.com") {
            #
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (bereq.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (bereq.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <backend_error>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (bereq.http.host == "vcl-test.revsw.net") {
              #--FASTLY ERROR START
      if (bereq.http.Fastly-Restart-On-Error) {
        if (beresp.status == 503 && bereq.retries == 0) {
          return (retry);
        }
      }
    
      if (beresp.status == 550) {
        return (deliver);
      }
      #--FASTLY ERROR END
    
      ### XXX Fastly logging cannot access beresp variables like the response code,
      ###     so we add a krux-beresp-status header equal to beresp.status and log
      ###     that request header instead (c.f. FASTLY #5058) via vcl log.
      set beresp.http.x-krux-beresp-status = beresp.status;
    
      ### Set a default request header 'krux-serve-type: normal' which can be over-
      ### ridden as necessary contextually with a descriptive value and captured in
      ### vcl log.
      ### Log "X-Krux-Serve-Type: normal"
      set beresp.http.x-krux-serve-type = "e_error";
    
      ### This enabled serving stale, if the backend is either slow or down.
      ### backend.timeout also results in a 503
      if (beresp.status >= 500 && beresp.status < 600) {
        if (!bereq.http.x-krux-serve-type) {
          # REVSW -- request will be retried
          set beresp.http.x-krux-serve-type = "e_stale";
          return (deliver);
        } else if (bereq.http.x-krux-serve-type != "e_restart") {
          # if we don't have stale, let edge do the synthetic
          set beresp.http.x-krux-serve-type = "e_restart";
          return (deliver);
        } else if (bereq.url ~ "^/(controltag|ctjs)") {
          set beresp.http.x-krux-serve-type = "e_synth";
          set beresp.status = 200;
          set beresp.reason = "OK";
    
          set beresp.http.Content-Type = "application/javascript";
          set beresp.http.Cache-Control = "private, max-age=30";
          set beresp.http.X-Cache-Response = "304";
    
          if (bereq.url ~ "/controltag") {
            synthetic("// {'status':'304','response':'Not modified'}");
          } else {
            synthetic("{'status':'304','response':'Not modified'}");
          }
    
          ### deliver, or the default response body will override the synthetic
          return (deliver);
    
          ### This covers both userdata v1 & v2
        } else if (bereq.url ~ "^(/user_data|/userdata)") {
          set beresp.http.x-krux-serve-type = "e_synth";
          set beresp.status = 200;
          set beresp.reason = "OK";
    
          set beresp.http.Content-Type = "application/javascript";
          set beresp.http.Cache-Control = "private, max-age=60";
          set beresp.http.X-Cache-Response = "304";
          synthetic("// {'status':'304','response':'Not modified'}");
    
          ### deliver, or the default response body will override the synthetic
          return (deliver);
        }
      }
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (bereq.http.host == "wurfl-test.revsw.net") {
            #
    }
    # END SITE 'wurfl-test.revsw.net'
}
# WARNING: we can't use backend revvars in vcl_deliver !
sub vcl_deliver {
    # In Varnish 4 we can't rely on obj.hits, instead we must check if X-Rev-Id has more than one id.
    # See 'https://www.varnish-cache.org/trac/ticket/1492' and 'http://foshttpcache.readthedocs.org/en/latest/varnish-configuration.html'.
        if (revvar.get_bool(true, 14)) {
        set resp.http.X-Rev-Cache = "HIT";
        set resp.http.X-Rev-Cache-Hits = obj.hits;
        set resp.http.X-Rev-obj-ttl = req.http.X-Rev-obj-ttl;
        #set resp.http.X-Rev-obj-grace = req.http.X-Rev-obj-grace;
        # Since we can't remove headers from 'obj' after 'vcl_backend_response', we'll just have to
        # remove the cached ones from the response itself, since they are not relevant for this request
        # because they were generated while the resource was fetched following a MISS.
        unset resp.http.rev-FROUTEID;
        unset resp.http.X-Chromelogger-BE;
    } else {
        set resp.http.X-Rev-Cache = "MISS";
        # Restore the fetched ROUTEID cookie
        if (resp.http.rev-FROUTEID) {
            header.append(resp.http.Set-Cookie, resp.http.rev-FROUTEID);
            unset resp.http.rev-FROUTEID;
        }
    }
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            # Setting some response debug headers
    set resp.http.X-Rev-Wurfl = var.get_string("new_directives");
    #set resp.http.X-WIT-Device-ID = wurfl.get_device_id();
    #set resp.http.X-Orig-UA = wurfl.get_original_useragent();
    
    # Restoring Vary header before sending to end user
    if (resp.http.X-Rev-Vary != "") {
       set resp.http.Vary = resp.http.X-Rev-Vary;
       unset resp.http.X-Rev-Vary;
    }
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            # Setting some response debug headers
    set resp.http.X-Rev-Wurfl = var.get_string("new_directives");
    #set resp.http.X-WIT-Device-ID = wurfl.get_device_id();
    #set resp.http.X-Orig-UA = wurfl.get_original_useragent();
    
    # Restoring Vary header before sending to end user
    if (resp.http.X-Rev-Vary != "") {
       set resp.http.Vary = resp.http.X-Rev-Vary;
       unset resp.http.X-Rev-Vary;
    }
    
    # NOTE: All outbound headers including Content-DPR are computed by ScientiaMobile and
    # are cached and served from this edge cache.
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <deliver>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
              # REVSW - synth is not supported in vcl_backend_*
      if (resp.http.x-krux-synth-code) {
        return (synth(std.integer(resp.http.x-krux-synth-code, 503), resp.http.x-krux-synth-text));
      }
    
      # REVSW - return the stale object in vcl_hit if 50x errors in vcl_backend_response
      if (resp.http.x-krux-serve-type == "stale" || resp.http.x-krux-serve-type == "e_stale" || resp.http.x-krux-serve-type == "e_restart") {
        set req.http.x-krux-serve-type = resp.http.x-krux-serve-type;
        return (restart);
      }
    
      #std.syslog(5, {"Upload krux-pending-logs/fastly-prod :: "} + {"{"TS":""} + timers.req_start() + {"","XFF":""} + req.http.x-forwarded-for + {"","IP":""} + req.http.X-Forwarded-For + {"","CC":""} + req.http.X-Rev-CountryCode + {"","CITY":""} + req.http.X-Rev-CityName + {"","DMA":""} /* + if(geoip.metro_code!=0, geoip.metro_code, "") */ + {"","KUID":""} + req.http.cookie + {"","DNT":""} + req.http.dnt + {"","UA":""} + req.http.user-agent + {"","REF":""} + req.http.referer + {"","HOST":""} + req.http.host + {"","PROTO":""} + req.proto + {"","SSL":""} + if(req.backend_hint == behttps, "1", "") + {"","VERB":""} + req.method + {"","PATH":""} + regsub(req.url, "\?.*$", "") + {"","QS":""} + regsub(req.url, "^[^?]*(\/?.*)$", "\1") + {"","RESP":""} + resp.status + {"","BERESP":""} + resp.http.x-krux-beresp-status + {"","RT":""} + timers.req_processing_time_real() + {"","KTYPE":""} + req.http.x-krux-serve-type + {"","HITMISS":""} + resp.http.X-Rev-Cache + {"","IGNORE":""} + req.http.x-ignore + {"","BYTES":""} + /* TODO: fix: resp.body_bytes_written */ "0" + {"","UNKNOWN_HOST":""} + resp.http.x-unknown-host + {"","REGION":""} + /* TODO: fix: server.region */"" + {"","DC":""} + req.http.X-Rev-Node + {"","SERV":""} + resp.http.x-served-by + {"","NEWUSER":"-","V":"9""} + "}");
    
      #--FASTLY DELIVER START
    
      # record the journey of the object, expose it only if req.http.Fastly-Debug.
      if (req.http.Fastly-Debug || req.http.Fastly-FF) {
        set resp.http.Fastly-Debug-Path = "(D " + server.identity + " " + now + ") " + resp.http.Fastly-Debug-Path;
    
        set resp.http.Fastly-Debug-TTL-old = resp.http.Fastly-Debug-TTL;
        if(obj.hits > 0) {
          set resp.http.Fastly-Debug-TTL = "(H " + server.identity;
        } else {
          set resp.http.Fastly-Debug-TTL = "(M " + server.identity;
        }
        if (req.http.Fastly-Tmp-Obj-TTL && req.http.Fastly-Tmp-Obj-Grace) {
          set resp.http.Fastly-Debug-TTL = resp.http.Fastly-Debug-TTL + " " + req.http.Fastly-Tmp-Obj-TTL + " " + req.http.Fastly-Tmp-Obj-Grace + " ";
        } else {
          set resp.http.Fastly-Debug-TTL = resp.http.Fastly-Debug-TTL + " - - ";
        }
        if (resp.http.Age) {
          set resp.http.Fastly-Debug-TTL = resp.http.Fastly-Debug-TTL + resp.http.Age + ") " + resp.http.Fastly-Debug-TTL-old;
        } else {
          set resp.http.Fastly-Debug-TTL = resp.http.Fastly-Debug-TTL + "-) " + resp.http.Fastly-Debug-TTL-old;
        }
        unset resp.http.Fastly-Debug-TTL-old;
      } else {
        unset resp.http.Fastly-Debug-Path;
        unset resp.http.Fastly-Debug-TTL;
      }
    
      # add or append X-Served-By/X-Cache(-Hits)
      {
        if(!resp.http.X-Served-By) {
          set resp.http.X-Served-By = server.identity;
        } else {
          set resp.http.X-Served-By = resp.http.X-Served-By + ", " + server.identity;
        }
    
        /* RevSw -- not valid in Varnish 4
        if(!resp.http.X-Cache) {
          if (obj.hits > 0) {
            set resp.http.X-Cache = "HIT";
          } else {
            set resp.http.X-Cache = "MISS";
          }
        } else {
          if (obj.hits > 0) {
            set resp.http.X-Cache = resp.http.X-Cache + ", HIT";
          } else {
            set resp.http.X-Cache = resp.http.X-Cache + ", MISS";
          }
        }
    
        if(!resp.http.X-Cache-Hits) {
          set resp.http.X-Cache-Hits = obj.hits;
        } else {
          set resp.http.X-Cache-Hits = resp.http.X-Cache-Hits + ", " + obj.hits;
        }
        */
      }
    
      if (req.http.X-Timer) {
        set resp.http.X-Timer = req.http.X-Timer + ",VE" + (timers.req_response_time() * 1000);
      }
    
      # VARY FIXUP
      {
        # remove before sending to client
        set resp.http.Vary = regsub(resp.http.Vary, "Fastly-Vary-String, ", "");
        if (resp.http.Vary ~ "^\s*$") {
          unset resp.http.Vary;
        }
      }
      unset resp.http.X-Varnish;
    
      # Pop the surrogate headers into the request object so we can reference them later
      set req.http.Surrogate-Key = resp.http.Surrogate-Key;
      set req.http.Surrogate-Control = resp.http.Surrogate-Control;
    
      # If we are not forwarding or debugging unset the surrogate headers so they are not present in the response
      if (!req.http.Fastly-FF && !req.http.Fastly-Debug) {
        unset resp.http.Surrogate-Key;
        unset resp.http.Surrogate-Control;
      }
    
      if(resp.status == 550) {
        return(deliver);
      }
    
      #default response conditions
    
      # Header rewrite Remove server : 10
      unset resp.http.server;
    
      # Header rewrite Remove x-amz-id-2 : 10
      unset resp.http.x-amz-id-2;
    
      # Header rewrite Remove x-amz-request-id : 10
      unset resp.http.x-amz-request-id;
    
      # Header rewrite Remove x-request-id : 10
      unset resp.http.x-request-id;
    
      # Response Condition: Always False Condition Prio: 10
      if( req.method == "NONEXISTENT" ) {
        #syslog Upload_krux_pending_logs_fastly_prod
        # REVSW - log is not available
        #log {"syslog XXXXXXXXXXXXXXXXXXX Upload krux-pending-logs/fastly-prod :: "} req.http.X-Forwarded-For {" "} {""-""} {" "} {""-""} {" "} now {" "} req.request " " req.url {" "} resp.status;
      }
    
      #--FASTLY DELIVER END
      return (deliver);
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            #
    set resp.http.X-Rev-Wurfl = var.get_string("new_directives");
    }
    # END SITE 'wurfl-test.revsw.net'
    if (resp.http.rev-del-age) {
        # We are overriding the browser Cache-Control in vcl_backend_response.
        # The browser must always cache for 'new_ttl' seconds from now, so make Age 0.
        set resp.http.Age = 0;
        unset resp.http.rev-del-age;
    } else if (resp.http.rev-orig-age) {
        # Assume the object came from the origin with an Age header of 'origin_age' seconds.
        # We can't reset Age to 0 after vcl_backend_response (Varnish limitation), so the age will keep increasing
        # (let's call it 'real_age').
        # We are caching the object for 'new_ttl' seconds from 'origin_age' onward, which means that, from
        # the browser's perspective, Cache-Control='new_ttl' and Age='real_age - origin_age'.
        set resp.http.Age = std.integer(resp.http.Age, 0) - std.integer(resp.http.rev-orig-age, 0);
        unset resp.http.rev-orig-age;
    }
    # All times in microseconds.
    # Time from "request received and sent to a backend" to "first byte of response received from backend".
    set resp.http.X-Rev-Cache-BE-1st-Byte-Time = timers.req_response_time();
    # Backend compatibility (DEPRECATED).
    set resp.http.X-Rev-BE-1st-Byte-Time = resp.http.X-Rev-Cache-BE-1st-Byte-Time;
    # Time from "request received" to now (i.e. total processing time).
    set resp.http.X-Rev-Cache-Total-Time = timers.req_processing_time();
}
sub vcl_synth {
        # BEGIN SITE 'cosmosdb-test.revsw.net'
    if (req.http.host == "cosmosdb-test.revsw.net") {
            
    }
    # END SITE 'cosmosdb-test.revsw.net'
    # BEGIN SITE 'gerzhan.ru'
    elsif (req.http.host == "gerzhan.ru") {
            #
    }
    # END SITE 'gerzhan.ru'
    # BEGIN SITE 'images1.voonik.com'
    elsif (req.http.host == "images1.voonik.com") {
            #
    }
    # END SITE 'images1.voonik.com'
    # BEGIN SITE 'qa-admin-10-portal-ui-test.com'
    elsif (req.http.host == "qa-admin-10-portal-ui-test.com") {
            
    }
    # END SITE 'qa-admin-10-portal-ui-test.com'
    # BEGIN SITE 'test-domain-1517213565194-portal-ui-test.com'
    elsif (req.http.host == "test-domain-1517213565194-portal-ui-test.com") {
            # Comment <synth>
    }
    # END SITE 'test-domain-1517213565194-portal-ui-test.com'
    # BEGIN SITE 'vcl-test.revsw.net'
    elsif (req.http.host == "vcl-test.revsw.net") {
              # Response Condition: Krux - GeoIP JSON Prio: 10
      if (resp.status == 900 ) {
        set resp.status = 200;
        set resp.http.Content-Type = "application/json";
         synthetic("{" +
          {""CONTINENT":""} + req.http.X-Rev-ContinentCode + {"","} +
          {""COUNTRY":""} + req.http.X-Rev-CountryCode + {"","} +
          {""REGION":""} /* TODO: fix: + bereq.http.X-Rev-Region */ + {"","} +
          {""CITY":""} + req.http.X-Rev-CityName + {"","} +
          {""DMA":""} /* + TODO: fix: req.http.geoip-metro_code */ + {"","} +
          {""AREACODE":""} /* + TODO: fix: req.http.geoip-area_code */ + {"","} +
          {""ZIP":""} /* TODO: fix: + req.http.geoip-postal_code */ + {"","} +
          {""LATITUDE":""} + req.http.X-Rev-Latitude + {"","} +
          {""LONGITUDE":""} + req.http.X-Rev-Longitude + {"""} +
          "}");
         return (deliver);
      }
      if (resp.status == 801) {
         set resp.status = 301;
         set resp.reason = "Moved Permanently";
         set resp.http.Location = "https://" + req.http.host + req.url;
         synthetic("");
         return (deliver);
      }
    }
    # END SITE 'vcl-test.revsw.net'
    # BEGIN SITE 'wurfl-test.revsw.net'
    elsif (req.http.host == "wurfl-test.revsw.net") {
            #
    }
    # END SITE 'wurfl-test.revsw.net'
}
