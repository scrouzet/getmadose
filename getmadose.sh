#!/bin/bash

myurl="https://booking.keldoc.com/api/patients/v2/timetables/96875?from=2021-05-18&to=2021-05-22&agenda_ids[]=53180,53181,53182,53183,56165,56217,56218,56219,56220,56221,56222,56223,56224,56225,56226,56227,56228,56229,56230,56231,56232,56233,56234,56235,56236,56237,56238,56239,56240,56241"

while true;
  do sleep 2;
  curl -s ${myurl} | jq . | grep start_time && xdg-open ${myurl};
done

# https://booking.keldoc.com/api/patients/v2/timetables/96875?from=2021-05-18&to=2021-05-22&agenda_ids[]=53180,53181,53182,53183,56165,56217,56218,56219,56220,56221,56222,56223,56224,56225,56226,56227,56228,56229,56230,56231,56232,56233,56234,56235,56236,56237,56238,56239,56240,56241
#
#
#
# curl -s https://booking.keldoc.com/api/patients/v2/timetables/96875?from=2021-05-18&to=2021-05-22&agenda_ids[]=53180 | jq .
#
#
# curl -s "https://booking.keldoc.com/api/patients/v2/timetables/96875?from=2021-05-18&to=2021-05-22&agenda_ids=53180" | jq .
#
#
# https://booking.keldoc.com/api/patients/v2/timetables/88503?from=2021-05-15&to=2021-05-19&agenda_ids[]=53154,53155,53156,53157,53158,53159,53160,53161,53162,53163,53164,53165,53166,53167,53168,53169,53170,53171,53172,53173,53174,53175,53176,53177,53178
#
# curl -s "https://booking.keldoc.com/api/patients/v2/timetables/88503?from=2021-05-15&to=2021-05-19&agenda_ids%5B%5D=53154&agenda_ids%5B%5D=53155&agenda_ids%5B%5D=53156&agenda_ids%5B%5D=53157&agenda_ids%5B%5D=53158&agenda_ids%5B%5D=53159&agenda_ids%5B%5D=53160&agenda_ids%5B%5D=53161&agenda_ids%5B%5D=53162&agenda_ids%5B%5D=53163&agenda_ids%5B%5D=53164&agenda_ids%5B%5D=53165&agenda_ids%5B%5D=53166&agenda_ids%5B%5D=53167&agenda_ids%5B%5D=53168&agenda_ids%5B%5D=53169&agenda_ids%5B%5D=53170&agenda_ids%5B%5D=53171&agenda_ids%5B%5D=53172&agenda_ids%5B%5D=53173&agenda_ids%5B%5D=53174&agenda_ids%5B%5D=53175&agenda_ids%5B%5D=53176&agenda_ids%5B%5D=53177&agenda_ids%5B%5D=53178"
