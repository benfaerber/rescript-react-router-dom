type location = {
  pathname: string,
  search: string,
  hash: string,
  state: option<Js.t<string>>,
  key: string
}

type params = {
  slug: option<string>
}

module HashRouter = {
  @react.component @module("react-router-dom")
  external make: (
    ~children: React.element
  ) => React.element = "HashRouter"
}

module BrowserRouter = {
  @react.component @module("react-router-dom")
  external make: (
    ~children: React.element
  ) => React.element = "BrowserRouter"
}

module Routes = {
  @react.component @module("react-router-dom")
  external make: (
    ~children: React.element
  ) => React.element = "Routes"
}

module Route = {
  @react.component @module("react-router-dom")
  external make: (
    ~path: string,
    ~element: React.element
  ) => React.element = "Route"
}

module Internal = {
  module Link = {
    @react.component @module("react-router-dom")
    external make: (
      ~children: React.element,
      ~\"to": string,
      ~className: string = ?
    ) => React.element = "Link"
  }
}

module Link = {
  @react.component
  let make = (
    ~children: React.element,
    ~href: string,
    ~className: option<string> = ?
  ) => {
    switch className {
    | Some(cl) => <Internal.Link \"to"={href} className={cl}>{children}</Internal.Link>
    | None => <Internal.Link \"to"={href}>{children}</Internal.Link>
    }
  }
}

@module("react-router-dom")
external useLocation: unit => location = "useLocation"

@module("react-router-dom")
external useParams: unit => params = "useParams"

type navigate
@module("react-router-dom")
external useNavigate: unit => navigate = "useNavigate"