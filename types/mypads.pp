# Matches Pad Options Keys And Values
type Etherpad::Mypads = Struct[
  {
    Optional['url']             => String,
    Optional['bindDN']          => String,
    Optional['bindCredentials'] => String[1],
    Optional['searchBase']      => String,
    Optional['searchFilter']    => String,
    Optional['tlsOptions']      => Hash,
    Optional['properties']      => Hash[String, String],
    Optional['defaultLang']     => String,
  }
]
