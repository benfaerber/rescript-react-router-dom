# Rescript React Router DOM
Rescript bindings for [React Router DOM](https://www.npmjs.com/package/react-router-dom)

## Getting Started

1. Add this to your `package.json`:
```json
npm i rescript-react-router-dom
```
1. Add this to you `bsconfig.json`:
```json
"bs-dependencies": [
    "@rescript/react",
    "rescript-react-router-dom"
]
```
1. Import into your Rescript project
```rescript
open ReactRouterDOM
```

## Example Usage

### Router
```rescript
open ReactRouterDOM

@react.component
let make = () => {
  <HashRouter>
    <Routes>
      <Route path="/" element={<HomePage />} />
      <Route path="blog" element={<BlogPage />} />
      <Route path="blog/:slug" element={<ArticlePage />} />
      <Route path="about-me" element={<AboutMePage />} />
      <Route path="projects" element={<ProjectsPage />} />
      <Route path="*" element={<Error404Page />} />
    </Routes>
  </HashRouter>
}
```

### Links
```rescript
open ReactRouterDOM

@react.component
let make = () => {
  <div>
    <Link className="columns" href={`/blog`}>
      {"Blog" |> React.string}
    </Link>
  </div>
}
```
* Note: `to` is a reserved word in Rescript. It has been replaced by `href` in this port.
