#!/bin/bash

urltoparse="https://booking.keldoc.com/api/patients/v2/timetables/96875?from=2021-05-18&to=2021-05-22&agenda_ids[]=53180,53181,53182,53183,56165,56217,56218,56219,56220,56221,56222,56223,56224,56225,56226,56227,56228,56229,56230,56231,56232,56233,56234,56235,56236,56237,56238,56239,56240,56241"
urltoopen="https://booking.keldoc.com/cabinet-medical/toulouse-31000/vaccinodrome-toulouse?motive=96875&category=3832&cabinet=18777&specialty=144&agenda=53180,53181,53182,53183,56165,56217,56218,56219,56220,56221,56222,56223,56224,56225,56226,56227,56228,56229,56230,56231,56232,56233,56234,56235,56236,56237,56238,56239,56240,56241"

# test avec un centre pour des créneaux très dispos
# urltoopen="https://booking.keldoc.com/cabinet-medical/castanet-tolosan-31320/castanet-tolosan?agenda=48990,49987&motive=95403&category=3593&cabinet=16666&specialty=144"
# urltoparse="https://booking.keldoc.com/api/patients/v2/timetables/95403?from=2021-05-31&to=2021-06-04&agenda_ids[]=48990,49987"

while true;
  do sleep 2;
  curl -s ${urltoparse} | jq . | grep start_time && open ${urltoopen};
done
