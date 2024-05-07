#! /bin/bash

echo """
  ____  _   _ ____    _____   _____
 |  _ \| \ | / ___|  | __  ) | ____|
 | | | |  \| \___ \  |  _  \ | |__
 | |_| | |\  |___) | | |_) | |  __|
 |____/|_| \_|____/  |_____/ |_|

      by newe-x

"""
echo "Enter domain:"
read domain

db=("www" "mail" "ftp" "blog" "intranet" "crm" "helpdesk" "api" "forum" "glpi" "ocs" "shop" "wiki" "admin" "administrator" "root" "test" "demo" "store" "help" "suport" "server" "srv" "news" "login" "register" 
"download" "media" "images" "docs" "sharepoint" "webmail" "e-mail" "portal" "calendar" "stats" "en" "es" "de" "fr" "it" "cn" "jp" "kr" "ru" "au" "ca" "us" "mx" "br" "ar" "nl" "se" "no" "fi" "dk" "pl" "cz" "hu"
"gr" "tr" "sa" "ae" "sg" "id" "ph" "th" "vn" "my" "ng" "za" "eg" "ke" "il" "ua" "pt" "at" "be" "ie" "lu" "rs" "hr" "bg" "ro" "si" "sk" "mk" "ba" "me" "cy" "lv" "lt" "ee" "is" "by" "md" "kz" "uz" "tm" "kg" "tj"
"am" "az" "ge" "fo" "gl" "mc" "gg" "je" "gi" "im" "tc" "ms" "vg" "sh" "mf" "an" "wf" "yt" "pm" "bl" "gg" "ps" "kp" "kw" "ky" "la" "lb" "lk" "lr" "ly" "li" "ls" "mo" "mv" "mg" "mw" "ml" "mt" "mh" "mq" "mr" "mu" 
"yt" "md" "mn" "mz" "mm" "na" "nr" "np" "nc" "ni" "ne" "nu" "nf" "ps" "pw" "pk" "pa" "pg" "py" "pe" "pn" "qa" "re" "rw" "bl" "kn" "lc" "vc" "ws" "sm" "st" "sa" "sn" "sc" "sl" "sg" "sx" "sk" "si" "sb" "so" "za" 
"gs" "kr" "ss" "es" "lk" "sd" "sr" "sj" "sz" "se" "ch" "sy" "tw" "tj" "tz" "th" "tl" "tg" "tk" "to" "tt" "tn" "tr" "tm" "tc" "tv" "ug" "ua" "ae" "uk" "us" "uy" "uz" "vu" "va" "ve" "vn" "vi" "wf" "eh" "ye" "zm" "zw")

for subdomain in "${db[@]}";
do
 host "$subdomain.$domain" | grep "has";
done
