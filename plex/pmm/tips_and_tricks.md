## Promotion
- Use sort_title to promote and demote certain collections 
  - start with `+` to promote to top of library
  - start with `~` to demote to bottom of a library

Prefix suggestions:
```
# Prefixes for (Movie) Collections:
#   +01_ = Charts
#   +02_ = Holidays
#   +03_ = Studios or Network
#   +04_ = Genres
#   +05_ = Countries
#   +06_ = Awards
#   +07_ = Collections
#   +08_ = Decades
#   +09_ = People
#   +10_ = General
```

## Visibility
- `visible_library`, `visible_home` and `visible_shared`
  - `true`, `false` or [schedule](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Schedule-Detail) available for all options

## Scheduling
- Save time by updating lesser-important collections and playlists less frequently:
  - ex. `schedule: weekly(wednesday), weekly(sunday)`
- Don't need to schedule a `smart_filter` because Plex auto-updates the list itself

## Sorting
- https://github.com/meisnate12/Plex-Meta-Manager/wiki/Plex-Builders#sort-options
- If a collection is made of multiple lists, can't use `custom`
  - Recommend sorting instead by `popularity.desc`
- Can't use `collection_order` for Plex `smart_filter` rules. Replacements:
  - `collection_order: release` -> `sort_by: release.desc`
  - `collection_order: alpha` -> `sort_by: title.desc`
  - `collection_order: custom` -> `sort_by: ??`
- Needs to be one level above `all`/`any` criteria list. Ex.:
  - `smart_filter`:
    - sort_by: `release.desc`
    - any:
      - criteria1
      - criteria2


## Filters
- Type restrictions 
  - Plex `smart_filter`/`plex_search`: Use, i.e. `type: episodes`, to limit collection to [specific type](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Plex-Builders#special-attributes)
    - Needs to be one level above `all`/`any` criteria list. Ex.:
    - `smart_filter`:
      - type: `episodes`
      - any:
        - criteria1
        - criteria2
  - All other rules: Use, i.e., `collection_level: episodes`, to limit collection to [specific type](https://github.com/meisnate12/Plex-Meta-Manager/wiki/Metadata-Details#metadata-details)
