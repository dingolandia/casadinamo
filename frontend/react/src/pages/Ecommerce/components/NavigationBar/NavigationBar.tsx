import { Link } from "react-router-dom"
import "./styles.scss"

export const NavigationBar = () => {
    return(<div>
		<ul className="nav-bar">
			<li>
				<a href="/Loja">Loja</a>
			</li>
			<li>
				<a href="/Loja/17/0/0">BOMBA D AGUA</a>
			</li>
			<li>
				<a href="/Loja/0/1/0">BOSCH&nbsp;</a>
			</li>
			<li>
				<a href="/Loja/0/0/19">PERKINS, CATERPILLAR&nbsp;</a>
			</li>
			<li>
                <Link to="/Loja/0/0/0">Descrição final do item</Link>
			</li>
		</ul>		
	</div>)
}