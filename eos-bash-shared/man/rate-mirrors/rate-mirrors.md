# rate-mirrors

Everyday-use client-side map-aware mirror ranking tool.

## Usage
```
rate-mirrors [FLAGS] [OPTIONS] <SUBCOMMAND>

FLAGS:
        --allow-root    allow running by root
    -h, --help          Prints help information
    -V, --version       Prints version information

OPTIONS:
        --concurrency <concurrency>
            Number of simultaneous speed tests [default: 8]

        --country-neighbors-per-country <country-neighbors-per-country>
            Neighbor country to test per country [default: 3]

        --country-test-mirrors-per-country <country-test-mirrors-per-country>
            Number of mirrors to test per country [default: 2]

        --entry-country <entry-country>
            Entry country - first country (+ its neighbours) to test.
            You don't need to change it unless you are just curious. [default: US]
        --eps <eps>
            Per-mirror: sigma to mean speed ratio [default: 0.0625]

        --eps-checks <eps-checks>
            Per-mirror: after min measurement time elapsed, check such number of subsequently downloaded data chunks
            whether speed variations are less then "eps" [default: 40]
        --max-jumps <max-jumps>
            Max number of jumps between countries, when finding top mirrors [default: 7]

        --min-bytes-per-mirror <min-bytes-per-mirror>
            Minimum number of bytes to be downloaded, required to measure mirror speed [default: 70000]

        --min-per-mirror <min-per-mirror>
            Minimum downloading time, required to measure mirror speed, in milliseconds [default: 300]

        --per-mirror-timeout <per-mirror-timeout>
            Per-mirror speed test timeout in milliseconds [default: 1500]

        --protocol <protocols>...
            Test only specified protocols (can be passed multiple times)

        --save <save-to-file>
            Filename to save the output to in case of success

        --top-mirrors-number-to-retest <top-mirrors-number-to-retest>
            Number of top mirrors to retest [default: 5]


SUBCOMMANDS:
    arch        fetch & test archlinux mirrors
    help        Prints this message or the help of the given subcommand(s)
    manjaro     fetch & test manjaro mirrors
    rebornos    fetch & test rebornos mirrors
    stdin       accepts lines of urls OR lines with tab-separated urls and countries
```
