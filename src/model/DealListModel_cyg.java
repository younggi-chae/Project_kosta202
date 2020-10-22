package model;

import java.util.List;

public class DealListModel_cyg {	
		private List<Deal_Sell_cyg> list;
		private int requestPage;
		private int totalPageCount;
		private int startPage;
		private int endPage;
		
		public DealListModel_cyg() {}
		
		public DealListModel_cyg(List<Deal_Sell_cyg> list, int requestPage, int totalPageCount, int startPage, int endPage) {
			super();
			this.list = list;
			this.requestPage = requestPage;
			this.totalPageCount = totalPageCount;
			this.startPage = startPage;
			this.endPage = endPage;
		}

		public List<Deal_Sell_cyg> getList() {
			return list;
		}

		public void setList(List<Deal_Sell_cyg> list) {
			this.list = list;
		}

		public int getRequestPage() {
			return requestPage;
		}

		public void setRequestPage(int requestPage) {
			this.requestPage = requestPage;
		}

		public int getTotalPageCount() {
			return totalPageCount;
		}

		public void setTotalPageCount(int totalPageCount) {
			this.totalPageCount = totalPageCount;
		}

		public int getStartPage() {
			return startPage;
		}

		public void setStartPage(int startPage) {
			this.startPage = startPage;
		}

		public int getEndPage() {
			return endPage;
		}

		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}

		@Override
		public String toString() {
			return "DealListModel_cyg [list=" + list + ", requestPage=" + requestPage + ", totalPageCount="
					+ totalPageCount + ", startPage=" + startPage + ", endPage=" + endPage + "]";
		}	
		
}

