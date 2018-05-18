<template>
  <div>
    <div class='recommend-title'>热销推荐</div>
    <ul>
      <li class='item border-bottom' v-for='item of recommendList' :key='item.id'>
        <img :src="item.imgUrl" class="item-img">
        <div class='item-info'>
          <p class='item-title'>{{item.title}}</p>
          <p class='item-desc'>{{item.desc}}</p>
          <button class="item-button">查看详情</button>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'HomeRecommend',
  data () {
    return {
      recommendList: [
        {
          id: '0001',
          imgUrl: 'http://img1.qunarzz.com/sight/p0/1505/f4/f455d92ba582f608.water.jpg_200x200_375e5775.jpg',
          title: '南京汤山颐尚温泉',
          desc: '温泉疗养、度假休闲的好去处'
        },
        {
          id: '0002',
          imgUrl: 'http://img1.qunarzz.com/sight/201312/03/38da27f8a2ad319ec8d65eac.jpg_200x200_72a1d26d.jpg',
          title: '红山森林动物园',
          desc: '惊险有趣的大型斗兽表演'
        },
        {
          id: '0003',
          imgUrl: 'http://img1.qunarzz.com/sight/p0/201305/22/273c38aa938ad97dc8d65eac.jpg_200x200_1f49d1ec.jpg',
          title: '中山陵',
          desc: '这里特别受欢迎哟(๑‾ ꇴ ‾๑)'
        }
      ]
    }
  }
}
</script>

<style lang="stylus" scoped>
@import '~styles/mixins.styl';

.recommend-title {
    margin-top: 0.2rem;
    line-height: 0.8rem;
    background: #eee;
    text-indent: 0.2rem;
}

.item {
    overflow: hidden;
    display: flex;
    height: 1.9rem;

    .item-img {
        width: 1.7rem;
        height: 1.7rem;
        padding: 0.1rem;
    }

    .item-info {
        flex: 1;
        padding: 0.1rem;
        min-width: 0;

        .item-title {
            line-height: 0.54rem;
            font-size: 0.32rem;
            ellipsis();
        }

        .item-desc {
            line-height: 0.4rem;
            color: #ccc;
            ellipsis();
        }

        .item-button {
            line-height: 0.44ren;
            margin-top: 0.16rem;
            background: #fff930;
            padding: 0 0.2rem;
            border-radius: 0.06rem;
            color: #fff;
        }
    }
}
</style>
