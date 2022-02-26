const populartyBasedOnDecade=[
    {id: 1, decade: '1960', avgPopularity: 26.55},
    {id: 2, decade: '1970', avgPopularity: 35.06},
    {id: 3, decade: '1980', avgPopularity: 37.52},
    {id: 4, decade: '1990', avgPopularity: 44.20},
    {id: 5, decade: '2000', avgPopularity: 49.73},
    {id: 6, decade: '2010', avgPopularity: 57.64}

];

const margin = {top: 50, bottom: 50, left: 50, right: 50};
const width = 800 - margin.left - margin.right;
const height = 800 - margin.top - margin.bottom;

const x = d3.scaleBand().rangeRound([0, width]).padding(0.1);
const y = d3.scaleLinear().range([height, 0]);

const chartContainer = d3
    .select('svg')
    .attr('width', width - margin.left - margin.right )
    .attr('height', height - margin.top - margin.bottom)

    x.domain(populartyBasedOnDecade.map((d)=> d.decade));
    y.domain([0, 100 + 50]);

const chart = chartContainer.append('g');

chart
    .append('g')
    .call(d3.axisBottom(x).tickSizeOuter(0))
    .attr('transform', `translate(0, ${height})`)
    .attr('color', '#4f000');

    function renderChart(){
        chart
        .selectAll('.bar')
        .data(populartyBasedOnDecade)
        .enter()
        .append('rect')
        .classed('bar', true)
        .attr('width', x.bandwidth())
        .attr('height', data => height - y(data.avgPopularity))
        .attr('x', data => x(data.decade))
        .attr('y', data => y(data.avgPopularity));

        chart
        .selectAll('.label')
        .data(populartyBasedOnDecade)
        .enter()
        .append('text').text((data) =>data.avgPopularity)
        .attr('x', data => x(data.decade) + x.bandwidth() / 2)
        .attr('y', data => y(data.avgPopularity) - 20)
        .attr('text-anchor', 'middle')
        .classed('label', true)

    }
chart
    .selectAll('.bar')
    .data(populartyBasedOnDecade)
    .enter()
    .append('rect')
    .classed('bar', true)
    .attr('width', x.bandwidth())
    .attr('height', data => height - y(data.avgPopularity))
    .attr('x', data => x(data.decade))
    .attr('y', data => y(data.avgPopularity));

chart
    .selectAll('.label')
    .data(populartyBasedOnDecade)
    .enter()
    .append('text').text((data) =>data.avgPopularity)
    .attr('x', data => x(data.decade) + x.bandwidth() / 2)
    .attr('y', data => y(data.avgPopularity) - 20)
    .attr('text-anchor', 'middle')
    .classed('label', true)

let unselectedIds = [];

const listItems = d3
    .select('#data')
    .select('ul')
    .selectAll('li')
    .data(populartyBasedOnDecade)
    .enter()
    .append('li')

listItems.append('span').text(data =>data.decade)

listItems
    .append('input')
    .attr('type', 'checkbox')
    .attr('checked', true)
    .on('change', (data) => {
        if (unselectedIds.indexOf(data.id)=== -1){
            unselectedIds.push(data.id);
        
        }
        else{
            unselectedIds = unselectedIds.filter(id => id !== data.id);
        }
    
        renderChart();
    });
