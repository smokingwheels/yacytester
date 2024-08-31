Randomize Timer
DefInt A-Z
Timer On
On Timer(1) GoSub health

digloop:
For k = 1 To 127
    If InKey$ = Chr$(27) Then End
    a = (25 * Rnd) + 97
    b = (25 * Rnd) + 97
    c = (25 * Rnd) + 97
    d = (25 * Rnd) + 97

    domain$ = Chr$(a%) + Chr$(b%) + Chr$(c%) + Chr$(d%)
    index& = index& + 1

    'Shell "wget -P /home/nextcloud/Downloads/qb64/yacy/html/ http://192.168.1.55:8095/yacysearch.html?query=" + domain$
    Shell "wget -P /dev/null http://192.168.1.55:8091/yacysearch.html?query=" + domain$ + "&Enter=&auth=&verify=ifexist&contentdom=text&nav=location%2Chosts%2Cauthors%2Cnamespace%2Ctopics%2Cfiletype%2Cprotocol%2Clanguage&startRecord=0&indexof=off&meanCount=5&resource=global&prefermaskfilter=&maximumRecords=10&timezoneOffset=-480"
    'Shell "wget -P /dev/null http://192.168.1.108:8090/yacysearch.html?query=" + domain$ + "&Enter=&auth=&verify=ifexist&contentdom=text&nav=location%2Chosts%2Cauthors%2Cnamespace%2Ctopics%2Cfiletype%2Cprotocol%2Clanguage&startRecord=0&indexof=off&meanCount=5&resource=global&prefermaskfilter=&maximumRecords=10&timezoneOffset=-480"
    'Shell "wget -P /dev/null http://cloudparty.evils.in:8095/yacysearch.html?query=" + domain$

    Sleep 1
    Sleep 1
    Sleep 1
    Sleep 1

    Hz = Hz + 1
    Rem timed on my computer rough Hz with no sleep states.
    Rem Hz 100
    'For i& = 1 To 1770000: Next

    Rem 51 Hz
    'For i& = 1 To 4000000: Next

    Rem 30 Hz
    'For i& = 1 To 7500000: Next

    Rem 15 Hz
    For i& = 1 To 15000000: Next




Next

GoTo digloop

health:
Locate 1, 1
Print Hz, "Hz", index&, "index"
Hz = 0
Return




