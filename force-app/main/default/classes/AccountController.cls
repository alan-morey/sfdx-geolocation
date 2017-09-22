public with sharing class AccountController {

    @AuraEnabled
    public static List<Account> findAll() {
        return [
            SELECT id, name, location__Latitude__s, location__Longitude__s
            FROM Account
            WHERE location__Latitude__s != NULL AND
                location__Longitude__s != NULL

            LIMIT 50
        ];
    }
}
