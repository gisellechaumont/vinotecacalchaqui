import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavigationBar from './components/NavBar';
import PubliList from './components/PubliList';
import Envio from './components/Envio';
import SearchBar from './components/SearchBar'

function App() {
  return <> <Envio /> <NavigationBar /> <SearchBar /> <PubliList /> </>
}

export default App;
