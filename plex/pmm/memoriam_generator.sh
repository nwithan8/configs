#!/bin/sh

# This script generates an In Memoriam config for Kometa for the given actor.
# Usage: ./memoriam_generator.sh "Actor Name" "TMDB ID"

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 \"Actor Name\" \"TMDB ID\""
    exit 1
fi

ACTOR_NAME="$1"
TMDB_ID="$2"

DATE_FORMAT="%m/%d/%Y"

_get_today_plus_minus_days() {
    local days_offset=$1

    # MacOS
    if [[ "$(uname)" == "Darwin" ]]; then
        date -v+"$days_offset"d +"$DATE_FORMAT"
        return
    fi
    # Linux
    if [[ "$(uname)" == "Linux" ]]; then
        date -d "$days_offset days" +"$DATE_FORMAT"
        return
    fi
}

# Multiline echo literal
echo "
  \"Remembering $ACTOR_NAME\":
      template: {
        name: InMemoriamActor,
        tmdb_id: $TMDB_ID
      }
      schedule:
        - date($(_get_today_plus_minus_days 0))
        - date($(_get_today_plus_minus_days 1))
        - date($(_get_today_plus_minus_days 2))
        - date($(_get_today_plus_minus_days 3))
        - date($(_get_today_plus_minus_days 4))
        - date($(_get_today_plus_minus_days 5))
        - date($(_get_today_plus_minus_days 6))
        - date($(_get_today_plus_minus_days 7))
        - date($(_get_today_plus_minus_days 8))
        - date($(_get_today_plus_minus_days 9))
        - date($(_get_today_plus_minus_days 10))
        - date($(_get_today_plus_minus_days 11))
        - date($(_get_today_plus_minus_days 12))
        - date($(_get_today_plus_minus_days 13))
        - date($(_get_today_plus_minus_days 14))
        - date($(_get_today_plus_minus_days 15))
        - date($(_get_today_plus_minus_days 16))
        - date($(_get_today_plus_minus_days 17))
        - date($(_get_today_plus_minus_days 18))
        - date($(_get_today_plus_minus_days 19))
        - date($(_get_today_plus_minus_days 20))
        - date($(_get_today_plus_minus_days 21))
"
