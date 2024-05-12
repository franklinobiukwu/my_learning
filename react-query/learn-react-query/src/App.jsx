import { ReactQueryDevtools } from '@tanstack/react-query-devtools'
import './App.css'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import Home from './pages/Home'

// Create a client
const queryClient = new QueryClient()

function App() {

  return (
      <QueryClientProvider client={queryClient}>
        <Home/> 
        <ReactQueryDevtools initialIsOpen={false}/>
      </QueryClientProvider>
  )
}

export default App
