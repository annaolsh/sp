import React from 'react'
import ReactDOM from 'react-dom'
import App from './components/App'
import { BrowserRouter as Router } from 'react-router-dom'


const quotes = document.querySelector('#quotes')
ReactDOM.render(
  <Router>
    <App startingQuoteId={quotes.dataset.startingQuoteId} />
  </Router>
  , quotes
)
